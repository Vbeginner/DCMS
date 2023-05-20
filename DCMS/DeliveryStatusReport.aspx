<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeliveryStatusReport.aspx.cs" Inherits="DCMS.DeliveryStatusReport" %>

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
                                                    <div>
                                                        Booking Date
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom1" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />
                                                        <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom2" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                                    </div>

                                                    <div>
                                                        Branch 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="frmBrnch" runat="server" placeholder="Branch"></asp:TextBox>


                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Awb No. 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="awbno" runat="server" placeholder="Awb no."></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Packet Status
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:DropDownList CssClass="form-control" ID="Rton" runat="server">
                                                            <asp:ListItem Text="--Select--" Value="Rton" />
                                                        </asp:DropDownList>
                                                    </div>

                                                </div>
                                                <br />

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <br />

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <asp:Button CssClass="mybtn" ID="serchBtn" runat="server" Text="Search" OnClick="SubmitUserDetail_Click" />
                <asp:Button CssClass="mybtn" ID="Clear" runat="server" Text="Clear" OnClick="SubmitUserDetail_Click" />
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
