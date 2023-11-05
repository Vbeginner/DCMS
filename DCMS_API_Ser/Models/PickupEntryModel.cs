using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DCMS_API_Ser.Models
{
    public class PickupEntryModel
    {
        public string s_ClientId { get; set; } = string.Empty;
        public string s_pickupBoy { get; set; } = string.Empty; 
        public string s_pickupDate { get; set; } = string.Empty;
        public string s_pickupTime { get; set; } = string.Empty;
        public string s_Conginor_add { get; set; } = string.Empty;
        public string s_Consginor_Origin { get; set; } = string.Empty;
        public string s_MobileNo { get; set; } = string.Empty;
        public string s_Conginee_des { get; set; } = string.Empty;
        public string s_Conginee_Pincode { get; set; } = string.Empty;
        public int i_ApproxPcs { get; set; } = 0;        
        public string s_AprroxWt { get; set; } = string.Empty;
        public string s_paymentMode { get; set; } = string.Empty;
    }

    public class ShortPacketEntryModel
    {
        public int PickupReqNo { get; set; } 
        public string Network { get; set; } = string.Empty;
        public string Bookibg_dt { get; set; } = string.Empty;
        public string Service { get; set; } = string.Empty;
        public string Origin { get; set; } = string.Empty;
        public int AwbNo { get; set; }
        public string s_ClientId { get; set; } = string.Empty;
        public string InvoiceNo { get; set; } = string.Empty;
        public string Consignor { get; set; } = string.Empty;
        public string InvoiceValue { get; set; } = string.Empty;
        public string refNo { get; set; } = string.Empty;
        public string Consignee { get; set; } = string.Empty;
        public string ContactNo { get; set; } = string.Empty;
        public string address { get; set; } = string.Empty;
        public string pincode { get; set; } = string.Empty;
        public string Destination { get; set; } = "";
        public string s_AprroxWt { get; set; } = string.Empty;
        public string s_paymentMode { get; set; } = string.Empty;
        public double amount { get; set; } 
        public int pices { get; set; }
        public bool isDimentional { get; set; }
        public DimensionDetailsModel dimensionDetails { get; set; }

    }


    public class DimensionDetailsModel
    {
        public string boxNo { get; set; } = string.Empty;
        public float Length { get; set; } 
        public float Breath { get; set; }
        public float height { get; set; } 
        public string pcs { get; set; } 
        public double weigth { get; set; } 
        public double dimWt { get; set; } 
        public double billedWt { get; set; } 
    }
}