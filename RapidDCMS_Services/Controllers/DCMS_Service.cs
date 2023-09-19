using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace RapidDCMS_Services.Controllers
{
    public class DCMS_Service : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }

        [Route("chkLogin")]
        [HttpGet]
        public IHttpActionResult Loginreq(string id, string pswd)
        {
            try
            {
                return Ok(LoginReq(id, pswd));
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

        public string YouLoginTest(string nu)
        {
            if (nu == "0")
                return "You Are In....";
            else
                return "You Are Out!!";
        }
    }
}