<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="POSScanUpload.aspx.cs" Inherits="DCMS.POSScanUpload" %>

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
                <div class="content">
                    <div id="page-heading">
                        <ol class="breadcrumb">
                            <h1>
                                <li><a href="index.aspx">Dashboard</a></li>
                            </h1>

                        </ol>
                    </div>
                    <table class="center-block">
                        <tr>

                            <td>
                                <div class="row colspace">
                                    <div class="col-lg-2  col-xs-5">
                                        Upload Files 
                                    </div>
                                    <div class="col-lg-4   col-xs-7">
                                        <input type="file" cssclass="form-control" id="uplPOSfiles" />
                                    </div>

                                </div>
                            </td>
                        </tr>



                    </table>
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
