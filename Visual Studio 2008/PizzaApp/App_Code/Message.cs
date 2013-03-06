using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace PizzaApp
{
    public static class Message
    {
        private static Exception lstException;

        public static Exception LastException
        {
            get
            {
                return lstException;
            }
            set
            {
                if (value != lstException)
                {
                    lstException = value;
                }
            }
        }
    }
}
