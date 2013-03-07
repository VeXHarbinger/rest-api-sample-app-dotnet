<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="PizzaApp.SignIn" %>

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
                        <li class="active"><a href="/Users/SignIn.aspx">SignIn</a></li>
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
        <div id="divAlertMessage" runat="server" visible="false">
            <button class="close" data-dismiss="alert" id="buttonAlertMessage" runat="server">×</button>
            <label id="labelAlertMessage" runat="server"></label>
        </div>     
            <h2>SignIn</h2>
			<p>Sign in with your PizzaShop account. Don't have an account yet? <a href="/Users/SignUp.aspx">Sign up</a> for one.</p>
            <div style="margin: 0; padding: 0; display: inline">
                <input name="utf8" type="hidden" value="&#x2713;" />
                <input name="authenticity_token" type="hidden" value="Xw375OCUATPvjL7T9Uu60e+p12YNqhGGuYdmC8sgNIc=" />
            </div>
            <div class="control-group email optional">
                <label class="email optional control-label" for="user_email">
                    Email</label>
                <div class="controls">
                    <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="string email optional" Height="3%"
                        ValidationGroup="SignInGroup" placeholder="dummy@email.com" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxEmail"
                        Display="Dynamic" ErrorMessage="Please enter Email ID." ForeColor="#FF0000" runat="server"
                        ValidationGroup="SignInGroup" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="TextBoxEmail" ErrorMessage="Please enter valid Email ID."
                        ForeColor="#FF0000" ValidationGroup="SignInGroup" />
                </div>
            </div>
            <div class="control-group password optional">
                <label class="password optional control-label" for="user_password">
                    Password</label>
                <div class="controls">
                    <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="password optional" TextMode="Password"
                        Height="3%" ValidationGroup="SignInGroup"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxPassword"
                        ErrorMessage="Please enter password." ForeColor="#FF0000" ValidationGroup="SignInGroup"
                        runat="server" />
                </div>
            </div>
            <div class='control-group'>
                <div class='controls'>
                    <label class='checkbox'>
                        <asp:CheckBox ID="CheckBoxPersist" runat="server" Text="Remember" />
                    </label>
                </div>
            </div>
            <div class='form-actions'>
                <asp:Button ID="ButtonSignIn" runat="server" CssClass="btn btn btn-primary" Text="SignIn"
                    OnClick="ButtonSignIn_Click" Height="3%" ValidationGroup="SignInGroup" />
            </div>
            <a href="/Users/Password/New.aspx">Forgot Password?</a><br />
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
</body>
</html>
