<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="PizzaApp.Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <li class="active"><a href="/Users/Edit.aspx">Profile</a></li>
                    <li class=""><a href="/Users/SignOut.aspx">SignOut</a></li>
                </ul>
                <a class='brand' href='#'>PizzaShop</a>
                <div class='nav-collapse'>
                    <ul class='nav'>
                        <li class=""><a href="/Default.aspx">Home</a></li>
                        <li class=""><a href="/Orders.aspx">Orders</a></li>
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
        <h2>Edit profile</h2>
        <div style="margin: 0; padding: 0; display: inline">
            <input name="utf8" type="hidden" value="&#x2713;" />
            <input name="_method" type="hidden" value="put" />
            <input name="authenticity_token" type="hidden" value="M4ax+dWnxAHu4goZ5COdGZXnyVqSkdsx5X80+KHLlCQ=" />
        </div>
        <div class="control-group email required">
            <label class="email optional control-label">Email</label>
            <div class="controls">
                <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="string email optional" Height="3%" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
         <div class="control-group password optional">
            <label class="password optional control-label">New Password</label>
            <div class="controls">
                <asp:TextBox ID="TextBoxNewPassword" runat="server" TextMode="Password" Height="3%" ValidationGroup="EditGroup" TabIndex="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBoxNewPassword"
                    ErrorMessage="Please enter New Password." ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server" />
            </div>
        </div>
        <div class="control-group password optional">
            <label class="password optional control-label">Confirm New Password</label>
                <div class="controls">
                    <asp:TextBox ID="TextBoxConfirmNewPassword" runat="server" TextMode="Password" Height="3%" ValidationGroup="EditGroup" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxConfirmNewPassword"
                            ErrorMessage="Please enter Confirm New Password." ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server" />
                        <br />
                    <asp:CompareValidator ID="CompareValidatorTextBoxPasswords" runat="server" 
                        ControlToCompare="TextBoxNewPassword"
                        ControlToValidate="TextBoxConfirmNewPassword"
                        ErrorMessage="Please re-enter, passwords do not match." 
                        ForeColor="#FF0000"
                        ValidationGroup="EditGroup" />
                </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>Existing Credit Card Type</label>
            <div class='controls'>
                <asp:TextBox ID="TextBoxExistingCreditCardType" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>Existing Credit Card Number</label>
            <div class='controls'>
                <asp:TextBox ID="TextBoxExistingCreditCardNumber" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
            </div>
        </div>        
        <div class='control-group'>
            <label class='control-label'>Existing Credit Card Expire Month</label>
            <div class='controls'>
                <asp:TextBox ID="TextBoxExistingCreditCardExpireMonth" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>Existing Credit Card Expire Year</label>
            <div class='controls'>
                <asp:TextBox ID="TextBoxExistingCreditCardExpireYear" runat="server" CssClass="string optional" Height="3%" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
        <div class="control-group select required">
            <label class="select required control-label">Credit Card Type</label>
            <div class="controls">
                <asp:DropDownList ID="DropDownListCreditCardType" runat="server" ValidationGroup="EditGroup" TabIndex="3">                         
                    <asp:ListItem Value="--Select--" Text="--Select--" />
                    <asp:ListItem Value="visa" Text="visa" />
                    <asp:ListItem Value="mastercard" Text="mastercard" />
                    <asp:ListItem Value="discover" Text="discover" />
                    <asp:ListItem Value="amex" Text="amex" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="DropDownListCreditCardType"
                    ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Type."/>
            </div>
        </div>
        <div class="control-group string required">
            <label class="string required control-label">Credit Card Number</label>
            <div class="controls">
                <asp:TextBox ID="TextBoxCreditCardNumber" runat="server" Height="3%" ValidationGroup="EditGroup" TabIndex="4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBoxCreditCardNumber"
                    ErrorMessage="Please enter Credit Card Number." ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server" />
            </div>
        </div>
        <div class="control-group string optional">
            <label class="string optional control-label">Credit Card CVV2</label>
            <div class="controls">
                <asp:TextBox ID="TextBoxCreditCardCVV2" runat="server" Height="3%" TabIndex="5" ValidationGroup="EditGroup"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBoxCreditCardCVV2"
                            ErrorMessage="Please enter Credit Card CVV2." ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server" />
            </div>
        </div>
        <div class="control-group select required">
            <label class="select required control-label">Credit Card Expire Month</label>
                <div class="controls">
                   <asp:DropDownList ID="DropDownListCreditCardExpireMonth" runat="server" ValidationGroup="EditGroup" TabIndex="6">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="DropDownListCreditCardExpireMonth"
                            ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Expire Month."/>
                </div>
        </div>
        <div class="control-group select required">
            <label class="select required control-label">Credit Card Expire Year</label>              
                <div class="controls">
                    <asp:DropDownList ID="DropDownListCreditCardExpireYear" runat="server" ValidationGroup="EditGroup" TabIndex="7">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="DropDownListCreditCardExpireYear"
                        ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server"  InitialValue="--Select--" Text="Please select Credit Card Expire Year."/>
                </div>
        </div>
        <div class="control-group password required">
            <label class="password required control-label">Current Password</label>
            <div class="controls">
                <asp:TextBox ID="TextBoxCurrentPassword" runat="server" TextMode="Password" Height="3%" ValidationGroup="EditGroup" TabIndex="8"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="TextBoxCurrentPassword"
                        ErrorMessage="Please enter Current Password." ForeColor="#FF0000" ValidationGroup="EditGroup" runat="server" />
                    <p class="help-block">Current Password is required to confirm the changes.</p>
            </div>
        </div>
        <div class='form-actions'>
            <asp:Button ID="ButtonUpdate" runat="server" CssClass="btn btn btn-primary" Text="Update" Height="3%" ValidationGroup="EditGroup" TabIndex="9"
                OnClick="ButtonUpdate_Click" />
        </div>
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
    <script language="javascript"  type="text/javascript"  src="/Scripts/Application.js"></script>
</body>
</html>

