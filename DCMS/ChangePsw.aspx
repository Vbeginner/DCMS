<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePsw.aspx.cs" Inherits="DCMS.ChangePsw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">

    <html>
       
        
        <head>
            <title>Change Password</title>
        </head>
        <body runat="server">
            <link href="css/style.css" rel="stylesheet" />   
           
                                 <div class="main-body" runat="server">
                    <form runat="server">
                     <table runat="server">
                    <tr>
                        <td>
                            <asp:Label runat="server" Text="Old Password "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="oldPswdTxt" runat="server"  placeholder="old password"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label runat="server" Text="New Password "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="newPswdTxt" runat="server" placeholder="new password"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label runat="server" Text="Confirm Password "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ConfirmPswdTxt" runat="server" placeholder="confirm password"></asp:TextBox>
                        </td>
                    </tr>

                    

                </table>
                <div>
                        <asp:Button ID="ChngPswdbtn" runat="server" Text="Submit" name="ChngPswd" OnClick="ChngPswdbtn_Click" />
                    </div>
                        </form>
               </div>
                           
           
               
            
        </body>
    </html>
</asp:Content>
