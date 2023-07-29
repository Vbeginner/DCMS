<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserGrpMaster.aspx.cs" Inherits="DCMS.UserGrpMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <html>
        <style>
             .error{
        align-content:center;
        background:bottom;
        
    }
        </style>
        <head>
            <title>User Access Master </title>
        </head>
        <body>
            <div class="main-body" runat="server">
                <form runat="server">
                    <div>
            <table>
                <tr>
                    <td>
                        Group Name 
                    </td>
                    <td>
                        <asp:TextBox ID="grpNameTxt" runat="server" placeholder="group name"></asp:TextBox>
                    </td>
                    <br />
                    <td>
                        IsActive
                    </td>
                    <td>
                        <asp:CheckBox ID="isActiveChb" runat="server"  />
                    </td>
                </tr>
            </table>
                        <br />
                        <div>
                           <div>
                            <asp:Button ID="createGrpNamebtn" runat="server" Text="Create" name="grpName" 
                                HorizontalAlign="Center" OnClick="createGrpNamebtn_Click" />
                        </div>
                        </div>
                         <br />
    <div>  
        <div>
            <div>
                            <asp:Button ID="expToExcelBtb" runat="server" Text="Export To Excel" name="ExpToExcel" 
                                HorizontalAlign="Center" OnClick="expToExcelBtb_Click" />
                        </div>
        </div>
     <asp:GridView ID="userGrpName" CssClass="UserGrid" runat="server"  CellPadding="5" 
          HorizontalAlign="Center">
         <HeaderStyle BackColor="#73919F" ForeColor="White"/>  
        </asp:GridView>  
    </div>
                        <div>

        <asp:Label ID="printerror" CssClass="error" runat="server"/>
    </div>

                    </div>
                </form>
            </div>
        </body>
    </html>
</asp:Content>
