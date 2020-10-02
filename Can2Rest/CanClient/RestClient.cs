using CanClient.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.Data.Json;
using Windows.Web.Http;
using Newtonsoft.Json;
using Windows.UI.Xaml.Controls;
using System.Reflection.Metadata;
using CanClient.ViewModels;

namespace CanClient
{
    public class RestClient
    {
        private static RestClient instance;
        private static readonly string baseAddress = @"http://192.168.178.44:8080/api";
        private HttpClient client;

        public static RestClient Instance
        {
            get
            {
                if (instance == null) instance = new RestClient();
                return instance;
            }
        }

        public RestClient()
        {
            client = new HttpClient();
        }

        public async Task CanScanAsync()
        {
            var frame = new CanFrame();
            frame.Address = 0x7FF;
            frame.DLC = 1;
            frame.Data = new byte[] { 0xFF };

            var content = new HttpStringContent(JsonConvert.SerializeObject(frame), Windows.Storage.Streams.UnicodeEncoding.Utf8, "application/json");
            var response = await client.PostAsync(new Uri($"{baseAddress}/can"), content);
            response.EnsureSuccessStatusCode();
        }

        public async Task I2cScanAsync(CanDevice device)
        {
            var frame = new CanFrame();
            frame.Address = device.CanId;
            frame.DLC = (byte)(1);
            frame.RemoteRequest = true;

            await SendFrameAsync(frame);
        }

        private async Task SendFrameAsync(CanFrame frame)
        {
            var content = new HttpStringContent(JsonConvert.SerializeObject(frame), Windows.Storage.Streams.UnicodeEncoding.Utf8, "application/json");
            await client.PostAsync(new Uri($"{baseAddress}/can"), content);
        }

        public async Task I2cSetAsync(I2cDevice device, byte[] data)
        {
            var frame = new CanFrame();
            frame.Address = device.Master.CanId;
            frame.DLC = (byte)(data.Length + 1);
            frame.Data[0] = device.Id;
            Array.Copy(data, 0, frame.Data, 1, data.Length);

            await SendFrameAsync(frame);
        }

        public async Task ReadCanFramesAsync()
        {
            var result = await client.GetAsync(new Uri($"{baseAddress}/can"));
            result.EnsureSuccessStatusCode();
            var jsonString = await result.Content.ReadAsStringAsync();
            var frames = JsonConvert.DeserializeObject<List<CanFrame>>(jsonString);

            foreach (var frame in frames)
            {

                await Windows.ApplicationModel.Core.CoreApplication.MainView.CoreWindow.Dispatcher.RunAsync(Windows.UI.Core.CoreDispatcherPriority.Normal, () => HandleFrame(frame));
            }
        }

        private void HandleFrame(CanFrame frame)
        {
            if (frame.Address == 0x7FF)
                return;

            var message = new Message();
            message.Sender = ViewModelSelector.CanViewModel.GetOrCreateCanDevice(frame.Address);
            message.Data = frame.Data;

            switch (frame.DLC)
            {
                case 0:
                    break;
                case 1:
                    HandleDlc1Frame(frame, message);
                    break;
                case 2:
                    HandleDlc2Frame(frame, message);
                    break;
                case 3:
                    break;
                case 4:
                    break;
                case 5:
                    break;
                case 6:
                    break;
                case 7:
                    break;
                case 8:
                    break;
            }
        }

        private void HandleDlc2Frame(CanFrame frame, Message message)
        {
            switch (frame.Data[0])
            {
                case 0xFF:
                    if(frame.Data[1] != 0xFF) 
                        message.Sender.TryAddI2cSlave(frame.Data[1]);
                    break;
            }
        }

        private void HandleDlc1Frame(CanFrame frame, Message message)
        {
            switch (frame.Data[0])
            {
                case 0xFF:
                    break;
            }
        }
    }
}
