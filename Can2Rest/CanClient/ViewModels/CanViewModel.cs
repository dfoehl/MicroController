using CanClient.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.ApplicationModel;

namespace CanClient.ViewModels
{
    public class CanViewModel : ViewModel
    {
        public ObservableCollection<CanDevice> CanDevices { get; private set; }

        public CanViewModel()
        {
            CanDevices = new ObservableCollection<CanDevice>();
        }

        public  CanDevice GetOrCreateCanDevice(uint address)
        {
            var device = CanDevices.FirstOrDefault(d => d.CanId == address);

            if(device == null)
            {
                device = new CanDevice() { CanId = address};
                CanDevices.Add(device);
            }

            return device;                
        }
    }
}
