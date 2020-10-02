using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CanClient.Models
{
    public class Message
    {
        public CanDevice Sender { get; set; }
        public I2cDevice SenderSlave { get; set; }
        public byte[] Data { get; set; }
    }
}
