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
    public partial class NewPickupReq : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitUserDetail_Click(object sender, EventArgs e)
        {
            try
            {
               



            }
            catch (Exception ex)
            {
               // printerror.Text = ex.Message + "!!";
            }
        }

        [System.Web.Services.WebMethod]
        public static void AddNewPickupReq()
        {
            try
            {

            }
            catch (Exception ex)
            {

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


        public void ClearAll()
        {
            try
            {
                clientid.Text = string.Empty;
                //pickupT.Text = string.Empty;
                pickupD.Text = string.Empty;
                pickupBoy.Text = string.Empty;
                PickupAdd.Text = string.Empty;
                origin.Text = string.Empty;
                mobileno.Text = string.Empty;
                PincodeId.Text = string.Empty;
                CongineeDest.Text = string.Empty;
                pcs.Text = string.Empty;
                AppWt.Text = string.Empty;

            }
            catch (Exception ex)
            {
                printerror.Text = ex.Message + "!!";
            }
        }

        #region grid code

       
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

        protected void ClearUserDetail_Click(object sender, EventArgs e)
        {
            try
            {
                ClearAll();
            }
            catch (Exception ex)
            {

            }
        }
    }
}