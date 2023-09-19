using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DCMSServices.Models
{
    public class LoginReqModel
    {
        public string LoginId { get; set; }
        public string LoginName { get; set; }
        public string UserType { get; set; }
    }
}
