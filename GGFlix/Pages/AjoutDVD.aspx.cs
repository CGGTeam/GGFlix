using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Pages_AjoutDVD : System.Web.UI.Page
{
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private List<Film> lstFilm = new List<Film>();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        afficheDIV(sender, e);
    }

    protected void afficheDIV(object sender, EventArgs e)
    {
        int valComboType = int.Parse(typeAjout.Text);
        if(valComboType == 0)
        {
            divAbrege.Visible = true;
            divComplet.Visible = false;
            btnAjouter.Click += new EventHandler(btnClickSimple);
            btnAjouter.Click -= new EventHandler(btnClickSpecifique);
        }
        else
        {
            divAbrege.Visible = false;
            divComplet.Visible = true;
            btnAjouter.Click -= new EventHandler(btnClickSimple);
            btnAjouter.Click += new EventHandler(btnClickSpecifique);
        }
    }

    protected void btnClickSimple(object sender, EventArgs e)
    {
        for(int i = 1; i <= 10; i++)
        {
            TextBox tbEnCours = new TextBox();
            if (i == 10) tbEnCours = (TextBox)Page.FindControl("tb" + i);
            else tbEnCours = (TextBox)Page.FindControl("tb0" + i);
            if(tbEnCours.Text.Trim() != "")
            {
                lstFilm = filmDao.FindAll().Where(v=>v.TitreFrancais == tbEnCours.Text.Trim()).ToList();
                if(lstFilm.Count > 0)
                {

                }
                else
                {

                }
            }
            else
            {

            }
        }
        tb1.Text = "SIMPLE";
    }

    protected void btnClickSpecifique(object sender, EventArgs e)
    {
        tb1.Text = "SPECIFIQUE";
    }
}