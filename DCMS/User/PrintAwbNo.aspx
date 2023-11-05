<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PrintAwbNo.aspx.cs" Inherits="DCMS.PrintAwbNo" %>

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
                        <h1>
                            <li><a href="Dashboard.aspx">Dashboard</a></li>
                        </h1>

                    </ol>
                </div>
                <div class="page-content container-fluid">
                    <div class="page-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <table>
                                    <tr>
                                        <td>Booking Date 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" TextMode="Date" runat="server" placeholder="Booking Date"></asp:TextBox>
                                        </td>

                                        <td>Origin/Destination 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Dest."></asp:TextBox>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>Awb No. 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Awb No."></asp:TextBox>
                                        </td>


                                        <td>Packet Status 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Packet status"></asp:TextBox>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>Branch Code 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="branch code"></asp:TextBox>
                                        </td>

                                        <td>Client 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Client"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>Payment Type 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Payment Type"></asp:TextBox>
                                        </td>
                                        <td>Report With 
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" runat="server" placeholder="Report With"></asp:TextBox>
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

                                <div>
                                    <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />
                                    <asp:Button CssClass="mybtn" runat="server" Text="Cancel" OnClick="SubmitUserDetail_Click" />

                                </div>

                                <br />


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
