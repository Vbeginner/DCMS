<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateForwadingNo.aspx.cs" Inherits="DCMS.UpdateForwadingNo" %>

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
                                    Awb No. * 
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="awbNo" runat="server" placeholder="Awb No."></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Network * 
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="network" runat="server" placeholder="Network"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Network No
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="netNo" runat="server" placeholder="Network no."></asp:TextBox>

                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Forwading Agent 
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="forwdingAgnt" runat="server" placeholder="Forwading Agent"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Forwading No. 
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="frdngNo" runat="server" placeholder="Forwading No."></asp:TextBox>
                                </div>
                                
                            </div>
                        </td>
                    </tr>



                </table>


                <br />
                <div class="center-block">
                    <asp:Button CssClass="mybtn" ID="SubmitUserDetail" runat="server" Text="Submit" OnClick="SubmitUserDetail_Click" />
                    <asp:Button CssClass="mybtn" ID="CancelBtn" runat="server" Text="Cancel" OnClick="SubmitUserDetail_Click" />
                </div>
                <div>
                    <br />

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
        </div>
    </body>

    </html>
</asp:Content>
