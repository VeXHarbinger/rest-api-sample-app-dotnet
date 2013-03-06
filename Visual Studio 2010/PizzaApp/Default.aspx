<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PizzaApp.Default" %>

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
                        <li class="active"><a id="hrefProfile" runat="server" href="/Users/Edit.aspx">Profile</a></li>
                        <li class=""><a href="/Users/SignIn.aspx" id="hrefSignInStatus" runat="server">SignIn</a></li>
                        <li class=""><a href="/Users/SignOut.aspx" id="hrefSignOutStatus" runat="server">SignOut</a></li>
                        <li class=""><a href="/Users/SignUp.aspx" id="hrefSignUpStatus" runat="server">SignUp</a></li>
                    </ul>
                    <a class='brand' href='#'>PizzaShop</a>
                    <div class='nav-collapse'>
                        <ul class='nav'>
                            <li class="active"><a href="/">Home</a></li>
                            <li class=""><a id="hrefOrders" runat="server" href="/Orders.aspx">Orders</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class='container' id='content'>
            <div id="divAlertMessage" runat="server" visible="false">
                <button class="close" data-dismiss="alert" id="buttonAlertMessage" runat="server">
                    ×</button>
                <label id="labelAlertMessage" runat="server">
                </label>
            </div>
            <div class='row pizza-row'>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 0" src="http://www.gravatar.com/avatar/0000000000000000000000000000000?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+0"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 1" src="http://www.gravatar.com/avatar/0000000000000000000000000000001?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+1"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 2" src="http://www.gravatar.com/avatar/0000000000000000000000000000002?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+2"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 3" src="http://www.gravatar.com/avatar/0000000000000000000000000000003?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+3"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 4" src="http://www.gravatar.com/avatar/0000000000000000000000000000004?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+4"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 5" src="http://www.gravatar.com/avatar/0000000000000000000000000000005?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+5"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
            </div>
            <div class='row pizza-row'>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 6" src="http://www.gravatar.com/avatar/0000000000000000000000000000006?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+6"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 7" src="http://www.gravatar.com/avatar/0000000000000000000000000000007?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+7"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 8" src="http://www.gravatar.com/avatar/0000000000000000000000000000008?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+8"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 9" src="http://www.gravatar.com/avatar/0000000000000000000000000000009?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+9"
                            class="btn btn-small" data-disable-with="Procesing.."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 10" src="http://www.gravatar.com/avatar/00000000000000000000000000000010?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+10"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 11" src="http://www.gravatar.com/avatar/00000000000000000000000000000011?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+11"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
            </div>
            <div class='row pizza-row'>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 12" src="http://www.gravatar.com/avatar/00000000000000000000000000000012?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+12"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 13" src="http://www.gravatar.com/avatar/00000000000000000000000000000013?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+13"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 14" src="http://www.gravatar.com/avatar/00000000000000000000000000000014?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+14"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 15" src="http://www.gravatar.com/avatar/00000000000000000000000000000015?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+15"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 16" src="http://www.gravatar.com/avatar/00000000000000000000000000000016?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+16"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
                <div class='span2'>
                    <div class='image'>
                        <img alt="Pizza 17" src="http://www.gravatar.com/avatar/00000000000000000000000000000017?d=identicon&amp;f=y" />
                    </div>
                    <div class='details'>
                        20$ - <a href="/PlaceOrders.aspx?order%5Bamount%5D=20&amp;order%5Bdescription%5D=Pizza+17"
                            class="btn btn-small" data-disable-with="Procesing..."
                            data-method="post" rel="nofollow">Buy</a>
                    </div>
                </div>
            </div>
        </div>
        <div class='navbar navbar-fixed-bottom' id='footer'>
            <div class='navbar-inner'>
                <div class='container'>
                    <p class='pull-right'>
                        Powered by PayPal</p>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script language="javascript" type="text/javascript" src="/Scripts/Application.js"></script>
</body>
</html>
