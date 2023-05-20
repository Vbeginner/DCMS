<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ArrivalEntry.aspx.cs" Inherits="DCMS.ArrivalEntry" %>

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

                <table>
                    <tr>

                        <td>
                            <div class="row">
                                <div class='form-group'>
                                    From Branch 
                                </div>
                                <div class='form-group'>
                                    <asp:TextBox CssClass="form-control" ID="frBrnch" runat="server" placeholder="From Branch"></asp:TextBox>
                                </div>
                                <div >
                                    Bag No. 
                                </div>
                                <div class='form-group'>
                                    <asp:TextBox CssClass="form-control" ID="bagNo" runat="server" placeholder="Bag No."></asp:TextBox>
                                </div>
                                <br />
                                <div class="col-lg-8  col-xs-5">
                                    <div class="center-block">
                                        <asp:Button CssClass="mybtn" ID="receiveBtn" runat="server" Text="Receive" OnClick="SubmitUserDetail_Click" />
                                        <asp:Button CssClass="mybtn" ID="holdBtn" runat="server" Text="Hold" OnClick="SubmitUserDetail_Click" />
                                        <asp:Button CssClass="mybtn" ID="cancelBtn" runat="server" Text="Cancel" OnClick="SubmitUserDetail_Click" />
                                    </div>
                                </div>
                                <div class="row-lg-2  row-xs-5">
                                    Destination 
                                </div>
                                <div class="row-lg-4   row-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="desti" runat="server" placeholder="Destination"></asp:TextBox>
                                </div>
                                <div class="row-lg-2  row-xs-5">
                                    To Branch 
                                </div>
                                <div class="row-lg-4   row-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="toBrnch" runat="server" placeholder="To Branch"></asp:TextBox>
                                </div>
                                <div class="col-lg-2  col-xs-5">
                                    Bag Weight 
                                </div>
                                <div class="col-lg-4   col-xs-7">
                                    <asp:TextBox CssClass="form-control" ID="bagWt" runat="server" placeholder="Bag Wt."></asp:TextBox>
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div class="row">

                                
                            </div>
                        </td>
                    </tr>

                </table>
                <br />

                <div class="row pricing-tables">
                    <div class="col-sm-6 col-md-4">
                        <div class="pricing-table">
                            <table class="" runat="server">
                                <tr>
                                    <th>Bag Details
                                    </th>
                                    <td>
                                        <asp:GridView ID="bagDetGrid" runat="server">
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="pricing-table">
                            <table class="" runat="server">
                                <tr>
                                    <th>Receiving Details
                                    </th>
                                    <td>
                                        <asp:GridView ID="receivingdtGrid" runat="server">
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
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
