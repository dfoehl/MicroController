using Iot.Device.SocketCan;
using System;

namespace Can2Rest
{
    public static class CanRawExtenstion
    {
        public static bool TryReadFrame(this CanRaw can, out CanFrame frame)
        {
            var buffer = new byte[8];
            var success = can.TryReadFrame(buffer, out int frameLength, out CanId id);

            frame = new CanFrame()
            {
                Data = new Span<byte>(buffer, 0, frameLength).ToArray(),
                Address = id.Value,
                ErrorFrame = id.Error,
                FrameFormat = id.ExtendedFrameFormat ? FrameFormat.Extended : FrameFormat.Standard,
                RemoteRequest = id.RemoteTransmissionRequest,
                DLC = (byte)frameLength
            };

            return success;
        }

        public static void WriteFrame(this CanRaw can, CanFrame frame)
        {
            var canId = new CanId
            {
                RemoteTransmissionRequest = frame.RemoteRequest
                
            };

            if (frame.FrameFormat == FrameFormat.Extended)
            {
                canId.ExtendedFrameFormat = true;
                canId.Extended = frame.Address;
            }
            else
            {
                canId.ExtendedFrameFormat = false;
                canId.Standard = frame.Address;
            }
            byte[] data = new byte[frame.DLC];
            Array.Copy(frame.Data, data, frame.DLC > frame.Data.Length ? frame.Data.Length : frame.DLC);

            can.WriteFrame(data, canId);
        }
    }
}
