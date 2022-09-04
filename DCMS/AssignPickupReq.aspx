<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssignPickupReq.aspx.cs" Inherits="DCMS.AssignPickupReq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <html >
    <head >  
<title></title>  
<style type="text/css">
    .mybtn
{
   border:1px solid Red;
   align-content:center;
   height:30;
   width :80;
   align-items:center;

       
   //some more styles
}
    .error{
        align-content:center;
        background:botom;
        color:red;
    }
    .UserGrid{
        align-content:center;
        color:green;
        padding:5px;
        border:2px solid Red;
        align-items:center;
        margin : 10px,10px,10px,10px;
    }
    .button {  
     font-size: 11px;  
     font-weight: bold;  
     font-family: Arial;  
     color: #ffffff;  
} 
    .form{
        margin:10px,10px,40px,10px;
    }
    
.footerlinks {
    color: #ffffff;
    text-decoration: none !important;
}

.footerlinks:hover {
        color: #ffd800;
    }


#footer1 {
    background: #762b00;
}

#footer2 {
    background: #531f00;
}  
  


</style>  
</head>  
<body>  
     <div runat="server" class="main-body">
<form id="form1" runat="server">
   
                   <table class="center-block">
                   <tr>
                       <td>
                           Pickup Req No. 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pickReqNo" runat="server" placeholder="Request No."></asp:TextBox>
                       </td>
                       </tr>
                       <tr>
                       <td>
                           Pickup Boy
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="PickBoy" runat="server" placeholder="Pickup Boy"></asp:TextBox>
                       </td>
                   
                   </tr>
                       

                   </table>
                     

    <br />
                    <div >
                       <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click"  />
                   </div>
                     <div>
                            <br />
                         <asp:Label >Make functionality to search Pickup Request No & if not found then show them Message, no record found.</asp:Label>

                     </div>
    
    <br />
   
    <div>
        <asp:Label ID="lblMsg"   CssClass="successmsg" runat="server"/>
        <asp:Panel ID="pnlThankYouMessage" runat="server" Visible="False">
    ... Thank you message here ...
</asp:Panel>
    </div>
    <div>
        <asp:Label ID="printerror" CssClass="error" runat="server"/>
    </div>

           
    </form>
          </div>
    </body>
    
</html>
</asp:Content>
