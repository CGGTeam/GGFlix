using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public partial class Pages_AjoutDVD : System.Web.UI.Page
{
    private GenericDao<Film> filmDao = Persistance.GetDao<Film>();
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private List<Film> lstFilm = new List<Film>();

    Utilisateur currentUser = null;
    String id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = HttpContext.Current.User.Identity.Name;
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
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
        lblErreur.Text = "";
        lblErreur.Visible = false;
        lblGood.Text = "";
        lblGood.Visible = false;

        string strErreur = "";
        string strAjoutable = "";
        
        int intTitreIllegal = 0;
        int intTitreOk = 0;

        for (int i = 1; i <= 10; i++)
        {
            
            TextBox tbEnCours = (TextBox)divAbrege.FindControl("tb" + i);
            if (tbEnCours.Text.Trim() != "")
            {
                lstFilm = filmDao.FindAll().Where(v => v.TitreFrancais == tbEnCours.Text.Trim()).ToList();
                if (lstFilm.Count > 0)
                {
                    intTitreIllegal++;
                    strErreur += tbEnCours.Text.Trim() + ";";
                    tbEnCours.Text = "";
                }
                else
                {
                    intTitreOk++;
                    strAjoutable += tbEnCours.Text.Trim()+";";

                    Film film = new Film();
                    film.TitreFrancais = tbEnCours.Text.Trim();
                    film.DateMAJ = DateTime.Now;
                    film.NoUtilisateurMAJ = currentUser.NoUtilisateur;
                    filmDao.Save(film);
                    tbEnCours.Text = "";
                }
            }
        }
        if (intTitreIllegal > 1)
        {
            lblErreur.Text = "Les films : " + filmEnChaine(strErreur) + " ne peuvent pas être ajoutés";
            lblErreur.Visible = true;
            messageLblGood(strAjoutable, intTitreOk);
        }
        else if(intTitreIllegal == 1)
        {
            lblErreur.Text = "Le film : " + filmEnChaine(strErreur) + " ne peut pas être ajouté";
            lblErreur.Visible = true;
            messageLblGood(strAjoutable, intTitreOk);
        }
        else
        {
            messageLblGood(strAjoutable, intTitreOk);
        }
    }

    protected void btnClickSpecifique(object sender, EventArgs e)
    {
        lblErreur.Text = "";
        lblErreur.Visible = false;
        lblGood.Text = "";
        lblGood.Visible = false;
        tb1.Text = "SPECIFIQUE";
    }

    //Fou méthode qui te donne la suite de film placé prêt-à-emporter
    public String filmEnChaine(string film)
    {
        string textFinal = "";
        string[] films = film.Split(';');
        for(int i = 0; i < films.Length-1; i++)
        {
            if(i== films.Length-2)
            {
                if(films.Length == 2)
                {
                    textFinal = films[0];
                }
                else
                {
                    textFinal += " et " + films[i];
                }
            }
            else if(i== films.Length - 3)
            {
                textFinal += films[i];
            }
            else if(i <= films.Length - 4)
            {
                textFinal += films[i]+", ";
            }
        }
        return textFinal;
        
    }

    public void messageLblGood(string strText, int nbFilms)
    {
        if(nbFilms >= 1)
        {
            if (nbFilms > 1)
            {
                lblGood.Text = "Les films : " + filmEnChaine(strText) + " sont ajoutés";
                lblGood.Visible = true;
            }
            else if (nbFilms == 1)
            {
                lblGood.Text = "Le film : " + filmEnChaine(strText) + "a été ajouté";
                lblGood.Visible = true;
            }
            // Un courriel doit être envoyé ici
        }
    }
}