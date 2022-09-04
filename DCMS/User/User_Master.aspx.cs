using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS.User
{
    public partial class User_Master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //.Attributes.Add("onclick", "window.open('New.aspx', 'New Window', 'width=200,height=100')");
            //window.open("New.aspx", "_self"); // will open in the same windows

            //window.location.href = "New.aspx"; // will open in a new window

        }

        protected void Save_Click(object sender, EventArgs e)
        {

        }

        protected void SubmitUserDetail_Click(object sender, EventArgs e)
        {
            try
            {
                 if(Validate() == true)
                {
                    string query = "INSERT INTO USER_MASTER(USER_CODE,USER_NAME,BRANCH_NAME,USER_GROUP,JOIN_DATE,LOCAL_ADD,PRE_ADD,IS_ACTIVE,ADMIN_DETAIL," +
                 "EMAIL_ID,PHONE_NO,ROUTE_NAME) VALUES ('" + usercode.Text + "','" + username.Text + "','" + brchname.Text + "','" +
                 usergrp.Text + "','" + joinddate.Text + "','" + localadd.Text + "','" + peradd.Text + "','" + isActive.Text + "','" +
                 admindetails.Text + "','" + email.Text + "','" + phoneno.Text + "','')";

                    int ab = Sql_Connection.Sql_DB_Connection.ExecuteNonQuery(query);
                    if (ab == 1)
                    {
                        string message = "Your details have been saved successfully.";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";

                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                        ClearAll();

                    }
                }



            }
            catch (Exception ex)
            {
                printerror.Text = ex.Message + "!!";
            }
        }

        
        public bool Validate()
        {
            bool ab = false;
            try
            {
                if(!string.IsNullOrEmpty( username.Text) 
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
              printerror.Text = ex.Message+"!!";

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