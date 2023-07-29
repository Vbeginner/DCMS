<%@ Page Title="Dashboard Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DCMS.Dashboard" %>



<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">

    
<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>



<div id="page-content">
                <div id="wrap">
                    <div id="page-heading">
                        <ol class="breadcrumb">
                            <h1>
                                <li><a href="Dashboard.aspx">Dashboard</a></li>
                            </h1>

                        </ol>
                        
                    </div>
                    <div class="page-content container-fluid">
                        <div class="panel">
                            <div class="panel-body container-fluid">
                                <div class="row row-lg">
                                    <div class="col-md-12">
                                        <div class='alert alert-info alert-dismissable welcome-heading'>
                                            Welcome to&nbsp;<strong>HVR Technologies</strong>&nbsp;
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class='col-sm-2 controls'>
                                        <select name="ddlChartType" id="ddlChartType" tabindex="1" class="form-control">
	<option selected="selected" value="Weekly">Weekly</option>
	<option value="Daily">Date Wise</option>

</select>
                                    </div>
                                    <div class='col-sm-2 controls'>
                                        <input name="txtClient" type="text" maxlength="50" id="txtClient" tabindex="1" class="form-control" placeholder="Client Name" />
                                        
                                    </div>
                                    <div class='col-sm-2 controls'>
                                        <input name="txtDateFrom" type="date" value="24-Aug-2021" maxlength="20" id="txtDateFrom" tabindex="1" class="form-control" placeholder="Date From" onfocus="setmask(&#39;txtDateFrom&#39;)" />
                                        
                                    </div>
                                    <div class='col-sm-2 controls'>
                                        <input name="txtDateTo" type="date" value="31-Aug-2021" maxlength="20" id="txtDateTo" tabindex="1" class="form-control" placeholder="Date To" onfocus="setmask(&#39;txtDateFrom&#39;)" />
                                        
                                    </div>
                                    <div class='col-sm-1 controls'>
                                        <button id="btnSearch" class="fa btn btn-danger" tabindex="1">
                                            <i class="icon-search"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="row pricing-tables">
                                    <div class="col-sm-6 col-md-4">
                                        <div class="pricing-table">
                                            <div class="header">Booking Branch</div>
                                            <ul class="list-unstyled features">
                                                <li><a href="#" rel="popuprel" class="popup2"><i class="icon-edit fa-1x text-blue"></i>
                                                    Total Booking
                                      <span class="text-error"><strong>(<span id="lblPickupInscan">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup3"><i class="icon-truck fa-1x text-orange"></i>
                                                    OutScan
                                                 <span class="text-error"><strong>(<span id="lblOutScan">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup19"><i class="icon-truck fa-1x text-orange"></i>
                                                    Self Runsheet
                                 <span class="text-error"><strong>(<span id="lblSelfRunsheet">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup4"><i class="icon-truck fa-1x text-green"></i>
                                                    Delivered
                        <span class="text-error"><strong>(<span id="lblBookingDlvrd">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup5"><i class="icon-dropbox fa-1x text-brown"></i>
                                                    RTO
                        <span class="text-error"><strong>(<span id="lblBookingRTO">0</span>)</strong></span></a>
                                                </li>

                                                <li><a href="#" rel="popuprel" class="popup6"><i class="icon-time fa-1x text-error"></i>
                                                    Pending
                        <span class="text-error"><strong>(<span id="lblBookingPending">0</span>)</strong></span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-4">
                                        <div class="pricing-table">
                                            <div class="header">Destination Branch</div>
                                            <ul class="list-unstyled features">
                                                <li><a href="#" rel="popuprel" class="popup7"><i class="icon-dropbox fa-1x text-error"></i>
                                                    Arrival Packet
                        <span class="text-error"><strong>(<span id="lblArrivalPacket">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup8"><i class="icon-edit fa-1x text-blue"></i>
                                                    In-Scan Packet
                        <span class="text-error"><strong>(<span id="lblArrived">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup9"><i class="icon-remove fa-1x text-orange"></i>
                                                    Not In-Scan Packet
                        <span class="text-error"><strong>(<span id="lblArrivalNoReceive">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup10"><i class="icon-truck fa-1x text-green"></i>
                                                    Delivered
                        <span class="text-error"><strong>(<span id="lblDeliveredDlvrd">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup11"><i class="icon-dropbox fa-1x text-brown"></i>
                                                    RTO
                        <span class="text-error"><strong>(<span id="lblDeliveredRTO">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup12"><i class="icon-time fa-1x text-error"></i>
                                                    Pending
                        <span class="text-error"><strong>(<span id="lblDeliveredPending">0</span>)</strong></span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-4">
                                        <div class="pricing-table">
                                            <div class="header">Runsheet</div>
                                            <ul class="list-unstyled features">
                                                <li><a href="#" rel="popuprel" class="popup13"><i class="icon-dropbox fa-1x text-error"></i>
                                                    Packet for Runsheet
                        <span class="text-error"><strong>(<span id="lblPacketforRunsheet">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup14"><i class="icon-building fa-1x text-blue"></i>
                                                    Runsheet Prepared
                        <span class="text-error"><strong>(<span id="lblRunsheetPrepared">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup15"><i class="icon-time fa-1x text-orange"></i>
                                                    Pending for Runsheet
                        <span class="text-error"><strong>(<span id="lblPendingforRunsheet">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup16"><i class="icon-truck fa-1x text-green"></i>
                                                    Delivered
                        <span class="text-error"><strong>(<span id="lblRunsheetDlvrd">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup17"><i class="icon-dropbox fa-1x text-brown"></i>
                                                    RTO
                        <span class="text-error"><strong>(<span id="lblRunsheetRTO">0</span>)</strong></span></a>
                                                </li>
                                                <li><a href="#" rel="popuprel" class="popup18"><i class="icon-time fa-1x text-error"></i>
                                                    Pending
                        <span class="text-error"><strong>(<span id="lblRunsheetPending">0</span>)</strong></span></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div id="chartContainer" style="height: 300px; width: 95%;">
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                    </div>

                </div>
            </div>
    </body>
</html>

</asp:Content>




