<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PickupStatusEntry.aspx.cs" Inherits="DCMS.PickupStatusEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <html >
    <head >  
<title></title>  
<style type="text/css">
    .mybtn
{
   border:1px solid Red;
   align-content:center;
   height:30px;
   width :80px;
   align-items:center;

       
   //some more styles
}
    .error{
        align-content:center;
        background:bottom;
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
   
                   <table>
                   <tr>
                       <td>
                           Pickup Req No. 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pickreqNo" runat="server" placeholder="Pickup Request No."></asp:TextBox>
                       </td>

                       <td>
                           Pickup Boy 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="PickBoy" runat="server" placeholder="Pickup Boy"></asp:TextBox>
                       </td>
                   
                   </tr>

                   <tr>
                       <td>
                           Pickup Status 
                       </td>
                       <td>
                            <asp:DropDownList class="form-control" ID="PickStatus" runat="server">
                            <asp:ListItem Text="--Select--" Value="select" />
                                </asp:DropDownList>
                       </td>
                   

                        <td>
                          Pickup Remark
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pickRemark" runat="server" placeholder="Pickup Remark"></asp:TextBox>
                       </td>
                   </tr>

              

                   </table>
                    <br />

                    <div >
                       <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click"  />
                   </div>
    <div>
      <asp:GridView ID="gridService" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false" 
          ShowFooter="true" OnRowEditing="gridService_RowEditing"            
          onrowupdating="gridService_RowUpdating">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="SR.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("service_id")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Service">  
                            <ItemTemplate>  
                                <asp:Label ID="lblService" runat="server" Text='<%#Eval("service_name")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtService" runat="server" Text='<%#Eval("service_name")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:TextBox ID="txtService" runat="server"></asp:TextBox>  
                            </FooterTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="100px" HeaderText="Service Photo">  
                            <ItemTemplate>  
                                <img src='<%# Eval("service_image")%>' alt='<%#  
                                                Eval("service_image")%>' height="50px"  
                                    width="50px" />  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:FileUpload ID="fuService" runat="server" />  
                            </EditItemTemplate>  
                            <FooterTemplate>  
                                <asp:FileUpload ID="fuService" runat="server" />  
                            </FooterTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField>  
                            <ItemTemplate>  
                                <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%#  
                                         Eval("service_id")%>'  
                                    OnClientClick="return confirm('Do you want to delete?')"  
                                  Text="Delete"></asp:LinkButton>  
                            </ItemTemplate>  
                            <FooterTemplate>  
                                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="AddService"/>  
                            </FooterTemplate>  
                        </asp:TemplateField>  
                        <asp:CommandField ShowEditButton="True" />  
                    </Columns>  
                </asp:GridView> 

    </div>
    <br />
    <div>  
     <asp:GridView ID="grvEmployee" CssClass="UserGrid" runat="server"  CellPadding="5" 
         Font-Size="0.65em" HorizontalAlign="Center">
         <HeaderStyle BackColor="#73919F" ForeColor="White"/>  
        </asp:GridView>  
    </div>
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
