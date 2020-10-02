namespace CanClient.Models
{
    public class I2cDevice
    {
        public string Name { get; set; }
        public CanDevice Master { get; set; }
        public byte Id { get; set; }
    }
}