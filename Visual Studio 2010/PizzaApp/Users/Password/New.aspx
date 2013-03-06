<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="PizzaApp.New" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <ul class='nav pull-right'>
                        <li class=""><a href="/Users/SignIn.aspx">SignIn</a></li>
                        <li class=""><a href="/Users/SignUp.aspx">SignUp</a></li>
                    </ul>
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
            <h2>Forgot Password</h2>
            <div class="inputs">
                <div class="control-group email required">
                    <label class="email required control-label">Email</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="string email required" Height="3%" ValidationGroup="EmailPasswordGroup" TabIndex="1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxEmail"
                            Display="Dynamic" ErrorMessage="Please enter Email ID." ForeColor="#FF0000"  runat="server" ValidationGroup="EmailPasswordGroup" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="TextBoxEmail" ErrorMessage="Please enter valid Email ID." ForeColor="#FF0000" ValidationGroup="EmailPasswordGroup" />
                    </div>
                </div>
            </div>
            <div class="actions">
                <asp:Button ID="ButtonEmailPassword" runat="server" 
                    CssClass="btn btn btn-primary" Text="Email Password"
                    Height="3%" ValidationGroup="EmailPasswordGroup" TabIndex="9" 
                    onclick="ButtonEmailPassword_Click" />
            </div>
            <a href="/Users/SignIn.aspx">SignIn</a><br />
            <a href="/Users/SignUp.aspx">SignUp</a><br />
        </div>
        <div class='navbar navbar-fixed-bottom' id='footer'>
            <div class='navbar-inner'>
                <div class='container'>
                    <p class='pull-right'>Powered by PayPal</p>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="/Scripts/Application.js" type="text/javascript"></script>
</body>
</html>
