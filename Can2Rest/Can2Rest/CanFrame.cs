using Newtonsoft.Json;
using System.Linq;

namespace Can2Rest
{
    public class CanFrame
    {
        public uint Address { get; set; }
        public bool RemoteRequest { get; set; }
        public bool ErrorFrame { get; set; }
        public FrameFormat FrameFormat { get; set; }
        public byte DLC { get; set; }
        public byte[] Data { get; set; }

        public CanFrame()
        {
            Data = new byte[8];
        }

        public override string ToString()
        {
            return $"Address: {Address:X3} ({FrameFormat}) | RTR: {RemoteRequest} | Error: {ErrorFrame} | DLC: {DLC} \r\n" +
                $"{string.Join('.', Data.Select(x => x.ToString("X2")))}\r\n\r\n";
        }
    }

    public enum FrameFormat
    {
        Extended,
        Standard
    }
}
