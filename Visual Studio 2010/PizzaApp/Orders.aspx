<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Orders.aspx.cs" Inherits="PizzaApp.Orders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PizzaShop</title>
    <link type="text/css" href="jquery-ui-1.8.21.custom/css/ui-lightness/jquery-ui-1.8.21.custom.css"
        rel="Stylesheet" />
    <link href="/Styles/StyleSheet.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div class='container' id="divGridView">
            <div id="divAlertMessage" runat="server" visible="false">
                <button class="close" data-dismiss="alert" id="buttonAlertMessage" runat="server">
                    ×</button>
                <label id="labelAlertMessage" runat="server">
                </label>
            </div>
            <h2>Orders</h2>
              <div style="width:100%">            
                <asp:GridView runat="server" ID="GridViewUserOrders" AutoGenerateColumns="false">
                    <RowStyle BackColor="#EFF3FB" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="#FFFFFF" />
                    <PagerStyle BackColor="#2461BF" ForeColor="#FFFFFF" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="true" ForeColor="#FFFFFF" />
                    <AlternatingRowStyle BackColor="#FFFFFF" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Order ID" />
                        <asp:BoundField DataField="user_id" HeaderText="User ID" />
                        <asp:BoundField DataField="payment_id" HeaderText="Payment ID" />
                        <asp:BoundField DataField="state" HeaderText="State" />
                        <asp:BoundField DataField="amount" HeaderText="Amount in  USD" ItemStyle-HorizontalAlign="Right"/>
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="created_at" HeaderText="Created Date Time" />
                        <asp:BoundField DataField="updated_at" HeaderText="Updated Date Time " />
                    </Columns>
                </asp:GridView>
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
    </form>
    <script language="javascript" type="text/javascript" src="/Scripts/Application.js"></script>
    <script src="/Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="/Scripts/ScrollableGridPlugin.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $('#<%=GridViewUserOrders.ClientID %>').Scrollable();
        })
    </script>
</body>
</html>
