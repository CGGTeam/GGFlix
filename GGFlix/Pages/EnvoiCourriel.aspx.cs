using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_EnvoiCourriel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chClicked(object sender, EventArgs e)
    {
        if (chTous.Checked)
        {
            tbA.Text = "Tous";
            tbA.ReadOnly = true;
        }
        else
        {
            tbA.Text = "";
            tbA.ReadOnly = false;
        }
    }
}