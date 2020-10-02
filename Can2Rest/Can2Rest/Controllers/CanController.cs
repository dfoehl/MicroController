using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Iot.Device.SocketCan;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Can2Rest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CanController : ControllerBase
    {
        private static ConcurrentQueue<CanFrame> receivedFrames = new ConcurrentQueue<CanFrame>();
        private static Task canRecvTask;

        static CanController()
        {
            canRecvTask = Task.Run(ReceiveLoop);
        }

        private static void ReceiveLoop()
        {
            using (CanRaw can = new CanRaw())
            {
                CanFrame frame;
                while (true)
                {
                    if (can.TryReadFrame(out frame))
                    {
                        receivedFrames.Enqueue(frame);
                    }
                }
            }
        }

        [HttpGet]
        public List<CanFrame> Get()
        {
            var list = new List<CanFrame>();
            CanFrame frame;
            while (!receivedFrames.IsEmpty)
            {
                if (receivedFrames.TryDequeue(out frame))
                    list.Add(frame);
            }
            return list;
        }

        [HttpPost]
        public void Post(CanFrame frame)
        {
            using (CanRaw can = new CanRaw())
            {
                can.WriteFrame(frame);
            }
        }
    }
}