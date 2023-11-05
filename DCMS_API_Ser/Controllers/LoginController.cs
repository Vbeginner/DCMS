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


        //url example - https://localhost:44396/api/Login/LoginReq?id=1234&pswd=ricky@123
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


        
        public int CheckLogin(string loginId,string pswd)
        {
            int res = 0;
            try
            {
                DCMSServices.SQLConnection.SQL_Connector sqlObj = new DCMSServices.SQLConnection.SQL_Connector();
                string LoginChkQuery = "SELECT * FROM LOGIN_TABLE WHERE LOGIN_ID=" + Convert.ToInt32(loginId);
                var dt = DCMSServices.SQLConnection.SQL_Connector.ExecuteQry(LoginChkQuery);
                if (dt != null && dt.Tables[0].Rows.Count > 0 )
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
                            +"('"+Convert.ToInt32(loginId)+"','"+userName+"','"+userType+ "','"+pswd+"','"+LoginStatus+"')";
                        var RowDt = DCMSServices.SQLConnection.SQL_Connector.ExecuteNonQuery(LoginChkQuery);
                        res = 1;
                    }

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
