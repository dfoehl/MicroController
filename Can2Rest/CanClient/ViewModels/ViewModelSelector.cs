using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CanClient.ViewModels
{
    public static class ViewModelSelector
    {
        private static CanViewModel canViewModel;
        private static MessageViewModel messageViewModel;
        private static I2cViewModel i2CViewModel;

        public static CanViewModel CanViewModel
        {
            get
            {
                if (canViewModel == null) canViewModel = new CanViewModel();
                return canViewModel;
            }
        }

        public static MessageViewModel MessageViewModel
        {
            get
            {
                if (messageViewModel == null) messageViewModel = new MessageViewModel();
                return messageViewModel;
            }
        }

        public static I2cViewModel I2cViewModel
        {
            get
            {
                if (i2CViewModel == null) i2CViewModel = new I2cViewModel();
                return i2CViewModel;
            }
        }
    }
}
