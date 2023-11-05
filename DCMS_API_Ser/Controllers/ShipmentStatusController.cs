using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DCMS_API_Ser.Controllers
{
    public class ShipmentStatusController : ApiController
    {
      public int UploadShipmentStatus(string ShipmentUploadStr)
        {
            int sts = 0;
            try
            {
                var dt = Serialization.RsJsonSerializer.JsonDeserialize<Dictionary<string, string>>(ShipmentUploadStr);
                Models.UploadShipmentStatusModel ShipUplObj = new Models.UploadShipmentStatusModel();
                if (dt != null && dt.Count > 0)
                {
                    ShipUplObj.Customer_Name = "";
                    ShipUplObj.Delivery_Boy_Name = "";
                    ShipUplObj.IsUploadedWithImage = false;
                    ShipUplObj.LocationID = "";
                    ShipUplObj.Process_Status = "";
                    ShipUplObj.ShipmentId = 8880001;
                    ShipUplObj.Shipment_Image = Convert.ToByte(string.Empty);

                    string SelQy = "SELECT * FROM SHIPMENT_TRACKING WHERE SHIPMENT_ID = '" + ShipUplObj.ShipmentId + "'";
                    var dtSelQy = DCMSServices.SQLConnection.SQL_Connector.ExecuteQry(SelQy);
                    if (dtSelQy != null && dtSelQy.Tables[0].Rows.Count > 0)
                    {
                        string UpdtQy = "UPDATE SHIPMENT_TRACKING SET CUSTOMER_NAME='"+ShipUplObj.Customer_Name+"',DELIVERY_BOY_NAME ='"+ShipUplObj.Delivery_Boy_Name+"'" +
                            ",SHIPMENT_PROCESS_STATUS='"+ShipUplObj.Process_Status+"',SHIPMENT_LOCATION_ID='"+ShipUplObj.LocationID+"',SHIPMENT_ID='"+ShipUplObj.ShipmentId+"'";
                        return DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(UpdtQy);
                        
                    }
                    else
                    {
                        string InstQy = "INSERT INTO SHIPMENT_TRACKING (CUSTOMER_NAME,DELIVERY_BOY_NAME,SHIPMENT_PROCESS_STATUS,SHIPMENT_LOCATION_ID,SHIPMENT_ID)" +
                            "VALUES('"+ShipUplObj.Customer_Name+"','"+ShipUplObj.Delivery_Boy_Name+"','"+ShipUplObj.Process_Status+"','"
                            +ShipUplObj.LocationID+"','"+ShipUplObj.ShipmentId+"'";
                        return DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(InstQy);
                        
                        
                    }
                }

            }
            catch (Exception ex)
            {

            }
            return sts;
        }

    }
}
