<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BagLocking.aspx.cs" Inherits="DCMS.BagLocking" %>

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
        <form id="form1" runat="server">

            <div class="content">
                <div id="page-heading">
                    <ol class="breadcrumb">
                        <h1>
                            <li><a href="index.aspx">Dashboard</a></li>
                        </h1>

                    </ol>
                </div>
                <div class="page-content container-fluid">
                    <div class="page-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Bag No
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="tbBagNo" runat="server" placeholder="Bag No."></asp:TextBox>
                                                    </div>

                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Bag Weight 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="bagWt" runat="server" placeholder="Bag Wt."></asp:TextBox>
                                                    </div>

                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Actual Weight 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="actWt" runat="server" placeholder="Actual Wt."></asp:TextBox>
                                                    </div>

                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br />
                                <div>
                                    <asp:Button CssClass="mybtn" ID="SaveBtn" runat="server" Text="Save" OnClick="SubmitUserDetail_Click" />
                                    <asp:Button CssClass="mybtn" ID="CancelBtn" runat="server" Text="Cancel" OnClick="SubmitUserDetail_Click" />
                                    <asp:Button CssClass="mybtn" ID="exportBtn" runat="server" Text="Export" OnClick="SubmitUserDetail_Click" />
                                </div>

                                <br />

                                <!-- Se 5-->
                                <table class="table table-bordered" runat="server">
                                    <tbody>
                                        <tr>
                                            <td>
                                                 <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Total Record Found :  
                                                    </div>
                                                    <div >
                                                        <asp:Label ID="BagLockingRec" Text="0" runat="server" />
                                                    </div>
                                                     <div class="col-lg-5 ">
                                                         <asp:DropDownList runat="server" ID="Bagno">
                                                             <asp:ListItem Text="Bagno" Value="BagNo"/>
                                                         </asp:DropDownList>
                                                     </div>
                                                     <div class="col-lg-5 ">
                                                         <asp:DropDownList runat="server" ID="Containsid">
                                                             <asp:ListItem Text="Contain" Value="Contain"/>
                                                         </asp:DropDownList>
                                                     </div>
                                                     <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="SearchBag" runat="server" placeholder="Search"></asp:TextBox>
                                                    </div>

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
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <br />

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
    </body>

    </html>
</asp:Content>
