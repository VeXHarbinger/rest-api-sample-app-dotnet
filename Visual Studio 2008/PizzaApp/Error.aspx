<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="PizzaApp.Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>PizzaShop</title>  
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
                    <a class='brand' href='#'>PizzaShop</a>
                    <div class='nav-collapse'>
                        <ul class='nav'>
                            <li class=""><a href="/">Home</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class='container' id='content'>
            <h2>Oops!</h2>
          <div>
            An error has occurred on the page. Please notify the development team.
            <br />
            <br />
            Thank you.
            <br />
            <br />
            <asp:LinkButton ID="DetailLinkButton" runat="server" OnClick="DetailLinkButton_Click">Show Details</asp:LinkButton>
            <br />
            <br />
            <asp:Panel ID="MessagePanel" runat="server" Height="100%" Visible="False" Width="100%">
                <br />
                <asp:TextBox ID="MessageTextBox" runat="server" Height="307px" ReadOnly="True" TextMode="MultiLine"
                    Width="97%"></asp:TextBox>
            </asp:Panel>
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
    <script src="/Scripts/Application.js" type="text/javascript"></script>
</body>
</html>
