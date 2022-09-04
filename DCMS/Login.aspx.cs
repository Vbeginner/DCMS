using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class WebForm1 :  System.Web.UI.Page  
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        public void lgnBtn_Click(object sender, EventArgs e)
        {
            try
            {

                Response.Redirect("~/index.aspx");
                //var thname = System.Threading.Thread.CurrentThread;

                //thname.Abort();
                
                //this.LoadControl("~/Site.Master");
                //this.TemplateControl("~/Site.Master");
                //Page.MasterPageFile = "~/Site.Master";
                
                //Response.Redirect("~/Site.Master");

                //DCMS.SiteMaster site = new SiteMaster();
                //WebForm1 obj;
                ////obj.Load += site;

                //System.Threading.Thread th = new System.Threading.Thread(new System.Threading.ThreadStart(CallMasterPage));

                //th.Start();
            }
            catch (Exception ex)
            {

            }
        }


        public void CallMasterPage()
        {
            try
            {
               // Response.Redirect("~/Site.Master");

            }
            catch (Exception ex)
            {

            }
        }
    }
}