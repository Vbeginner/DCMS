using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                //System.Threading.Thread th = new System.Threading.Thread(new System.Threading.ThreadStart(CallMasterPage));
                //th.Name = "LoginPageTh";
                //th.Start();
                //Response.Redirect("~/LoginInitialize/LoginView.aspx");
                //DCMS.LoginInitialize.LoginView lg = new  DCMS.LoginInitialize.LoginView();
            }
            catch (Exception ex)
            {

            }

        }


        public void CallMasterPage()
        {
            try
            {

                //Response.Redirect("~/LoginInitialize/LoginView.aspx");

                //Response.Redirect("~/Login.aspx");

                //Response.Redirect("~/Site.Master");

            }
            catch (Exception ex)
            {

            }
        }

        public void Usermaster_Click(object sender, EventArgs e)
        {
            try
            {
                //window.open("New.aspx", "_self"); // will open in the same windows

            }
            catch (Exception ex)
            {

            }
        }
    }
}