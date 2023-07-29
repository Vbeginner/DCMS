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
