using CanClient.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CanClient.ViewModels
{
    public class I2cViewModel : ViewModel
    {
        public ObservableCollection<I2cDevice> I2cDevices { get; set; }

        public I2cViewModel()
        {
            I2cDevices = new ObservableCollection<I2cDevice>();
        }

        public I2cDevice GetOrCreateI2cDevice(byte id, CanDevice master)
        {
            var device = I2cDevices.FirstOrDefault(d => d.Id == id && d.Master == master);

            if (device == null)
            {
                device = new I2cDevice() { Id = id, Master = master };
                master.I2cDevices.Add(device);
                I2cDevices.Add(device);
            }

            return device;
        }
    }
}
