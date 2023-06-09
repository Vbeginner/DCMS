<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatsNewPage.aspx.cs" Inherits="WhatsNew_TWS.WhatsNewPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <style>
        #myHeader {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            color: dodgerblue;
            font-size: 60px;
            font-weight: bold;
            font-family: sans-serif;
        }

        h4 {
            color: burlywood;
            font-weight: bold;
        }

        body {
            background-color: black;
        }

        #parentDiv {
            color: #fff;
        }

        #VDetails {
            margin-left: auto;
            margin-right: auto;
            text-align: left;
            border-bottom: 1px solid white;
            font-size: 15px;
            font-weight: inherit;
            font-family: sans-serif;
        }

        #myText {
        }

        h3 {
            text-align: left;
            text-transform: uppercase;
            /*color: darkolivegreen;*/
            color: orange;
/*            background-color: darkgrey
*/        }

        p {
            text-indent: 50px;
            text-align: justify;
            letter-spacing: 3px;
        }

        a {
            text-decoration: solid;
            color: #008CBA;
        }

        .title {
            font-size: 17px;
            font-weight: 600;
            font-family: sans-serif;
            color: beige !important;
        }

        .para {
            color: chartreuse;
            font-size: 15px;
            font-weight: 600;
            font-family: sans-serif;
            padding-right: 5px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>

    <div id="parentDiv">
        <div style="text-align: center; padding: 25px 0px;">
            <span id="myHeader">EXE - What's New</span>
        </div>
        <h3 class="p-3">Version Update Details from 1.7.0 To 1.7.4</h3>

        <div>
            <h4 class="ml-3">=> Version 1.7.4</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>OrderBook, TradeBook, Neposition</td>
                            <td>Added Dev Express Combobox for Client id Search</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>RRS Application</td>
                            <td>Cover VAPT Points.</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Calc button</td>
                            <td>Added 3rd Party Brokerage
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Scanner</td>
                            <td>Added new Scanner i.e :- Arbitrage</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Trouble Login</td>
                            <td>Removed dependency of 443 port from analytical IP textbox (trouble logging in?) screen</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div>
            <h4 class="ml-3">=> Version 1.7.3</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Order Entry</td>
                            <td>
                                <div>
                                    ->Surveillance Indicator during Order Placement
                                </div>
                                <div>
                                    ->Brokerage API integration on Calc button
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Scrip Detail</td>
                            <td>NCDEX and MCX Regulatory Change in Scrip details.</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Logs</td>
                            <td>Server side logs.</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Client List</td>
                            <td>Client Activation</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.7.2</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Link Url</td>
                            <td>Added a new menu in our all application “E-voting”, url mentioned below. Circular attached https://evoting.cdslindi</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Depth</td>
                            <td>New customized depth screen just like kambala.</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Order Entry</td>
                            <td>Added order slicing functionality for fresh orders on basis of freeze qty, already done in square off orders</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.7.1</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Market Watchlist</td>
                            <td>Added 'remove & hide grouping' option in right click of gridcontrol</td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>Scanner</td>
                            <td>Added DevExpress GridControl (DevDatagrid) in unusual volume, potential volume, open vs high low, circuit breakers, high low breach</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div>
            <h4 class="ml-3">=> Version 1.7.0</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>EDIS</td>
                            <td>Remove EDIS Generate Pin Option from Dealer</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Broadcast</td>
                            <td>Broadcast Authorized feed is not getting update in socket.</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Scrip Details</td>
                            <td>To display settlement cycle field.</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>


        <h3 class="p-3">Version Update Details from 1.6.1 To 1.6.9</h3>

        <div>
            <h4 class="ml-3">=> Version 1.6.9</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mutual Fund</td>
                            <td>In MF those server name are different then interactive server name need to fix for that EXE.</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Holding</td>
                            <td>To give provision to select specific price to sell the Holdings. Currently we are able to sell in MKT only.</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Mutitab</td>
                            <td>Tradebook screen in multi tab window (previously it had only orderbook and net position).</td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.8</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Login Password</td>
                            <td>Login password length is minimum 6 & maximum 12 digit but as per standard password policy It should be minimum 8 & maximum 14 digit.</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Login Functionality</td>
                            <td>Integrate OTP Functionality on login</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.7</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Login</td>
                            <td>MAC IP Address integrate Added</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div>
            <h4 class="ml-3">=> Version 1.6.6</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Spread Order Entery</td>
                            <td>Participate code in spread order</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Scanner</td>
                            <td>MOST ACTIVE SECURITIES SCRIP Added</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Depth</td>
                            <td>Dual Depth functionality in market watch (Only for Equity)</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Bracket Report</td>
                            <td>Added Participant Code in Bracket Report.</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.5</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Market Watchlist</td>
                            <td>scrip removed from market watch list when any group change is occurred in that scrip. Market watch blank</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Backoffice</td>
                            <td>Sharepro and Capstock Back office Added</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Mutual Fund</td>
                            <td>
                                <div>
                                    ->Top ranked fund
                                </div>
                                <div>
                                    ->MF watchlist
                                </div>
                                <div>
                                    ->MF holding
                                </div>
                                <div>
                                    ->user able to placed xsip frequency
                                </div>
                                <div>
                                    ->SIP order book
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Symbol Movement</td>
                            <td>Added Volume column</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.4</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>GTT OrderBook</td>
                            <td>Added column 'Trigger price' in GTT orderbook</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>EDIS</td>
                            <td>EDIS for multiple Holding</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Market Watchlist</td>
                            <td>Added column Upper circuit & Lower circuit in watchlist</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Order Entery</td>
                            <td>Order Slicing during Square off </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.3</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>GTT Order Entry</td>
                            <td>MTF product added for GTT order placement</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>E-Kyc Link</td>
                            <td>URL Changes Ekyc</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Scrip Details Window</td>
                            <td>Fundamentals data Added, P&L, and Design Changes</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Setting</td>
                            <td>We have added minimum lot quantity in derivative=Settings=>orders</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.2</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Order Entry</td>
                            <td>Integrated Pre trade risk control on Order entry window</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Scrip Details</td>
                            <td>var margin field added in shift+f7 screen</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Client List</td>
                            <td>->Showing loading in client details screen
                                ->PAN/DOB column addition in client list
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div>
            <h4 class="ml-3">=> Version 1.6.1</h4>
            <div>
                <table class="table table-striped">
                    <thead class="thead-light">
                        <tr>
                            <th style="width: 20px" scope="col">#</th>
                            <th style="width: 200px" scope="col">Module</th>
                            <th scope="col">Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Broadcast</td>
                            <td>Added HTTP request authorization</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Market Watch</td>
                            <td>Scrip search delay time in market watch using key press in Setting window.(TIME is in MILLISECONDS)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <%--  <div>
            <h4 class="ml-3">Version 1.6.1</h4>

            <div>

                <div>
                    <span class="title p-3">1.Column settings in limit window not getting saved</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check</span>:<span> change font size and column settings in limit window and relogin</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> font size and column settings should get preserved after multiple relogin</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">2.Alert window taking time to open</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>Add 30-40 alerts in alert manager window, open-close window multiple times</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> Window should open immediately</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">3.After updating from older version to 1.5.9, random client id showing when order entry setting set to blank</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>set client id blank in 1.5.8.n version==> replace latest files in 1.5.8.n version==> check order entry screen</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> client id should be blank in order entry if blank is set in setting window</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">4.Bulk order entry product setting issue solved</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>Go to settings window=>Orders=>Check Buy Product/Sell Product=>Open bulk window and check product, both should be same</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> Bulk order entry setting should be matching with Order entry settings</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">5.HTTP request authorization</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>put any live broadcast url and check all scanners, analytics, strategies windows</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> All windows should show some data</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">6.Client file Code Optimization</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>Generate file for dealer multiple times with different client ids mapped ==> login==> check client list window</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> all mapped client ids should be visible in client list window</span>
                </div>
            </div>

            <div>
                <div>
                    <span class="title p-3">7.Customized scrip search Delay time in market watch through key press</span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para">To Check : </span><span>add key="ScripSearchOnKeyPressMktWatchTimeOut" value="400" line in 
                        RRS.exe.config file==>login==> observe scrip search delay time in market watch using key press==>log out===> change time to 2000/3000 ==> repeat above process
                    </span>
                </div>
                <div class="ml-3">
                    <span class="p-3">•</span><span class="para text-danger">Expectation</span>:<span> scrip search should be delayed as per time entered  (TIME is in MILLISECONDS)</span>
                </div>
            </div>

        </div>--%>
    </div>
    <%--</form>--%>
</body>
</html>
