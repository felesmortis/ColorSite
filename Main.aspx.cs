using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtSearch.Text = "";
    }
    public string toHex(string red, string green, string blue)
    {
        return String.Format("#{0:x}{1:x}{2:x}", int.Parse(red), int.Parse(green), int.Parse(blue));
    }
}