using CanClient.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CanClient.Models
{
    public class CanDevice
    {
        public uint CanId { get; set; }
        public string Name { get; set; }
        public ObservableCollection<I2cDevice> I2cDevices { get; set; }

        public CanDevice()
        {
            I2cDevices = new ObservableCollection<I2cDevice>();
        }

        internal void TryAddI2cSlave(byte id)
        {
            if(!I2cDevices.Any(d => d.Id == id))
            {
                ViewModelSelector.I2cViewModel.GetOrCreateI2cDevice(id, this);
            }
        }
    }
}
