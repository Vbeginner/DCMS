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
            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "callCodeBehindFunction();", true); //using this we can use js fuction 

            //Response.Redirect("~/Site.master");
        }



        protected void LgnBtn_Click(object sender, EventArgs e)
        {

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "lgnFunc();", true); //using this we can use js fuction 

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
            //http://127.0.0.1/api/Login/LoginReq?id=12345&pswd=ricky@123
            string url = @"http://127.0.0.1/api/Login/LoginReq?";//id=1234&&pswd="+lgnPswd;
            //string res =  CommonCenter.GlobalMethod.CommonPostReq(url,loginDt);
            string res =  CommonCenter.GlobalMethod.CommonGetReq(url, "id=1234&&pswd="+lgnPswd);
            if (res != null && res == "0")
            {
                Response.Redirect("~/dashboard.aspx");

            }
        }

        //public bool Validate()
        //{
        //    bool ab = false;
        //    try
        //    {

        //        if (lgnEmail != null)
        //        {
        //            ab = true;
        //        }
        //        else
        //        {
        //            ab = false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        //printerror.Text = ex.Message + "!!";

        //    }
        //    return ab;
        //}

        [System.Web.Services.WebMethod]
        [System.Web.Script.Services.ScriptMethod()]
        public void ClearAll()
        //public void MyCodeBehindFunction()
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