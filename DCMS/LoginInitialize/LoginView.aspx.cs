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

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/dashboard.aspx");
        }

        public bool Validate()
        {
            bool ab = false;
            try
            {
                if (!string.IsNullOrEmpty(lgnEmail)
                    && !string.IsNullOrEmpty(usercode.Text)
                     && !string.IsNullOrEmpty(brchname.Text)
                      && !string.IsNullOrEmpty(phoneno.Text)
                       && !string.IsNullOrEmpty(peradd.Text)
                        && !string.IsNullOrEmpty(localadd.Text)

                          && !string.IsNullOrEmpty(email.Text)

                            && !string.IsNullOrEmpty(joinddate.Text)
                    )
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
                printerror.Text = ex.Message + "!!";

            }
            return ab;
        }


        public void ClearAll()
        {
            try
            {
                usercode.Text = string.Empty;
                username.Text = string.Empty;
                localadd.Text = string.Empty;
                peradd.Text = string.Empty;
                phoneno.Text = string.Empty;
                email.Text = string.Empty;
                brchname.Text = string.Empty;
                usergrp.Text = string.Empty;

            }
            catch (Exception ex)
            {
                printerror.Text = ex.Message + "!!";
            }
        }
    }
}