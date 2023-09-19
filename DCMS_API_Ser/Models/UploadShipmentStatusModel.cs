using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DCMS_API_Ser.Models
{
    public class UploadShipmentStatusModel
    {
        public string Customer_Name { get; set; }
        public string Delivery_Boy_Name { get; set; }
        public string Process_Status { get; set; }
        public string LocationID { get; set; }
        public int ShipmentId { get; set; }
        public byte Shipment_Image { get; set; }
        public bool IsUploadedWithImage { get; set; }
}
}