<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewPickupReq.aspx.cs" Inherits="DCMS.NewPickupReq" %>

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

            <%--<table>
                   <tr>
                       <td>
                           Client 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="clientid" runat="server" placeholder="Client ID"></asp:TextBox>
                       </td>

                       <td>
                           Pickup Time
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pickupT" runat="server" placeholder="Pickup Time"></asp:TextBox>
                       </td>
                   
                   </tr>

                   <tr>
                       <td>
                           Pickup Date 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pickupD" runat="server" placeholder="Pickup Date"></asp:TextBox>
                       </td>
                   

                        <td>
                          Pickup Address 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="PickupAdd" runat="server" placeholder="Pickup Address"></asp:TextBox>
                       </td>
                   </tr>

                  
                   <tr>
                       <td>
                           Origin
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="origin" runat="server" placeholder="Origin"></asp:TextBox>
                       </td>

                       <td>
                          Mobile No. 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="mobileno" runat="server" placeholder="Mobile no"></asp:TextBox>
                       </td>
                   
                   </tr>
                   <tr>
                       <td>
                           Destination 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="Dest" runat="server" placeholder="Destination"></asp:TextBox>
                       </td>
                        
                   </tr>
                   
                   <tr>
                       <td>
                           Pin Code 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="Pincode" runat="server" placeholder="Pincode"></asp:TextBox>
                       </td>
                   </tr> 
                       <tr>
                       <td>
                           Approx Pcs
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="pcs" runat="server" placeholder="Approx pcs"></asp:TextBox>
                       </td>
                   </tr>
                       <tr>
                       <td>
                           Approx Wt.(Kg.) 
                       </td>
                       <td>
                            <asp:TextBox CssClass="form-control" ID="WtKg" runat="server" placeholder="Approx Wt."></asp:TextBox>
                       </td>
                   </tr>
                       <tr>
                        <td>
                            Payment Mode
                        </td>
                        <td>
                            <asp:DropDownList class="form-control" ID="PaymentMode" runat="server">
                            <asp:ListItem Text="Select" Value="select" />
                            <asp:ListItem Text="Cash" Value="Cash" />
                            <asp:ListItem Text="UPI" Value="UPI" />
                            <asp:ListItem Text="NetBanking" Value="Net Banking" />
                            </asp:DropDownList>
                        </td>
                       </tr>
                  
                   

                   </table>--%>


            <%--<div id="contacts">
                    <div class="row ">
                        <div class="col-lg-1">

                        </div>
                        <div class="col-lg-5">
                                    
                        </div>

                         





                                                                                   <div class="col-lg-5">
                            neeraj hhh
                        </div>
                         <div class="col-lg-1">                        
                           
                                                    </div>
                    </div>
                </div>--%>

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
                                                        Client
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="clientid" runat="server" placeholder="Client ID"></asp:TextBox>
                                                    </div>


                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Time 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupT" runat="server" placeholder="Pickup Time"></asp:TextBox>


                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Date 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupD" runat="server" placeholder="Pickup Date"></asp:TextBox>
                                                    </div>

                                                    <div class="col-lg-2  col-xs-5">
                                                        Pickup Boy 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="pickupBoy" runat="server" placeholder="Pickup Boy"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                    </tbody>
                                </table>



                                <!-- Se 2-->
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <td>

                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Address
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="PickupAdd" runat="server" placeholder="Pickup Address"></asp:TextBox>
                                                    </div>


                                                    <div class="col-lg-2  col-xs-5">
                                                        Origin
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="origin" runat="server" placeholder="Origin"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row colspace">
                                                    <div class="col-lg-2  col-xs-5">
                                                        Mobile No 
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="mobileno" runat="server" placeholder="Mobile No"></asp:TextBox>
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
                                                        Destination
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Destination"></asp:TextBox>
                                                    </div>


                                                    <div class="col-lg-2  col-xs-5">
                                                        Pin code
                                                    </div>
                                                    <div class="col-lg-4   col-xs-7">
                                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Pin code"></asp:TextBox>
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
                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />
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
