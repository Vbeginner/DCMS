using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Reflection;
using System.Web.Helpers;
using System.Web.Http;
using System.Web.UI.WebControls;


namespace DCMS_API_Ser.Controllers
{
    //[Route("api/[Controller]")]

    public class DCMSConnectorController : ApiController
    {

        

        //[Route("chkLogin")]
        [ActionName("LoginReq")]
        //[HttpGet("id/pswd")]
        [HttpGet]
        public IHttpActionResult Loginreq(string id, string pswd)
        {
            try
            {
                return Ok(CheckLogin(id,pswd));
            }
            catch (Exception ex)
            {
                return Ok(ex.ToString());
            }
        }



        [ActionName("PickupReq")]
        [HttpPost]
        public IHttpActionResult PickupReq([FromBody] JObject JData)
        {

            try
            {

                //url = https://localhost:44396/api/DCMSConnector/PickupReq
        //        Request data = 
        //            {
        //            "req_data": {
        //                "clientId": "Tina",
        //"pickupBoy": "Titu",
        //"pickupDate": "14-10-2023",
        //"ConsginorAdd": "andheri East",
        //"ConginorOrigin": "Andheri",
        //"MobileNo": "8898971496",
        //"ConsigneeDes": "Vashi",
        //"ConsigneePincode": "400055",
        //"ApproxWt": "25.50",
        //"ApproxPcs": 1,
        //"PayMode": "Cash"
        //            }
        //        }


                Models.PickupEntryModel obj = new Models.PickupEntryModel();
                var pickupDt = Serialization.RsJsonSerializer.JsonDeserialize<Dictionary<string, object>>(JData["req_data"].ToString());
                obj.s_ClientId= pickupDt["clientId"].ToString();
                obj.s_pickupBoy= pickupDt["pickupBoy"].ToString();
                obj.s_pickupDate= pickupDt["pickupDate"].ToString();
                obj.s_Conginor_add= pickupDt["ConsginorAdd"].ToString();
                obj.s_Consginor_Origin= pickupDt["ConginorOrigin"].ToString();
                obj.s_MobileNo= pickupDt["MobileNo"].ToString();
                obj.s_Conginee_des= pickupDt["ConsigneeDes"].ToString();
                obj.s_Conginee_Pincode= pickupDt["ConsigneePincode"].ToString();
                obj.s_AprroxWt = pickupDt["ApproxWt"].ToString();
                obj.i_ApproxPcs= Convert.ToInt32(pickupDt["ApproxPcs"]);
                obj.s_paymentMode= pickupDt["PayMode"].ToString();
                
                return Ok(InsertPickUpEntry(obj));
            }
            catch (SystemException ex)
            {
                return Ok(ex);
            }
            catch (Exception ex)
            {
                return Ok(ex);
            }
            return Ok();    
        }


        public int CheckLogin(string loginId, string pswd)
        {
            int res = 0;
            try
            {
                DCMSServices.SQLConnection.SQL_Connector sqlObj = new DCMSServices.SQLConnection.SQL_Connector();
                string LoginChkQuery = "SELECT * FROM LOGIN_TABLE WHERE LOGIN_ID=" + Convert.ToInt32(loginId);
                var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteQry(LoginChkQuery);
                if (dt != null && dt.Tables[0].Rows.Count > 0)
                {

                    return 0;
                    //string InsertLoginChkQuery = "INSERT INTO LOGIN_TABLE LOGIN_ID,USER_NAME, USER_TYPE) VALUES(" + Convert.ToInt32(loginId);
                    //var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(LoginChkQuery);
                }
                else
                {
                    if (!string.IsNullOrEmpty(loginId))
                    {
                        string userName = string.Empty;
                        string userType = "U";
                        string LoginStatus = "N1";//Active User, N2 InActive, R Reset  
                        LoginChkQuery = "insert into login_table (LOGIN_ID,USER_NAME,USER_TYPE,s_password,s_login_status) values"
                            + "('" + Convert.ToInt32(loginId) + "','" + userName + "','" + userType + "','" + pswd + "','" + LoginStatus + "')";
                        var RowDt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(LoginChkQuery);
                        res = 1;
                    }

                    return res;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return res;
        }

        public int InsertPickUpEntry(Models.PickupEntryModel pickObj)
        {
            int res = 0;
            try
            {



//insert example = Insert into PickupEntry(s_ClientId, s_pickupBoy, s_pickupDate, s_pickupTime, s_Conginor_add, s_Consginor_Origin, s_MobileNo,
//                s_Conginee_des, s_Conginee_Pincode, i_ApproxPcs, s_AprroxWt, s_paymentMode)
//values('Tina', 'Titu', '14-10-2023', '14-10-2023 19:08:33', 'andheri East', 'Andheri', '8898971496', 'Vashi', '400055', 1, '25.50', 'Cash')


                DCMSServices.SQLConnection.SQL_Connector sqlObj = new DCMSServices.SQLConnection.SQL_Connector();
               
                string pickupQry = "Insert into PickupEntry (s_ClientId,s_pickupBoy,s_pickupDate,s_pickupTime,s_Conginor_add,s_Consginor_Origin,s_MobileNo,s_Conginee_des," +
                    "s_Conginee_Pincode,i_ApproxPcs,s_AprroxWt,s_paymentMode) values('" + pickObj.s_ClientId + "','" + pickObj.s_pickupBoy + "','"+pickObj.s_pickupDate
                    +"','"+ DateTime.Now + "','"
                    + pickObj.s_Conginor_add + "','" + pickObj.s_Consginor_Origin + "','" + pickObj.s_MobileNo + "','"+pickObj.s_Conginee_des+"','"
                    + pickObj.s_Conginee_Pincode + "'," + pickObj.i_ApproxPcs + ",'" + pickObj.s_AprroxWt + "','" + pickObj.s_paymentMode + "')";

                return DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(pickupQry);
            }
            catch (Exception ex)
            {

            }
            return res;
        }

        public int ShortPacketEntry(Models.ShortPacketEntryModel pickObj)
        {
            int res = 0;
            try
            {
                bool IsDimentional = false;
                DCMSServices.SQLConnection.SQL_Connector sqlObj = new DCMSServices.SQLConnection.SQL_Connector();

                string pickupQry = "Insert into PickupEntry (i_pickupReqNo,s_newtwork,s_bookingDate,s_service,s_origin,i_awbNo,s_clientId,s_invoiceNo," +
                                    "s_consignor,s_invoiceValue,s_refNo,s_consignee,i_contactno,s_address,s_pincode,s_destination,s_approxwt,s_paymentMode,s_amount," +
                                    "i_pices,i_isDimentional) values('" + pickObj.PickupReqNo + "','" + pickObj.Network + "','" + pickObj.Bookibg_dt + "','"
                                    + pickObj.Service + "','" + pickObj.Origin + "','" + pickObj.AwbNo + "','" + pickObj.s_ClientId + "','" + pickObj.InvoiceNo + "','"
                                    + pickObj.Consignor + "','" + pickObj.InvoiceValue + "','" + pickObj.refNo+ "','" + pickObj.Consignee + "','" + pickObj.ContactNo + 
                                    "','" + pickObj.address + "','" + pickObj.pincode + "','" + pickObj.Destination +"','" + pickObj.s_AprroxWt + "','" + pickObj.s_paymentMode 
                                    + "','" + pickObj.amount + "','" + pickObj.pices + "','"+IsDimentional+"')";
                if (IsDimentional)
                {
                    string dimQry = "Insert into PickupEntry (i_pickupReqNo,s_bookingDate,i_awbNo,s_clientId,s_consignor,s_boxno,s_length,s_breath," +
                                    "s_heigth,s_weight,s_dimWt,s_billedWt,s_pcs) " + "values('" + pickObj.PickupReqNo + "','" + pickObj.Bookibg_dt + "','" + pickObj.AwbNo +
                                    "','" + pickObj.s_ClientId + "','" + pickObj.Consignor + "','" + pickObj.dimensionDetails.boxNo + "','" + pickObj.dimensionDetails.Length
                                    + "','" + pickObj.dimensionDetails.Breath + "','" + pickObj.dimensionDetails.height + "','" + pickObj.dimensionDetails.weigth + "','"
                                    + pickObj.dimensionDetails.dimWt + "','" + pickObj.dimensionDetails.billedWt + "','" + pickObj.dimensionDetails.pcs + "')";
                    var Dimdt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(pickupQry);
                }
                

                var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(pickupQry);
            }
            catch (Exception ex)
            {

            }
            return res;
        }


        // GET: api/Login
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Login/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Login
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Login/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Login/5
        public void Delete(int id)
        {
        }
    }
}
