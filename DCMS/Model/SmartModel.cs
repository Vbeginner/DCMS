using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DCMS.Model
{
    public class SmartModel
    {

        public SmartModel()
        {

        }
        public  struct UserMasterModel
        {
            public string userCode;// = string.Empty;
            public string userName;// = string.Empty;
            public DateTime joinDate; //= DateTime.Today.Date;
            public string localAdd;// = string.Empty;
            public string perAdd;// = string.Empty;
            public bool isActive;// = false;
            public string adminDetail;// = string.Empty;
            public string branchName;// = string.Empty;
            public string userGp;// = string.Empty;
            public string email;// = string.Empty;
            public string routeName;// = string.Empty;
            public int phoneNO;// = 0;
        };

    }

}