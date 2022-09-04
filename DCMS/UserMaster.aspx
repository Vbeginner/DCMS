<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserMaster.aspx.cs" Inherits="DCMS.UserMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <html>
    <head>
        <title></title>
        <style type="text/css">
            .mybtn {
                border: 1px solid Red;
                align-content: center;
                height: 30;
                width: 80;
                align-items: center;
                //some more styles
            }

            .error {
                align-content: center;
                background: botom;
                color: red;
            }

            .UserGrid {
                align-content: center;
                color: green;
                padding: 5px;
                border: 2px solid Red;
                align-items: center;
                margin: 10px,10px,10px,10px;
            }

            .button {
                font-size: 11px;
                font-weight: bold;
                font-family: Arial;
                color: #ffffff;
            }

            .form {
                margin: 10px,10px,40px,10px;
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
                        <td>User Name 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="username" runat="server" placeholder="User Name"></asp:TextBox>
                        </td>

                        <td>Pre. Add 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="peradd" runat="server" placeholder="permanent address"></asp:TextBox>
                        </td>

                    </tr>

                    <tr>
                        <td>User Code 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="usercode" runat="server" placeholder="user code"></asp:TextBox>
                        </td>


                        <td>Email-id 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="email" runat="server" placeholder="email"></asp:TextBox>
                        </td>
                    </tr>


                    <tr>
                        <td>Branch Name 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="brchname" runat="server" placeholder="branch name"></asp:TextBox>
                        </td>

                        <td>Phone No. 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="phoneno" runat="server" placeholder="phone no"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>User Group 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="usergrp" runat="server" placeholder="user group"></asp:TextBox>
                        </td>
                        <td>Active 
                        </td>
                        <td>
                            <asp:CheckBox ID="isActive" runat="server" />

                            <%--<asp:TextBox CssClass="form-control" ID="Active" runat="server" placeholder="User Name"></asp:TextBox>--%>
                        </td>

                    </tr>
                    <tr>
                        <td>Join Date 
                        </td>
                        <td>
                            <%--<asp:TextBox CssClass="form-control" ID="JoinDate" runat="server" placeholder="join date"></asp:TextBox>--%>
                            <asp:TextBox CssClass="form-control" ID="joinddate" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </td>

                        <td>Super Admin
                        </td>
                        <td>
                            <asp:CheckBox ID="admindetails" runat="server" />
                            <%--<asp:TextBox CssClass="form-control" ID="superAdmin" runat="server" placeholder="super admin"></asp:TextBox>--%>
                        </td>

                    </tr>
                    <tr>
                        <td>Local Address 
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="localadd" runat="server" placeholder="address"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>State
                        </td>
                        <td>
                            <asp:DropDownList class="form-control" ID="stateSelector" runat="server">
                                <asp:ListItem Text="Select" Value="select" />
                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                <asp:ListItem Text="Assam" Value="Assam" />
                                <asp:ListItem Text="Bihar" Value="Bihar" />
                                <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Goa" Value="Goa" />
                                <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                <asp:ListItem Text="Haryana" Value="Haryana" />
                                <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                <asp:ListItem Text="Kerala" Value="Kerala" />
                                <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                <asp:ListItem Text="Manipur" Value="Manipur" />
                                <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                <asp:ListItem Text="Odisha" Value="Odisha" />
                                <asp:ListItem Text="Punjab" Value="Punjab" />
                                <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                <asp:ListItem Text="Telangana" Value="Telangana" />
                                <asp:ListItem Text="Tripura" Value="Tripura" />
                                <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                <asp:ListItem Text="West Bengal" Value="West Bengal" />
                            </asp:DropDownList>

                        </td>
                    </tr>

                    <%--<tr>
                       <td>
                           User Name 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="TextBox23" runat="server" placeholder="User Name"></asp:TextBox>
                       </td>
                   </tr>--%>
                </table>

                <div>
                    <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />
                </div>
                <div>
                    <asp:GridView ID="gridService" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false"
                        ShowFooter="true" OnRowEditing="gridService_RowEditing"
                        OnRowUpdating="gridService_RowUpdating">
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
                                                Eval("service_image")%>'
                                        height="50px"
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
                                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="AddService" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>

                </div>
                <br />
                <div>
                    <asp:GridView ID="grvEmployee" CssClass="UserGrid" runat="server" CellPadding="5"
                        Font-Size="0.65em" HorizontalAlign="Center">
                        <HeaderStyle BackColor="#73919F" ForeColor="Gray" />
                    </asp:GridView>
                </div>
                <div>
                    <asp:Label ID="lblMsg" CssClass="successmsg" runat="server" />
                    <asp:Panel ID="pnlThankYouMessage" runat="server" Visible="False">
                        ... Thank you message here ...
                    </asp:Panel>
                </div>
                <div>
                    <asp:Label ID="printerror" CssClass="error" runat="server" />
                </div>


            </form>
        </div>
    </body>

    </html>
</asp:Content>
