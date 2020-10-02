using CanClient.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CanClient.ViewModels
{
    public class MessageViewModel : ViewModel
    {
        private CanDevice selectedCanDevice;
        private I2cDevice selectedI2cDevice;
        private bool isRtr;

        public ObservableCollection<Message> Messages { get; private set; }
        public ObservableCollection<I2cDevice> I2cDevices { get => ViewModelSelector.I2cViewModel.I2cDevices; }
        public ObservableCollection<CanDevice> CanDevices { get => ViewModelSelector.CanViewModel.CanDevices; }

        public CanDevice SelectedCanDevice
        {
            get
            {
                return selectedCanDevice;
            }
            set
            {
                if (value != selectedCanDevice)
                {
                    selectedCanDevice = value;
                    RaisePropertyChanged();
                }
            }
        }

        public I2cDevice SelectedI2cDevice
        {
            get
            {
                return selectedI2cDevice;
            }
            set
            {
                if (value != selectedI2cDevice)
                {
                    selectedI2cDevice = value;
                    RaisePropertyChanged();
                }
            }
        }

        public bool IsRtr
        {
            get
            {
                return isRtr;
            }
            set
            {
                if (value != isRtr)
                {
                    isRtr = value;
                    RaisePropertyChanged();
                }
            }
        }

        public MessageViewModel()
        {
            Messages = new ObservableCollection<Message>();
        }
    }
}
