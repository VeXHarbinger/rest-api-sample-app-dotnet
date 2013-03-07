<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PizzaApp.SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>PizzaShop</title>
    <link href="/Styles/StyleSheet.css" rel="Stylesheet" type="text/css"/>
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
                        <li class="active"><a href="/Users/SignUp.aspx">SignUp</a></li>
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
            <h2>SignUp</h2>
			<p>Sign up for a new PizzaShop account.</p>
            <div style="margin: 0; padding: 0; display: inline">
                <input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token"
                    type="hidden" value="Xw375OCUATPvjL7T9Uu60e+p12YNqhGGuYdmC8sgNIc=" /></div>
            <div class="control-group email required">
                <label class="email optional control-label">Email</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="string email required" Height="3%" ValidationGroup="SignUpGroup" TabIndex="1" placeholder="dummy@email.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxEmail"
                            Display="Dynamic" ErrorMessage="Please enter Email ID." ForeColor="#FF0000"  runat="server" ValidationGroup="SignUpGroup" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="TextBoxEmail" ErrorMessage="Please enter valid Email ID." ForeColor="#FF0000" ValidationGroup="SignUpGroup" />
                    </div>
            </div>
            <div class="control-group password required">
                <label class="password optional control-label">Password</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Height="3%" ValidationGroup="SignUpGroup" TabIndex="2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxPassword"
                            ErrorMessage="Please enter password." ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server" />
                    </div>
            </div>
            <div class="control-group password required">
                <label class="password optional control-label">Confirm Password</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" Height="3%" ValidationGroup="SignUpGroup" TabIndex="3"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBoxConfirmPassword"
                            ErrorMessage="Please enter password confirmation." ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server" />
                        <br />
                        <asp:CompareValidator ID="CompareValidatorTextBoxPasswords" runat="server" 
                            ControlToCompare="TextBoxPassword"
                            ControlToValidate="TextBoxConfirmPassword"
                            ErrorMessage="Please re-enter, passwords do not match." 
                            ForeColor="#FF0000"
                            ValidationGroup="SignUpGroup" />
                    </div>
            </div>
	        <h4>Add Credit Card (Optional)</h4>
    	    <p>Your credit card information is stored safely with PayPal.</p>
            <div class="control-group select required">
            	    <label>Credit Card Type</label>            
                    <div class="controls">
                        <asp:DropDownList ID="DropDownListCreditCardType" runat="server" ValidationGroup="SignUpGroup" TabIndex="4">                         
                            <asp:ListItem Value="--Select--" Text="--Select--" />
                            <asp:ListItem Value="visa" Text="visa" />
                            <asp:ListItem Value="mastercard" Text="mastercard" />
                            <asp:ListItem Value="discover" Text="discover" />
                            <asp:ListItem Value="amex" Text="amex" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="DropDownListCreditCardType"
                            ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Type."/>
                    </div>
            </div>
            <div class="control-group string required">
                <label class="string required control-label">Credit Card Number</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxCreditCardNumber" runat="server" Height="3%" ValidationGroup="SignUpGroup" TabIndex="5"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBoxCreditCardNumber"
                            ErrorMessage="Please enter Credit Card Number." ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server" />
                    </div>
            </div>
            <div class="control-group string required">
                <label class="string optional control-label">Credit Card CVV2</label>
                    <div class="controls">
                        <asp:TextBox ID="TextBoxCreditCardCVV2" runat="server" Height="3%" TabIndex="6"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBoxCreditCardCVV2"
                            ErrorMessage="Please enter Credit Card CVV2." ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server" />
                    </div>
            </div>
            <div class="control-group select required">
                <label class="select required control-label">Credit Card Expire Month</label>
                    <div class="controls">  
                        <asp:DropDownList ID="DropDownListCreditCardExpireMonth" runat="server" ValidationGroup="SignUpGroup" TabIndex="7">
                            <asp:ListItem Value="--Select--" Text="--Select--" />
                            <asp:ListItem Value="01" Text="01" />
                            <asp:ListItem Value="02" Text="02" />
                            <asp:ListItem Value="03" Text="03" />
                            <asp:ListItem Value="04" Text="04" />
                            <asp:ListItem Value="05" Text="05" />
                            <asp:ListItem Value="06" Text="06" />
                            <asp:ListItem Value="07" Text="07" />
                            <asp:ListItem Value="08" Text="08" />
                            <asp:ListItem Value="09" Text="09" />
                            <asp:ListItem Value="10" Text="10" />
                            <asp:ListItem Value="11" Text="11" />
                            <asp:ListItem Value="12" Text="12" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="DropDownListCreditCardExpireMonth"
                            ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Expire Month."/>
                    </div>
            </div>
            <div class="control-group select required">
                <label class="select required control-label">Credit Card Expire Year</label>
                <div class="controls">
                    <asp:DropDownList ID="DropDownListCreditCardExpireYear" runat="server" ValidationGroup="SignUpGroup" TabIndex="8">
                        <asp:ListItem Value="--Select--" Text="--Select--" />
                        <asp:ListItem Value="2013" Text="2013" />
                        <asp:ListItem Value="2014" Text="2014" />
                        <asp:ListItem Value="2015" Text="2015" />
                        <asp:ListItem Value="2016" Text="2016" />
                        <asp:ListItem Value="2017" Text="2017" />
                        <asp:ListItem Value="2018" Text="2018" />
                        <asp:ListItem Value="2019" Text="2019" />
                        <asp:ListItem Value="2020" Text="2020" />
                        <asp:ListItem Value="2021" Text="2021" />
                        <asp:ListItem Value="2022" Text="2022" />
                        <asp:ListItem Value="2023" Text="2023" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="DropDownListCreditCardExpireYear"
                        ForeColor="#FF0000" ValidationGroup="SignUpGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Expire Year."/>
                </div>
            </div>
            <div class='form-actions'>
                <asp:Button ID="ButtonSignUp" runat="server" CssClass="btn btn btn-primary" Text="SignUp"
                    Height="3%" ValidationGroup="SignUpGroup" TabIndex="9"
                    OnClick="ButtonSignUp_Click" />
            </div>
            <a href="/Users/SignIn.aspx">SignIn</a><br />
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
    <script language="javascript"  type="text/javascript"  src="/Scripts/Application.js"></script>
</body>
</html>
