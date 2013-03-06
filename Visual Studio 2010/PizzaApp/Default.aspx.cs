using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Init(Object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                hrefSignInStatus.Visible = false;
                hrefSignOutStatus.Visible = true;
                hrefSignUpStatus.Visible = false;
                hrefOrders.Visible = true;
                hrefProfile.Visible = true;
            }
            else
            {
                hrefSignInStatus.Visible = true;
                hrefSignOutStatus.Visible = false;
                hrefSignUpStatus.Visible = true;
                hrefOrders.Visible = false;
                hrefProfile.Visible = false;
            }            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (!Page.IsPostBack)
                {
                    if (Request.QueryString["SignedIn"] != null)
                    {
                        bool isSignedIn = Convert.ToBoolean(Request.QueryString["SignedIn"]);

                        if (isSignedIn)
                        {
                            divAlertMessage.Visible = true;
                            divAlertMessage.Attributes["class"] = "alert fade in alert-success";
                            labelAlertMessage.InnerText = "SignedIn successfully.";
                        }
                    }
                }
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    if (Request.QueryString["SignedIn"] != null)
                    {
                        bool isSignedIn = Convert.ToBoolean(Request.QueryString["SignedIn"]);

                        if (!isSignedIn)
                        {
                            divAlertMessage.Visible = true;
                            divAlertMessage.Attributes["class"] = "alert fade in alert-success";
                            labelAlertMessage.InnerText = "SignedOut successfully.";
                        }
                    }
                }
            }
        }
    }
}