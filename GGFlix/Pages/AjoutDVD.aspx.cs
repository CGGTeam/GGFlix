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
    private GenericDao<Categorie> catDao = Persistance.GetDao<Categorie>();
    private GenericDao<SousTitre> soustitreDao = Persistance.GetDao<SousTitre>();
    private GenericDao<Acteur> actDao = Persistance.GetDao<Acteur>();
    private GenericDao<Langue> langDao = Persistance.GetDao<Langue>();
    private GenericDao<Format> formatDao = Persistance.GetDao<Format>();
    private GenericDao<Supplement> supplDao = Persistance.GetDao<Supplement>();
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
            LoadAjoutSpecifique();
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

        string strErreur = "";
        string strAjoutable = "";

        if (TitreFrancais.Text.Trim() == "")
        {
            strErreur += "<br />Le titre français ne peut pas être laissé vide;";
        }
        if ((NomActeurs1.SelectedValue == NomActeurs2.SelectedValue && NomActeurs1.SelectedValue != "") || (NomActeurs2.SelectedValue == NomActeurs3.SelectedValue && NomActeurs2.SelectedValue != "")|| (NomActeurs1.SelectedValue == NomActeurs3.SelectedValue && NomActeurs1.SelectedValue != "") )
        {
            strErreur += "<br />Le même acteur ne peut pas être choisi deux fois;";
        }
        if (DescriptionSupplementDispo1.SelectedValue == DescriptionSupplementDispo2.SelectedValue || DescriptionSupplementDispo2.SelectedValue == DescriptionSupplementDispo3.SelectedValue || DescriptionSupplementDispo1.SelectedValue == DescriptionSupplementDispo3.SelectedValue)
        {
            strErreur += "<br />Les mêmes suppléments ne peuvent pas être choisi deux fois;";
        }
        if (SousTitre1.SelectedValue == SousTitre2.SelectedValue || SousTitre2.SelectedValue == SousTitre3.SelectedValue || SousTitre1.SelectedValue == SousTitre3.SelectedValue)
        {
            strErreur += "<br />Les mêmes sous-titres ne peuvent pas être choisi deux fois;";
        }
        if (ddlLangue1.SelectedValue == ddlLangue2.SelectedValue || ddlLangue2.SelectedValue == ddlLangue3.SelectedValue || ddlLangue1.SelectedValue == ddlLangue3.SelectedValue)
        {
            strErreur += "<br />La même langue ne peut pas être choisi deux fois;";
        }
        if(strErreur != "")
        {
            lblErreur.Text = "Erreur : " + filmEnChaine(strErreur);
            lblErreur.Visible = true;
        }
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

    public void LoadAjoutSpecifique()
    {
        ListItem itemVide = new ListItem();

        NomActeurs1.Items.Clear();
        NomActeurs2.Items.Clear();
        NomActeurs3.Items.Clear();
        SousTitre1.Items.Clear();
        SousTitre2.Items.Clear();
        SousTitre3.Items.Clear();
        categorieddl.Items.Clear();
        ddlFormat.Items.Clear();
        ddlLangue1.Items.Clear();
        ddlLangue2.Items.Clear();
        ddlLangue3.Items.Clear();
        DescriptionSupplementDispo1.Items.Clear();
        DescriptionSupplementDispo2.Items.Clear();
        DescriptionSupplementDispo3.Items.Clear();

        NomActeurs1.Items.Add(itemVide);
        NomActeurs2.Items.Add(itemVide);
        NomActeurs3.Items.Add(itemVide);
        SousTitre1.Items.Add(itemVide);
        SousTitre2.Items.Add(itemVide);
        SousTitre3.Items.Add(itemVide);
        ddlLangue1.Items.Add(itemVide);
        ddlLangue2.Items.Add(itemVide);
        ddlLangue3.Items.Add(itemVide);
        categorieddl.Items.Add(itemVide);
        ddlFormat.Items.Add(itemVide);
        DescriptionSupplementDispo1.Items.Add(itemVide);
        DescriptionSupplementDispo2.Items.Add(itemVide);
        DescriptionSupplementDispo3.Items.Add(itemVide);

        foreach (Supplement suppl in supplDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = suppl.NoSupplement.ToString();
            item.Text = suppl.Description;
            DescriptionSupplementDispo1.Items.Add(item);
            DescriptionSupplementDispo2.Items.Add(item);
            DescriptionSupplementDispo3.Items.Add(item);
        }
        foreach (Acteur acteurs in actDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = acteurs.NoActeur.ToString();
            item.Text = acteurs.Nom;
            NomActeurs1.Items.Add(item);
            NomActeurs2.Items.Add(item);
            NomActeurs3.Items.Add(item);
        }
        foreach (SousTitre sousTitres in soustitreDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = sousTitres.NoSousTitre.ToString();
            item.Text = sousTitres.LangueSousTitre;
            SousTitre1.Items.Add(item);
            SousTitre2.Items.Add(item);
            SousTitre3.Items.Add(item);
        }
        foreach(Categorie cat in catDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = cat.NoCategorie.ToString();
            item.Text = cat.Description;
            categorieddl.Items.Add(item);
        }
        foreach(Langue lang in langDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = lang.NoLangue.ToString();
            item.Text = lang.DescLangue;
            ddlLangue1.Items.Add(item);
            ddlLangue2.Items.Add(item);
            ddlLangue3.Items.Add(item);
        }
        foreach(Format form in formatDao.FindAll().ToList())
        {
            ListItem item = new ListItem();
            item.Value = form.NoFormat.ToString();
            item.Text = form.Description;
            ddlFormat.Items.Add(item);
        }
    }

}