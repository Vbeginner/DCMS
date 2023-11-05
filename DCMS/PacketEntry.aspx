<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostback="false" AutoEventWireup="true" CodeBehind="PacketEntry.aspx.cs" Inherits="DCMS.PacketEntry" %>

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
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <!-- Pickup Request-->
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Req No.*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="PickReqno" runat="server" placeholder="Req no."></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Network * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupT" runat="server" placeholder="Pickup Time"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Booking Date*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Bkdt" runat="server" placeholder="Booking Date"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Service * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Servicetxt" runat="server" placeholder="Service"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Awb No.*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="AwbNo" runat="server" placeholder="Awb No."></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Netwok No. * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="NetworkNo" runat="server" placeholder="Network No."></asp:TextBox>
                                                    </div>

                                                     <div class="col-lg-2  col-xs-5">
                                                        Forwarding Agent
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="FrwdNo" runat="server" placeholder="Forwarding Agent"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Origin * 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Origin" runat="server" placeholder="Origin"></asp:TextBox>
                                                    </div>
                                                     <div class="col-lg-2  col-xs-5">
                                                        Forwading No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="forwadNo" runat="server" placeholder="Forwading No."></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Address 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickAdd" runat="server" placeholder="Pickup Add"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                                <!-- Consignor-->
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Client *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="ShortClient" runat="server" placeholder="Client"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        PinCode *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pincode" runat="server" placeholder="Pin Code"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Consignor *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="ConsiN" runat="server" placeholder="Consignor Name"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Invoice No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="InvoNo" runat="server" placeholder="Invoice No."></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Ref No.*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="refno" runat="server" placeholder="Ref No."></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Mobile No.
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="MobileNo" runat="server" placeholder="Mobile No"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Address
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Add" runat="server" placeholder="Address"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        State
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="state" runat="server" placeholder="State"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Invoice Value
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="invVal" runat="server" placeholder="Invoice Value"></asp:TextBox>
                                                    </div>

                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>



                                <!-- Consignee-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Consignee *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Consignee" runat="server" placeholder="Consignee Name"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Contact No *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="CntNo" runat="server" placeholder="Contact No."></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Address *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="ConsigneeAdd" runat="server" placeholder="Address"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        PinCode *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="ConsigneePincode" runat="server" placeholder="Pin Code"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Destination*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Desti" runat="server" placeholder="Destination"></asp:TextBox>
                                                    </div>
                                                     <div class="col-lg-2  col-xs-5">
                                                        State
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Consigneestate" runat="server" placeholder="State"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Code
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="code" runat="server" placeholder="Code"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>


                                <!-- Se 3-->
                                <%--  <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>

                                            <div class="row colspace">
                                                <div class="col-lg-2  col-xs-5">
                                                    Destination
                                                </div>
                                                <div class="col-lg-4   col-xs-7">
                                                    <asp:TextBox CssClass="form-control" ID="Dest" runat="server" placeholder="Destination"></asp:TextBox>
                                                </div>


                                                <div class="col-lg-2  col-xs-5">
                                                    Pin code
                                                </div>
                                                <div class="col-lg-4   col-xs-7">
                                                    <asp:TextBox CssClass="form-control" ID="Pincode" runat="server" placeholder="Pin code"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>--%>

                                <!-- Se 4-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Payment Mode
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:DropDownList CssClass="form-control" ID="PmtMode" runat="server">
                                                            <asp:ListItem Text="Select" Value="select" />
                                                            <asp:ListItem Text="Credit" Value="Credit" />
                                                            <asp:ListItem Text="Cash" Value="Cash" />
                                                        </asp:DropDownList>
                                                    </div>


                                                    <div class="col-lg-2  col-xs-5">
                                                        Amount
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="Amt" runat="server" placeholder="Amount"></asp:TextBox>
                                                    </div>
                                                     <div class="col-lg-2  col-xs-5">
                                                        Freight
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="freight" runat="server" placeholder="Freight"></asp:TextBox>
                                                    </div>
                                                    <div class="col-lg-2  col-xs-5">
                                                        Fuel
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="fuel" runat="server" placeholder="Fuel"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <!-- Weight Details-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Rate On*
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:DropDownList CssClass="form-control" ID="rateOn" runat="server" >
                                                            <asp:ListItem Text="Weight" Value="Weight" />
                                                        </asp:DropDownList>
                                                    </div>
                                                     <div class="col-lg-2  col-xs-5">
                                                        PCS *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pcs" runat="server" placeholder="PCS."></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        QTY *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="qty" runat="server" placeholder="QTY."></asp:TextBox>
                                                    </div>
                                                     <div class="col-lg-2  col-xs-5">
                                                        Actual Wt. *
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="actWt" runat="server" placeholder="Actual Wt."></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <!-- Extra Charge Details-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-3">
                                                        <asp:TextBox CssClass="form-control" ID="chrgDes" runat="server" placeholder="Charge Desc"></asp:TextBox>

                                                    </div>
                                                    <div class="col-lg-3   col-xs-5">
                                                        <asp:TextBox CssClass="form-control" ID="chrg" runat="server" placeholder="Charge"></asp:TextBox>
                                                    </div>
                                                    <div>
                                                        <asp:Button CssClass="mybtn" ID="chrgbtn" runat="server" Text="+" />
                                                    </div>

                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <!-- Dimensional Details-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-1">
                                                        Fix
                                                    </div>
                                                    <div class="col-sm-1">
                                                        <asp:CheckBox CssClass="form-control" ID="fix" runat="server" ></asp:CheckBox>
                                                    </div>
                                                    <div>
                                                        <asp:TextBox CssClass="form-control" ID="length" runat="server" placeholder="L"></asp:TextBox>
                                                        <asp:TextBox CssClass="form-control" ID="width" runat="server" placeholder="W"></asp:TextBox>
                                                        <asp:TextBox CssClass="form-control" ID="height" runat="server" placeholder="H"></asp:TextBox>
                                                        <asp:TextBox CssClass="form-control" ID="needtoknow" runat="server" placeholder="P"></asp:TextBox>
                                                        <asp:TextBox CssClass="form-control" ID="wtg" runat="server" placeholder="Wt."></asp:TextBox>

                                                    </div>
                                                    <%--<div class="col-lg-3   col-xs-5">
                                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Charge"></asp:TextBox>
                                                    </div>--%>
                                                    <div>
                                                        <asp:Button CssClass="mybtn" ID="Dimenbtn" runat="server" Text="+" />
                                                    </div>

                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                                <table>
                                    <tr>
                                        <td>
                                            <div class="row colspace">
                                                <div class="col-lg-2  col-xs-5">
                                                    Dim. Wt.*
                                                </div>
                                                <div class="col-lg-4   col-xs-7">
                                                    <asp:TextBox CssClass="form-control" ID="DimWt" runat="server" placeholder="Dim. Wt."></asp:TextBox>
                                                </div>

                                                <div class="col-lg-2  col-xs-5">
                                                    Billed Wt.*
                                                </div>
                                                <div class="col-lg-4   col-xs-7">
                                                    <asp:TextBox CssClass="form-control" ID="BillWt" runat="server" placeholder="Billed Wt."></asp:TextBox>
                                                </div>
                                            </div>
                                        </td>

                                    </tr>
                                </table>

                                <!-- Se 5-->
                                <%--<table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Approx pcs
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:TextBox CssClass="form-control" ID="pcs" runat="server" placeholder="Approx pcs"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Approx Wt.(Kg.)
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Approx Wt."></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Payment Mode
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:DropDownList class="form-control" ID="PaymentMode" runat="server">
                                                            <asp:ListItem Text="Select" Value="select" />
                                                            <asp:ListItem Text="Cash" Value="Cash" />
                                                            <asp:ListItem Text="UPI" Value="UPI" />
                                                            <asp:ListItem Text="NetBanking" Value="Net Banking" />
                                                        </asp:DropDownList>

                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>--%>
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
