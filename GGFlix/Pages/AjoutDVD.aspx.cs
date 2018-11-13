using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_AjoutDVD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void afficheDIV(object sender, EventArgs e)
    {
        int valComboType = int.Parse(typeAjout.Text);
        if(valComboType == 0)
        {
            divAbrege.Visible = true;
            divComplet.Visible = false;
        }
        else
        {
            divAbrege.Visible = false;
            divComplet.Visible = true;
        }
    }
}