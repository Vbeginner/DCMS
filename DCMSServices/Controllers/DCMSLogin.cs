using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DCMSServices.Controllers
{
    public class DCMSLogin : Controller
    {
        [Route("ChkLogin")]
        [HttpGet("{id}/{pswd}")]
        //http://localhost:51856/chklogin?id=1
        public IActionResult Index(string id,string pswd)
        
        {
            try
            {
                return Ok(LoginReq(id,pswd));
            }
            catch (Exception ex)
            {
                return Ok(ex.ToString());
            }
           
        }






        [Microsoft.AspNetCore.Authorization.AllowAnonymous]
        [ActionName("DCMS_LoginReq")]
        [HttpPost]
        public IActionResult LoginReq(Models.LoginReqModel loginObj)
        {
            string status = "Success";
            try
            {
                
                return Ok(LoginReq(loginObj.LoginId, loginObj.LoginName));
            }
            catch (Exception ex)
            {
                //LogError.Log_Err_Async("NSE FNO Upload", new Exception("Error in request"), LogLevel.Warning);
                status = ex.ToString();
                //return Ok((int)AnalyticalServiceLib.ErrorCode.NoDataFound);
                return Ok((int)1);
            }
            finally
            {
                //string Log = string.Format("\nTime: {0}.\nData: {1}.\rStatus: {2} #", DateTime.Now.ToLongTimeString(), Serialization.RsJsonSerializer.JsonSerializerObject(pRequestData), status);
                //LogError.WriteLog("Request_Trace_" + DateTime.Now.ToString("dd-MM-yy") + ".txt", Log);
            }
        }


        public string LoginReq(string id, string pswd)
        {
            string res = string.Empty;
            try
            {
                if (id == "1234" && pswd=="ricky@123")
                {
                    return "You Are In....";
                }else
                    return "You Are Out!!";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return res;
        }

        public string YouLoginTest(string nu)
        {
            if (nu == "0")
                return "You Are In....";
            else
                return "You Are Out!!";
        }
    }
}
