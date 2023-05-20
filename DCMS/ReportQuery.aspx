<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportQuery.aspx.cs" Inherits="DCMS.ReportQuery" %>

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
        <div runat="server" class="main-body">
            <form id="form1" runat="server">

                <table class="center-block">
                    <tr>

                        <td>
                            <div class="row colspace">
                                <div class="col-lg-2  col-xs-5">
                                    Awb No.* 
                                </div>
                                <div class="col-lg-4   col-xs-7">

                                    <textarea cssclass="form-control" id="date2" runat="server" placeholder="Enter awb No.In New Line,If Multiple"></textarea>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Invoice No.
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:DropDownList CssClass="form-control" ID="date1" runat="server">
                                        <asp:ListItem Text="Awb no" Value="SearchBy" />
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Box No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="rptQuy" runat="server" placeholder="Box No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Payment Mode
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:DropDownList CssClass="form-control" ID="payMode" runat="server">
                                        <asp:ListItem Text="--Select--" Value="PayMod" />
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Booking Date.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:CheckBox CssClass="form-control" ID="bookingdt" runat="server"></asp:CheckBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    <%--<input type="date" CssClass="form-control" name="bkdt1"  ></input>--%>
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" name="bkdt2" ></input>--%>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Rate On 
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:DropDownList CssClass="form-control" ID="Rton" runat="server">
                                        <asp:ListItem Text="--Select--" Value="Rton" />
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Origin
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="orgin" runat="server" placeholder="Origin"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Manifest No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="manifestNo" runat="server" placeholder="Manifest No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Destination
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="Desti" runat="server" placeholder="Destination"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Client
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="clt" runat="server" placeholder="Client"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Bag No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="bgNo" runat="server" placeholder="Bag No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Consignee
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="cong" runat="server" placeholder="Consignee"></asp:TextBox>
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:CheckBox CssClass="form-control" ID="magdt" runat="server"></asp:CheckBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="mgdt1" runat="server"></input>--%>
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="mgdt2" runat="server"></input>--%>
                                </div>

                                <div class="col-lg-2  col-xs-5">
                                    Forwarding Agent
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="frwdAgent" runat="server" placeholder="Forwarding Agent"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Master Manifest No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Master Manifest No."></asp:TextBox>
                                </div>

                                <div class="col-lg-2  col-xs-5">
                                    Forwading No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="frwdNo" runat="server" placeholder="Forwading No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    CD No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="cdNo" runat="server" placeholder="CD No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Challan Date
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:CheckBox CssClass="form-control" ID="challdt" runat="server"></asp:CheckBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="ChDt1" runat="server"></input>--%>
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="ChDt2" runat="server"></input>--%>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Network No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="network" runat="server" placeholder="Network"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Packet Status
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:DropDownList CssClass="form-control" ID="pcktStatus" runat="server">
                                        <asp:ListItem Text="--Select--" Value="pktStatus" />
                                    </asp:DropDownList>

                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Network No.
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="networkNo" runat="server" placeholder="Network No."></asp:TextBox>

                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    RC Date
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:CheckBox CssClass="form-control" ID="rdChk" runat="server"></asp:CheckBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="RCdt1" runat="server"></input>--%>
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />

                                    <%--<input type="date" CssClass="form-control" ID="RCdt2" runat="server"></input>--%>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Service

                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="service" runat="server" placeholder="Service"></asp:TextBox>

                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Pendency Type
                                </div>
                                <div class="col-lg-col-4 col-xs-7">
                                    <asp:DropDownList CssClass="form-control" ID="pendencyTy" runat="server">
                                        <asp:ListItem Text="--Select--" Value="pendencyTy" />
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </td>
                    </tr>



                </table>
                <br />
                <div>
                    <asp:Button CssClass="mybtn" ID="Subbtn" runat="server" Text="Submit" />
                    <asp:Button CssClass="mybtn" ID="cancelBtn" runat="server" Text="Cancel" />
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
