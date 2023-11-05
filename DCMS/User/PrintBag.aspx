<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostback="false" AutoEventWireup="true" CodeBehind="PrintBag.aspx.cs" Inherits="DCMS.PrintBag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" runat="server">
    <html>
    <head>
        <title></title>
        <style type="text/css">
            .mybtn {
                border: 1px solid Red;
                align-content: center;
                height: 30px;
                width: 80px;
                align-items: center;
                //some more styles
            }

            .error {
                align-content: center;
                background: bottom;
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
                        <h4>
                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                        </h4>

                    </ol>
                </div>
                <div class="page-content container-fluid">
                    <div class="page-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <table>
                                    <tr>
                                        <td>Manifest Date 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" TextMode="Date" runat="server" placeholder="Manifest Date"></asp:TextBox>
                                        </td>

                                        <td>To 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" TextMode="Date" runat="server" placeholder="to date"></asp:TextBox>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>From Branch 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="From Branch"></asp:TextBox>
                                        </td>


                                        <td>To Branch 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="To Branch"></asp:TextBox>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>Manifest No.
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Manifest No."></asp:TextBox>
                                        </td>

                                        <td>Bag No. 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Bag No."></asp:TextBox>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>Network 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Network"></asp:TextBox>
                                        </td>

                                    </tr>


                                </table>


                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />
                <asp:Button CssClass="mybtn" ID="CancelBtn" runat="server" Text="Cancel" OnClick="SubmitUserDetail_Click" />
                <asp:Button CssClass="mybtn" ID="PrintBtn" runat="server" Text="Print" OnClick="SubmitUserDetail_Click" />
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
