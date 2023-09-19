using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS.LoginInitialize
{
    public partial class LoginView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("~/Site.master");
        }



        protected void LgnBtn_Click(object sender, EventArgs e)
        {

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "lgnFunc();", true); //using this we can use js fuction 

            Dictionary<string, string> loginDt = new Dictionary<string, string>()
            {
                { "id", lgnEmail.ToString() },
                { "pswd", lgnPswd.ToString() }

            };

            //DCMSServices.Models.LoginReqModel logObj = new DCMSServices.Models.LoginReqModel
            //{
            //    LoginId = "1234",
            //    LoginName = "ricky@123",
            //    UserType = "U"
            //};
            string url = @"https://localhost:44396/api/Login/LoginReq";//?id=1234&&pswd=ricky@123";
            //string res =  CommonCenter.GlobalMethod.CommonPostReq(url,loginDt);
            string res =  CommonCenter.GlobalMethod.CommonGetReq(url, "id=10012&&pswd=ricky@123");
            if (res != null && res == "1")
            {
                Response.Redirect("~/dashboard.aspx");

            }
        }

        public bool Validate()
        {
            bool ab = false;
            try
            {
                
                if (lgnEmail != null)
                {
                    ab = true;
                }
                else
                {
                    ab = false;
                }
            }
            catch (Exception ex)
            {
                //printerror.Text = ex.Message + "!!";

            }
            return ab;
        }


        public void ClearAll()
        {
            try
            {
                //usercode.Text = string.Empty;
                //username.Text = string.Empty;
                //localadd.Text = string.Empty;
                //peradd.Text = string.Empty;
                //phoneno.Text = string.Empty;
                //email.Text = string.Empty;
                //brchname.Text = string.Empty;
                //usergrp.Text = string.Empty;

            }
            catch (Exception ex)
            {
                //printerror.Text = ex.Message + "!!";
            }
        }
    }
}