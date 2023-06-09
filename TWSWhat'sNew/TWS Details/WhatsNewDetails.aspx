<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WhatsNewDetails.aspx.vb" Inherits="TWSWhat_sNew.WhatsNewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section>
                <h1>TWS v1.6.0 - 1.6.9</h1>
                <p>
                    Version 1.6.9


1.	 0025936:  In MF those server name are different then interactive server name need to fix for that EXE.
2.	 0028341:  Optimized Broadcast in EXE 
3.	 0022438:  Holding bulk sqroff--> To give provision to select specific price to sell the Holdings. Currently we are able to sell in MKT only.
4.	0028768: Tradebook screen in multi tab window (previously it had only orderbook and net position).
5. 	0029574: Modify button not working in BO order.


Version 1.6.8

1.	0021325: Total qty required at bottom in pending orders or executed orders
2.	0024256: Login password length is minimum 6 & maximum 12 digit but as per standard password policy It should be minimum 8 & maximum 	14 digit.
3.	0022661: Unrealized and Realized MTM showing wrong because of which Total PL is also showing wrong,
4.	0024759: Integrate OTP Functionality on login
5.	0025493: Unable to see the MF stocks in equity market in Dealer & Client EXE
6.	0024281: VWAP window wrong volume display.


Version 1.6.7

1.	0022277:  Error "Invalid PAN ID", on selling holing's of multiple clients together through Holding report. 
2.	 0021051:  GTT Order - OCO 
3.	 0022589:  MAC IP Address integrate 
4.	 0022251:  DELARER TERMINAL BSE SEGMENT DEFAULT VALIDITY SETTING EOS NOT ENABLED 
5.	 0021919:  Holding Bulk sqr off --> On entering price and squaring off only first order gets executed. 
6.	 0022442:  GTT order issue
7.	0023014:Backup restore issue
8.	0021686: Error while order modification at dealer level
9.	0025095:Order slicing -->when clicked on sqroff button in position window Unable to sqroff position which falls only under BSE 

 

Version 1.6.6

1.	0016059: Participate code in spread order
2.	0016525: MOST ACTIVE SECURITIES SCRIP 
3.	0018519: BACK OFFICE URL CHANGE (Acumen)	
4.	0018608: Please attach following link for client ledger/backoffice etc.: https://soham1.itiorg.com/sohamclient/Login.aspx (ITI)
5.	0020897: Dual Depth functionality in market watch (Only for Equity
6.	0017771: MF-->Top ranked fund observed scheme name is hide behind return% value.
7.	0021170: Not able to place orders in Interest rate derivatives contracts in Currency segment.
8.	0021645: Order Entry Issue in Dealer Version 1.6.1.1
9.	0022534: Added Participant Code in Bracket Report.




Version 1.6.5
1.0002590  0006094: scrip removed from market watch list when any group change is occurred in that scrip. Market watch blank
2.0017291: GTT order should not have any validation of order price and trigger price . i.e. buy price should be greater than trigger price
3.0018079:  EKYC link for Steel City UAT
4.0017361:  Need options calculator
5.0015352: need lot size column in dealer exe (net position)
6.0016240: Sharepro Back office in EXE
7.0014741: Nifty 500 watch list is not shown in Market watch application.
8.0017752: MF-->Top ranked fund-->user click on scheme open chart screen observed portfolio tab data is showing blank
9.0016638: MF Holding-->Redeem order placed screen Folio field should be hide.
10.0017770: Top ranked fund-->click on scheme observed informative tab fund family data is not display proper
11.0017769: MF watchlist NAV date column data is showing blank.
12.0017771: MF-->Top ranked fund observed scheme name is hide behind return% value.
13.0017773 0017767 0017767: mf watchlist use delete scheme n add scheme logout n login again observed deleted scheme display.
14.0016779: EXE user placed xsip frequency 'day' order after select getting pop-up for select end date but end date calendar is not present
15.0016763: MF watchlist --->scheme details column below line unable to filter value.
16.0016636: MF holding-->redeem order placed screen transaction type should be display getting from API
17.0016645: SIP order book is missing (should be display Xsip parent orders)
18.0019502: Symbol movement--> To add Volume column
19.0020891: Margin calculator ands Backoffice (Capstock).



version 1.6.4

1.0015853: Added column 'Trigger price' in GTT orderbook 
2.0014824  0008216: HOLDING--> SQUIREOFF TAB----> sell price unable enter price in decimal
3.0009561: When we square-off position from the NET position window system should show net qty but order should pass in slicing way, freeze qty error
4.0008276: Trade from Graph
5.0014192: EDIS for multiple Holding
6.0014037: Added column Upper circuit & Lower circuit in watchlist 
7.0012726: Order Slicing during Square off 


version 1.6.3.1
Wrong quantity during Orderentry in mcx

version 1.6.3
1.0010293: MTF product added for GTT order placement
2.0006832: Holding total evaluation issue resolved.
3.0014724: EDIS Report showing blank response.
4.0014740: Added var Margin and var Elm (shift + f7).
5.0007340: Capstock URL Changes Ekyc, Eipo
6.00013538: Scrip details (shift +f7) design changes 
7.If No watchlist is open and you press F3(orderbook) or Alt+F6(netposition) and press F1 or F2 on that window no data is been seen on the order screen
8.0007572: Symbol search issue in watch list=>search in watchlist by typing the first two or four letter not search properly 
9.010122, 0014425,0014236: We have added minimum lot quantity in derivative=Settings=>orders
10.0014405: Backoffice in RKG exe
11.0007068: Fundamentals data - New Api integration=>shift+f7=>fundamental, P&L
12.0009287: GTT Order Issue resolved


Version 1.6.2
1.optimized client list reading code (StreamReader Code):
login with dealer, check client list is proper or not

2.optimized sec file read code (ReadfileNew):
download fresh security file and check scrips showing or not

3.removal of array[100] in read ldb function (loginview.xaml.cs):
removal of rsthread:
4.LDB file changes n fixes:

5.IsMdiLoaded check in globalvariables.selectedScrip:

6.isYesBank check in pushnoti n rrNextUpdate path:

7.spread order entry -- product list reverse (only for YSEC):

8.Customized links from urls file code:

9.bulk order entry-- participant code issue fix:
check proper participant code showing or not in bulk order entry

10.pre trade risk control integration:
check pre-trade risk functionality working properly of not

11.IPO related changes for lic ipo as per YSEC:
Check POL category showing or not in IPO order entry screen

12.spread pro order modification issue fix:
place pro spread order and modify it, it should get properly modified

13.bulk order entry- client id exists or not check while uploading excel file
upload excel file with wrong client id, you should see error message in overall tab at bottom

14.ashika new settlement calendar link:
ask for CLS.dll file while testing from developer

15.var margin integration 0009804:
var margin field added in shift+f7 screen

16.BSE auction changes:
BSE scrips can be seen in auction market watch, test entire auction order flow with bse scrips

17.showing loading in client details screen:
open client list=> right click on any client client details, it should either show client details or no data found text

18.total balance data type change in limit window 11089:
add custom column in limit screen with some mathematical accurate formula, it should show proper result

169.PAN/DOB column addition in client list:
PAN/DOB can be seen in client list window for each client




Version 1.6.1.1

7.LDB Changes (Array to list) 
8.Read File (Internal code fix)

Version 1.6.1

1.Column settings in limit window not getting saved
•To Check: change font size and column settings in limit window and relogin 
•Expectation: font size and column settings should get preserved after multiple relogin

2.Alert window taking time to open 
•To Check: Add 30-40 alerts in alert manager window, open-close window multiple times
•Expectation: Window should open immediately
 
3.After updating from older version to 1.5.9, random client id showing when order entry setting set to blank 
•To Check: set client id blank in 1.5.8.n version==> replace latest files in 1.5.8.n version==> check order entry screen
•Expectation: client id should be blank in order entry if blank is set in setting window

4.Bulk order entry product setting issue solved
•To Check: Go to settings window=>Orders=>Check Buy Product/Sell Product=>
Open bulk window and check product, both should be same
•Expectation: Bulk order entry setting should be matching with Order entry settings


5.HTTP request authorization: 
•To Check: put any live broadcast url and check all scanners, analytics, strategies windows 
•Expectation: All windows should show some data

6.Client file Code Optimization:
•To Check: Generate file for dealer multiple times with different client ids mapped ==> login==> check client list window 
•Expectation: all mapped client ids should be visible in client list window

7.Customized scrip search Delay time in market watch through key press: 	
•To Check: add '<add key="ScripSearchOnKeyPressMktWatchTimeOut" value="400" />' line in RRS.exe.config file==>login==> observe scrip search delay time in market watch using key press==>log out===> change time to 2000/3000 ==> repeat above process
•Expectation: scrip search should be delayed as per time entered  (TIME is in MILLISECONDS)


Version 1.5.9

1.Structure change for 61 backend

Version 1.5.8.8

1.Partial Download for Orderbook and Tradebook
2.Index Chart issue in case of push ltp
3.Authentication code Optimization
4.Feature to add similar row in bulk order entry-GEPL


Version 1.5.8.7.6

1.Client Code change
(Issue:- Not able to fetch clients in orderbook tradebook netposition holding etc)
2.Multitab issue
(Order status not working issue solved)

Version 1.5.8.7.5

Export to CSV change
Scrip selection issue on sorting
Multiselection Feature added
No broadcast when the watchlist is docked out
Client List code Optimization
Option chain columns not getting saved issue
Multitab issue(pending orders not showing in ALL filter) 
Increase Select all delay time in main scrip search 
Push LTP in chart from exe
Index Master not getting download on first login of the day Issue
Addition of Expiry Month in security_exch_model
High-Low Breach Issue while docking (selected scrip gets changed randomly)
Double for Loop removal from security_exch_viewmodel
Bulk order issue in case of NRI
EDIS revocation changes done
Text Wrap in Notification window
CP code change
radio buttons removed for client in bulk order entry

Version 1.5.8.7.3

Netposition Issue of Tbval and Tsval solved
Bracket Added in OmnenetpositionVM in interop
Isinterop flag added
Reset window issue of Esc button solved

Verison 1.5.8.7.2

Limit column save -(capstock,yes)
krc MBPview2 reconnection issue 
multitab window data not showing issue

Version 1.5.8.7.1

Order entry sorting -KRC
multitab window data not showing issue

Version 1.5.8.7

Regular Lot 3000 qty issue
Modification focus issue
SOR
Capstock Ledger & Backoffice
Instrument wise product setting in order entry
Option chain column issue
Checkbox to enable/disable buttons in holding screen
Inner version number tooltip on login screen version No
Order status changed for GTT
Holding Selidx(GEPL)
Define 59
Edis changes("1")

Version 1.5.8.6.5

NCDEX-FUTIDX
GTT latest changes

Version 1.5.8.6.4

index chart issue resolved
broadcast not reconnecting issue resolved
bind to excel not working if blank row exist in marketwatch' issue resolved
1.apollo tyre changes to bse power issue resovled
2.Margin calculator added 
3.OI change value not updating
4.currency quantity keeporder entry
5.backoffice url
4:46
6.hitmap
7.NCDEX
8.Sajal Mutual fund fill client issue


                </p>
            </section>
        </div>
    </form>
</body>
</html>
