using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Reflection;
using System.Web.Http;

namespace DCMS_API_Ser.Controllers
{
    public class LoginController : ApiController
    {

        

        //[Route("chkLogin")]
        [ActionName("LoginReq")]
        //[HttpGet("id/pswd")]
        [HttpGet]
        public IHttpActionResult Loginreq(string id, string pswd)
        {
            try
            {
                return Ok(CheckLogin(id));
            }
            catch (Exception ex)
            {
                return Ok(ex.ToString());
            }
        }


        public string LoginReq(string id, string pswd)
        {
            string res = string.Empty;
            try
            {
                if (id == "1234" && pswd == "ricky@123")
                {
                    return "You Are In....";
                }
                else
                    return "You Are Out!!";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return res;
        }

        public int CheckLogin(string loginId)
        {
            int res = 0;
            try
            {
                DCMSServices.SQLConnection.SQL_Connector sqlObj = new DCMSServices.SQLConnection.SQL_Connector();
                string LoginChkQuery = "SELECT * FROM LOGIN_TABLE WHERE LOGIN_ID=" + Convert.ToInt32(loginId);
                var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteQry(LoginChkQuery);
                if (dt != null && dt.Tables[0].Rows.Count > 0 )
                {
                    return 1;
                    //string InsertLoginChkQuery = "INSERT INTO LOGIN_TABLE LOGIN_ID,USER_NAME, USER_TYPE) VALUES(" + Convert.ToInt32(loginId);
                    //var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(LoginChkQuery);
                }
                else
                {
                    return res;
                }
                //DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery("");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
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
