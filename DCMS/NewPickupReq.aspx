<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPickupReq.aspx.cs" Inherits="DCMS.NewPickupReq" %>

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
                            <li><a href="dashboard.aspx">Dashboard</a></li>
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
                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Client
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="clientid" runat="server" placeholder="Client ID"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="clientid" ForeColor="Red" runat="server"
                                                            ErrorMessage="Client Id cannot be blank" />
                                                    </div>


                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Pickup Time 
                                                    </div>--%>
                                                    <%--<div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupT" runat="server" TextMode="Time" placeholder="Pickup Time"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="pickupT"  ForeColor="Red" runat="server"
                                                            ErrorMessage="Pickup Time cannot be blank" />

                                                    </div>--%>
                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Pickup Date 
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupD" runat="server" TextMode="Date" placeholder="Pickup Date"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="pickupD" ForeColor="Red" runat="server"
                                                            ErrorMessage="Picup Date cannot be blank" />
                                                    </div>

                                                    <%--                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Boy 
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupBoy" runat="server" placeholder="Pickup Boy"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="pickupBoy" ForeColor="Red" runat="server"
                                                            ErrorMessage="Pickup Boy cannot be blank" />
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>



                                <!-- Se 2-->
                               <%-- <fieldset id="fl1" runat="server" style="border: 1px solid">
                                    <legend>My Group</legend>--%>

                                    <table class="table table-bordered">
                                        <tbody>
                                            <tr>
                                                <td>

                                                    <div class="row colspace">
                                                        <%--<div class="col-lg-2  col-xs-5">
                                                            Address
                                                        </div>--%>
                                                        <div class="col-lg-4   col-xs-7">
                                                            <asp:TextBox CssClass="form-control" ID="PickupAdd" runat="server" placeholder="Pickup Address"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="PickupAdd" ForeColor="Red" runat="server"
                                                                ErrorMessage="Pickup Add cannot be blank" />
                                                        </div>


                                                        <%--<div class="col-lg-2  col-xs-5">
                                                            Origin
                                                        </div>--%>
                                                        <div class="col-lg-4   col-xs-7">
                                                            <asp:TextBox CssClass="form-control" ID="origin" runat="server" placeholder="Origin"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="origin" ForeColor="Red" runat="server"
                                                                ErrorMessage="Origin cannot be blank" />
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="row colspace">
                                                        <%--<div class="col-lg-2  col-xs-5">
                                                            Mobile No 
                                                        </div>--%>
                                                        <div class="col-lg-4   col-xs-7">
                                                            <asp:TextBox CssClass="form-control" ID="mobileno" runat="server" placeholder="Mobile No"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="mobileno" ForeColor="Red" runat="server"
                                                                ErrorMessage="Mobile No cannot be blank" />
                                                        </div>

                                                        <div class="col-lg-2  col-xs-5">
                                                        </div>
                                                        <div class="col-lg-4   col-xs-7">
                                                        </div>
                                                    </div>

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </fieldset>

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
                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Destination
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="CongineeDest" runat="server" placeholder="Destination"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="CongineeDest" ForeColor="Red" runat="server"
                                                            ErrorMessage="Destination cannot be blank" />
                                                    </div>


                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Pin code
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="PincodeId" runat="server" placeholder="Pin code"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="PincodeId" ForeColor="Red" runat="server"
                                                            ErrorMessage="Pincode cannot be blank" />
                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>





                                <!-- Se 5-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Approx pcs
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:TextBox CssClass="form-control" ID="pcs" runat="server" placeholder="Approx pcs"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="pcs" ForeColor="Red" runat="server"
                                                            ErrorMessage="Pcs cannot be blank" />
                                                    </div>

                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Approx Wt.(Kg.)
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:TextBox CssClass="form-control" ID="AppWt" runat="server" placeholder="Approx Wt."></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="AppWt" ForeColor="Red" runat="server"
                                                            ErrorMessage="Approx Wt. cannot be blank" />
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <%--<div class="col-lg-2  col-xs-5">
                                                        Payment Mode
                                                    </div>--%>
                                                    <div class="col-lg-4   col-xs-7">

                                                        <asp:DropDownList class="form-control" ID="PaymentMode" runat="server">
                                                            <asp:ListItem Text="Select" Value="select" />
                                                            <asp:ListItem Text="Cash" Value="Cash" />
                                                            <asp:ListItem Text="UPI" Value="UPI" />
                                                            <asp:ListItem Text="NetBanking" Value="Net Banking" />
                                                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="PaymentMode" ForeColor="Red" runat="server"
                                                                ErrorMessage="Payment Mode cannot be blank" />--%>
                                                        </asp:DropDownList>

                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <%--<asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />--%>
                <%--<button onclick="AddNewPickupReq()">Call Code-Behind Method</button>--%>

                <asp:Button CssClass="mybtn"  runat="server" Text="Submit" OnClientClick="CallCodeBehindMethod()" />
                <asp:Button CssClass="mybtn" ID="ClearUserDetail" runat="server" Text="Clear" OnClick="ClearUserDetail_Click" />
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

            <%--<script type="text/javascript" langugae="javascript">
                $(documen).ready(function)
                {
                    //$('#SubmitUserDetail').click(function ()
                    //{
                    //    PageMethod.AddNewPickupReq();
                    //});
                }

               

            </script>--%>

    </body>

    </html>



</asp:Content>
