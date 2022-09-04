<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DispatchEntry.aspx.cs" Inherits="DCMS.DispatchEntry" %>

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
                                                    <div >
                                                        Master Manifest No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="MasterManifNo" runat="server" Enabled="false" placeholder="System Generated No."></asp:TextBox>
                                                    </div>
                                                    <div>
                                                        Update
                                                    </div>
                                                    <div>
                                                        <asp:CheckBox CssClass="form-control" ID="UpdtDispEntry" runat="server"></asp:CheckBox>
                                                    </div>


                                                    <div >
                                                        To Hub Branch 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="hubBrnch" runat="server" placeholder="To Hub Branch"></asp:TextBox>


                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Dispath Date 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="DisptDt" runat="server" placeholder="Dispatch Date"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Network 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="dispNetwork" runat="server" placeholder="Network"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Destination * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="desti" runat="server" placeholder="Destination"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Forwarder * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Frwder" runat="server" placeholder="Forwarder"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Vehical No. 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="vehicalNo" runat="server" placeholder="Vehical No."></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        CD No.* 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="CDNo" runat="server" placeholder="CD No."></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Branch * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="DispBrnch" runat="server" placeholder="Branch"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Payment Mode 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:DropDownList CssClass="form-control" ID="DispPaymentMode" runat="server">
                                                            <asp:ListItem Text="Credit" Value="Credit" />
                                                            <asp:ListItem Text="Cash" Value="Cash" />
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Packages * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="DispPackage" runat="server" placeholder="Packages"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>



                                <!-- Se 2-->
                                <table class="col-lg-2 table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Total Bags :  
                                                    </div>
                                                    <div>
                                                        <asp:Label ID="TlBags" Text="0" runat="server" />
                                                    </div>

                                                    <div>
                                                        Scan Bag No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="tlBagno" runat="server" placeholder="Sacn Bag No."></asp:TextBox>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <table class=" col-lg-4   col-xs-7 table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Total Scanned Bags :  
                                                    </div>
                                                    <div>
                                                        <asp:Label ID="Label1" Text="0" runat="server" />
                                                    </div>

                                                    <div>
                                                        Scan Bag No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="TlScannedBag" runat="server" placeholder="Sacn Bag No."></asp:TextBox>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <br />
                                <div class="col-lg-2  col-xs-5">
                                    <asp:Label CssClass="form-control" ID="bagqty" runat="server" Text="Bag QTY : 0"></asp:Label>

                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:Label CssClass="form-control" ID="bagWt" runat="server" placeholder="Bag.WT : 0"></asp:Label>
                                </div>

                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <asp:Button CssClass="mybtn" ID="Savebtn" runat="server" Text="Save" OnClick="SubmitUserDetail_Click" />
                <asp:Button CssClass="mybtn" ID="SendEmailbtn" runat="server" Text="Send Email" OnClick="SubmitUserDetail_Click" />
                <asp:Button CssClass="mybtn" ID="PrintBtn" runat="server" Text="Print" OnClick="SubmitUserDetail_Click" />
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
