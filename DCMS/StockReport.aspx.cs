using DCMS.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DCMS
{
    public partial class StockReport : System.Web.UI.Page
    {

        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    GetUserMasterdata();
        //}

        protected void SubmitUserDetail_Click(object sender, EventArgs e)
        {
            try
            {
                //if (Validate() == true)
                //{
                //    string query = "INSERT INTO USER_MASTER(USER_CODE,USER_NAME,BRANCH_NAME,USER_GROUP,JOIN_DATE,LOCAL_ADD,PRE_ADD,IS_ACTIVE,ADMIN_DETAIL," +
                // "EMAIL_ID,PHONE_NO,ROUTE_NAME) VALUES ('" + usercode.Text + "','" + username.Text + "','" + brchname.Text + "','" +
                // usergrp.Text + "','" + joinddate.Text + "','" + localadd.Text + "','" + peradd.Text + "','" + isActive.Text + "','" +
                // admindetails.Text + "','" + email.Text + "','" + phoneno.Text + "','')";

                //    int ab = Sql_Connection.Sql_DB_Connection.ExecuteNonQuery(query);
                //    if (ab == 1)
                //    {
                //        string message = "Your details have been saved successfully.";
                //        string script = "window.onload = function(){ alert('";
                //        script += message;
                //        script += "')};";

                //        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                //        ClearAll();
                //        GetUserMasterdata();

                //    }
               // }



            }
            catch (Exception ex)
            {
               // printerror.Text = ex.Message + "!!";
            }
        }


        //public bool Validate()
        //{
        //    bool ab = false;
        //    try
        //    {
        //        if (!string.IsNullOrEmpty(username.Text)
        //            && !string.IsNullOrEmpty(usercode.Text)
        //             && !string.IsNullOrEmpty(brchname.Text)
        //              && !string.IsNullOrEmpty(phoneno.Text)
        //               && !string.IsNullOrEmpty(peradd.Text)
        //                && !string.IsNullOrEmpty(localadd.Text)

        //                  && !string.IsNullOrEmpty(email.Text)

        //                    && !string.IsNullOrEmpty(joinddate.Text)
        //            )
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
        //        printerror.Text = ex.Message + "!!";

        //    }
        //    return ab;
        //}


        //public void ClearAll()
        //{
        //    try
        //    {
        //        usercode.Text = string.Empty;
        //        username.Text = string.Empty;
        //        localadd.Text = string.Empty;
        //        peradd.Text = string.Empty;
        //        phoneno.Text = string.Empty;
        //        email.Text = string.Empty;
        //        brchname.Text = string.Empty;
        //        usergrp.Text = string.Empty;

        //    }
        //    catch (Exception ex)
        //    {
        //        printerror.Text = ex.Message + "!!";
        //    }
        //}

        #region grid code

        public void GetUserMasterdata()
        {
            try
            {

                string query = "SELECT * FROM USER_MASTER";
                DataSet ds = new DataSet();

                ds = Sql_Connection.Sql_DB_Connection.ExecuteQuery(query);
                //adapter.Fill(ds, "Employee");

                //grvEmployee.DataSource = ds;
                //grvEmployee.DataBind();
            }
            catch (Exception ex)
            {

                //throw;
            }
        }

        public void _BindService()
        {
            try
            {
                //List<SmartModel.UserMasterModel> service1 = new List<SmartModel.UserMasterModel>();
                ////List<SmartModel.UserMasterModel> service = dALService.Service.ToList();
                //List<object> service = new List<object>();
                //if (service.Count > 0 && service != null)
                //{
                //    SmartModel.UserMasterModel dt = new SmartModel.UserMasterModel();
                    
                //    //gridService.DataSource = service;
                //    //gridService.DataBind();
                //}
            }
            catch (Exception ex)
            {
                //throw;
            }
        }

        protected void gridService_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
               // string servicename = ((TextBox)gridService.Rows[e.RowIndex].FindControl("txtService")).Text;
                //string filePath = ((FileUpload)gridService.Rows[e.RowIndex].FindControl("fuService")).FileName;
                //bOService.Service_name = servicename;
                //bOService.Service_image = "../images/service/" + filePath;
                //if (File.Exists(Server.MapPath("~/images/service/" + filePath)))
                //{
                //}
                //else
                //{
                //    ((FileUpload)gridService.FooterRow.FindControl("fuService")).SaveAs(Server.MapPath("~/images/service/" + filePath));
                //}
                //dALService.UpdateService(bOService);
                _BindService();
            }
            catch (Exception ex)
            {
                //throw;
            }
        }
        protected void gridService_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                //gridService.EditIndex = e.NewEditIndex;
                _BindService();
            }
            catch (Exception ex )
            {
            }
        }
        protected void AddService(object sender, EventArgs e)
        {
            try
            {
                //string servicename = ((TextBox)gridService.FooterRow.FindControl("txtService")).Text;
                //string filePath = ((FileUpload)gridService.FooterRow.FindControl("fuService")).FileName;
        //        bOService.Service_name = servicename;
        //        bOService.Service_image = "../images/service/" + filePath;
        //        if (File.Exists(Server.MapPath("~/images/service/" + filePath)))
        //        {
        //        }
        //        else
        //        {
        //            ((FileUpload)gridService.FooterRow.FindControl("fuService")).SaveAs(Server.MapPath("~/images/service/" + filePath));
        //        }
        //((FileUpload)gridService.FooterRow.FindControl("fuService")).SaveAs(Server.MapPath("~/images/service/" + filePath));
        //        dALService.SetService(bOService);
                _BindService();
            }
            catch (Exception ex)
            {
                //throw;
            }
        }
        #endregion
    }
}