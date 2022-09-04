using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class UserGrpMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserGrpNamedata();
        }

        

        protected void createGrpNamebtn_Click(object sender, EventArgs e)
        {
            try
            {
                printerror.Text = string.Empty;
                if (Validate() == true)
                {
                    string query = "INSERT INTO USER_GRP_MASTER(USER_GRP_NAME,ISACTIVE,CREATE_DATE,CREATE_BY,MODIFIED_DATE,MODIFIED_BY)" +
                        " VALUES ('" + grpNameTxt.Text + "','" + "YES" + "','" + "Developer" + "','" +
                 "Developer" + "','" + "Developer" + "','" + "Developer" +"')";

                    int ab = Sql_Connection.Sql_DB_Connection.ExecuteNonQuery(query);
                    if (ab == 1)
                    {
                        string message = "Your details have been saved successfully.";
                        string script = "window.onload = function(){ alert('";
                        script += message;
                        script += "')};";

                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                        ClearAll();
                        GetUserGrpNamedata();

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
                if (!string.IsNullOrEmpty(grpNameTxt.Text))
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

        public void GetUserGrpNamedata()
        {
            try
            {

                string query = "SELECT * FROM USER_GRP_MASTER";
                DataSet ds = new DataSet();

                ds = Sql_Connection.Sql_DB_Connection.ExecuteQuery(query);
                //adapter.Fill(ds, "Employee");

                userGrpName.DataSource = ds;
                userGrpName.DataBind();
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        public void ClearAll()
        {
            try
            {
                grpNameTxt.Text = string.Empty;
                
            }
            catch (Exception ex)
            {
                printerror.Text = ex.Message + "!!";
            }
        }

        protected void expToExcelBtb_Click(object sender, EventArgs e)
        {
            try
            {
                PrepareGridViewForExport(userGrpName);
                ExportGridView();
            }
            catch (Exception ex)
            {

            }
        }

        private void PrepareGridViewForExport(Control gv)
        {
            LinkButton lb = new LinkButton();
            Literal l = new Literal();
            string name = String.Empty;
            for (int i = 0; i < gv.Controls.Count; i++)
            {
                if (gv.Controls[i].GetType() == typeof(LinkButton))
                {
                    l.Text = (gv.Controls[i] as LinkButton).Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(DropDownList))
                {
                    l.Text = (gv.Controls[i] as DropDownList).SelectedItem.Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(CheckBox))
                {
                    l.Text = (gv.Controls[i] as CheckBox).Checked ? "True" : "False";
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                if (gv.Controls[i].HasControls())
                {
                    PrepareGridViewForExport(gv.Controls[i]);
                }
            }
        }

        public void ExportGridView()
        {
            try
            {
                string attachment = "attachment; filename=Contacts.xls";
                Response.ClearContent();
                Response.AddHeader("content-disposition", attachment);
                Response.ContentType = "application/ms-excel";
                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                userGrpName.RenderControl(htw);
                Response.Write(sw.ToString());
                Response.End();
            }
            catch (Exception ex)
            {

            }

            
        }
    }
}