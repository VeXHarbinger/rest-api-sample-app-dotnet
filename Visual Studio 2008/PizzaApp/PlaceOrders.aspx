<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrders.aspx.cs" Inherits="PizzaApp.PlaceOrders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <title>PizzaShop</title>    
   <link href="/Styles/StyleSheet.css" rel="Stylesheet" type="text/css"/>
      <style type="text/css">
       .progressInner
        {
	        background-color: #DDDDDD;
	        color: #fff;
	        width: 150px;
	        text-align: center;
	        vertical-align: middle;
	        position: absolute;
	        bottom: 50%;
	        left: 45%;
        }
       .progressOuter
        {
	        position: fixed;
	        top: 0;
	        left: 0;
        	
	        background-color: #DDDDDD;
	        /* filter:alpha(opacity=70); */
	        /* opacity:0.7; */
        	
	        /* opacity:0.50; */ /* firefox, opera, safari, chrome */
            -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(opacity=30)"; /* IE 8 */
	        /* filter:alpha(opacity=50); */ /* IE 4, 5, 6 and 7 */
            /* zoom:1 /* so the element "hasLayout" */
            /* or, to trigger "hasLayout" set a width or height */

	        height: 100%;
	        width: 100%;
	        min-height: 100%;
	        min-width: 100%;  
	        opacity: 0.5;      	
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div>
        <div class='navbar navbar-static-top'>
            <div class='navbar-inner'>
                <div class='container'>
                    <a class='btn btn-navbar' data-target='.nav-collapse' data-toggle='collapse'><span
                        class='icon-bar'></span><span class='icon-bar'></span><span class='icon-bar'></span>
                    </a>
                    <ul class='nav pull-right'>
                        <li class=""><a href="/Users/Edit.aspx">Profile</a></li>
                        <li class=""><a href="/Users/SignOut.aspx">SignOut</a></li>
                    </ul>
                    <a class='brand' href='#'>PizzaShop</a>
                    <div class='nav-collapse'>
                        <ul class='nav'>
                            <li class=""><a href="/">Home</a></li>
                            <li class="active"><a href="/Orders.aspx">Orders</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class='container' id='content'>
        <div id="divAlertMessage" runat="server" visible="false">
            <button class="close" data-dismiss="alert" id="buttonAlertMessage" runat="server">×</button>
            <label id="labelAlertMessage" runat="server"></label>
        </div>     
        <h2>Place Order</h2>
          <div style="margin:0;padding:0;display:inline">
            <input name="utf8" type="hidden" value="&#x2713;" />
            <input name="authenticity_token" type="hidden" value="mQyHw54YcTn5PcVszOerbah0F8m6O2wWSmoWv7h1q+4=" />
          </div>        
          <div class='control-group'>
          <label class="string optional control-label">Amount</label>
          <div class='controls'>
            <asp:TextBox ID="TextBoxOrderAmount" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
          </div>
        </div>
        <div class='control-group'>
          <label class="string optional control-label">Description</label>
          <div class='controls'>
            <asp:TextBox ID="TextBoxOrderDescription" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
          </div>
        </div>
        <div class="control-group select optional">
            <label class="select optional control-label">Payment Method</label>
            <div class="controls">          
                <asp:DropDownList ID="DropDownPaymentMethod" runat="server" ValidationGroup="SignUpGroup" TabIndex="4">                         
                    <asp:ListItem Value="credit_card" Text="credit_card" />
                    <asp:ListItem Value="paypal" Text="paypal" />
                </asp:DropDownList>
                <p class="help-block">Update your credit card in Profile page</p>
            </div>
        </div>
        <div class='form-actions'>
            <asp:UpdatePanel ID="UpdatePanelButtonPlaceOrder" runat="server">
                <ContentTemplate>
                    <asp:Button ID="ButtonPlaceOrder" runat="server" CssClass="btn btn btn-primary" 
                        Text="PlaceOrder" Height="3%" onclick="ButtonPlaceOrder_Click" />          
                </ContentTemplate>
            </asp:UpdatePanel> 
        </div>
    </div>
        <div class='navbar navbar-fixed-bottom' id='footer'>
            <div class='navbar-inner'>
                <div class='container'>
                    <p class='pull-right'>Powered by PayPal REST APIs</p>
                </div>
            </div>
        </div> 
    </div>
        <asp:UpdateProgress ID="UpdateProgressButtonPlaceOrder" runat="server">
        <ProgressTemplate>
            <div class="progressOuter">              
                <div class="progressInner">
                    <asp:Image ID="ajaxLoadNotificationImage" runat="server" ImageUrl="~/Images/ajax-loader.gif" />
                </div>
            </div>                                                    
        </ProgressTemplate>
    </asp:UpdateProgress> 
    </form>
    <script language="javascript"  type="text/javascript"  src="/Scripts/Application.js"></script>
</body>
</html>

