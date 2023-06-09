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
        [HttpGet("{id}")]

        public IActionResult Index(string id)
        
        {
            try
            {
                return Ok(YouLogin(id));
            }
            catch (Exception ex)
            {
                return Ok(ex.ToString());
            }
           
        }


        public string YouLogin(string nu)
        {
            if (nu == "0")
                return "You Are In....";
            else
                return "You Are Out!!";
        }
    }
}
