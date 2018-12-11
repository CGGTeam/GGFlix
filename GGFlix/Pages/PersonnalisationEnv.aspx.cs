using LibrairieBD.Dao;
using LibrairieBD.Entites;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_PersonnalisationEnv : System.Web.UI.Page
{
    private GenericDao<Utilisateur> utilDao = Persistance.GetDao<Utilisateur>();
    private GenericDao<ValeurPreference> valeurPrefDao = Persistance.GetDao<ValeurPreference>();
    private GenericDao<UtilisateurPreference> utilPrefDao = Persistance.GetDao<UtilisateurPreference>();
    Utilisateur currentUser = null;
    private String id = "";
    private string strCBApprop = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = HttpContext.Current.User.Identity.Name;
        currentUser = utilDao.Find(new Utilisateur { NomUtilisateur = id })[0];
        if (Page.IsPostBack)
        {     

            List<ValeurPreference> laValeurEnvoiAjout = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(3)).ToList();
            if (laValeurEnvoiAjout.Count > 0)
            {                    
                ValeurPreference valeurPref = laValeurEnvoiAjout.First();
                valeurPref.Valeur = cbCourrielAjout.Checked.ToString();
                valeurPrefDao.Save(valeurPref);
            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 3 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 3, Valeur = cbCourrielAjout.Checked.ToString() };
                valeurPrefDao.Save(valeurPref);
            }
            

            List<ValeurPreference> laValeurEnvoiApprop = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(4)).ToList();
            if (laValeurEnvoiApprop.Count > 0)
            {               
                ValeurPreference valeurPref = laValeurEnvoiApprop.First();
                valeurPref.Valeur = cbCourrielApprop.Checked.ToString();
                valeurPrefDao.Save(valeurPref);               
            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 4 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 4, Valeur = cbCourrielApprop.Checked.ToString() };
                valeurPrefDao.Save(valeurPref);                
            }
            List<ValeurPreference> laValeurEnvoiSupp = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(5)).ToList();
            if (laValeurEnvoiSupp.Count > 0)
            {                
                ValeurPreference valeurPref = laValeurEnvoiSupp.First();
                valeurPref.Valeur = cbCourrielRetrait.Checked.ToString();
                valeurPrefDao.Save(valeurPref);
            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 5 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 5, Valeur = cbCourrielRetrait.Checked.ToString() };
                valeurPrefDao.Save(valeurPref);
            }

            if (cbRetirerImg.Checked)
            {
                List<ValeurPreference> laValeurImageBackground = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(6)).ToList();
                if (laValeurImageBackground.Count > 0)
                {
                    ValeurPreference valeurPref = laValeurImageBackground.First();
                    valeurPref.Valeur = "";
                    valeurPrefDao.Save(valeurPref);
                }
            }
          
            List<ValeurPreference> lesValeursPrefs = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(7)).ToList();
            if (lesValeursPrefs.Count > 0)
            {
                ValeurPreference valeurPref = lesValeursPrefs.First();
                valeurPref.Valeur = ddlNbDvdAffiche.SelectedValue;
                valeurPrefDao.Save(valeurPref);

            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 7 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 7, Valeur = ddlNbDvdAffiche.SelectedValue };
                valeurPrefDao.Save(valeurPref);
            }


            List<ValeurPreference> laValeurCouleurFond = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(1)).ToList();
            if (laValeurCouleurFond.Count > 0)
            {                
                ValeurPreference valeurPref = laValeurCouleurFond.First();
                valeurPref.Valeur = ddlCouleurFond.SelectedValue;
                valeurPrefDao.Save(valeurPref);
            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 1 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 1, Valeur = ddlCouleurFond.SelectedValue };
                valeurPrefDao.Save(valeurPref);
            }


            List<ValeurPreference> laValeurCouleurTexte = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(2)).ToList();
            if (laValeurCouleurTexte.Count > 0)
            {
                ValeurPreference valeurPref = laValeurCouleurTexte.First();
                valeurPref.Valeur = ddlCouleurTexte.SelectedValue;
                valeurPrefDao.Save(valeurPref);

            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 2 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 2, Valeur = ddlCouleurTexte.SelectedValue };
                valeurPrefDao.Save(valeurPref);
            }


        }
        remplireDDLCouleur(ddlCouleurFond);
        remplireDDLCouleur(ddlCouleurTexte);
        remplirNbPages(ddlNbDvdAffiche);
        btnModifier.Click += new EventHandler(validationPreferences);
        btnUpload.Click += new EventHandler(afficherImage_Click);
        lesValeursEnvironnement();
    }  

    private void validationPreferences(object sender, EventArgs e)
    {

        currentUser.MotPasse = int.Parse(tbMdeP.Text);
        utilDao.Save(currentUser);        

    }
    private void afficherImage_Click(object sender, EventArgs e)
    {
        if (FileUpload.HasFile)
        {
            FileUpload.SaveAs(MapPath("/Static/img/" + FileUpload.FileName));
            List<ValeurPreference> laValeurImageBackground = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(6)).ToList();
            if (laValeurImageBackground.Count > 0)
            {
                ValeurPreference valeurPref = laValeurImageBackground.First();
                valeurPref.Valeur = FileUpload.FileName;
                valeurPrefDao.Save(valeurPref);
            }
            else
            {
                UtilisateurPreference utilPref = new UtilisateurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 6 };
                utilPrefDao.Save(utilPref);
                ValeurPreference valeurPref = new ValeurPreference { NoUtilisateur = currentUser.NoUtilisateur, NoPreference = 6, Valeur = FileUpload.FileName };
                valeurPrefDao.Save(valeurPref);
            }
            lesValeursEnvironnement();
        }
    }
    

    protected void lesValeursEnvironnement()
    {
        tbMdeP.Attributes.Add("value", currentUser.MotPasse.ToString());

        List<ValeurPreference> lesValeursPrefs = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(7)).ToList();
        if (lesValeursPrefs.Count > 0)
        {
            ddlNbDvdAffiche.SelectedValue = lesValeursPrefs.First().Valeur;
        }
        else
            ddlNbDvdAffiche.SelectedValue = "10";

        List<ValeurPreference> laValeurImageBackground = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(6)).ToList();
        List<ValeurPreference> laValeurCouleurFond = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(1)).ToList();
        if (laValeurImageBackground.Count > 0 && laValeurImageBackground.First().Valeur != "")
        {
            MainContent.Attributes.Add("style", " background-image: url('" + "/Static/img/" + laValeurImageBackground.First().Valeur + "');");           
            ddlCouleurFond.SelectedValue = laValeurCouleurFond.First().Valeur;
            cbRetirerImg.Visible = true;
            cbRetirerImg.Checked = false;
        }
        else
        {            
            if (laValeurCouleurFond.Count > 0)
            {
                ddlCouleurFond.SelectedValue = laValeurCouleurFond.First().Valeur;
                MainContent.Attributes.Add("style","background-color:"+ laValeurCouleurFond.First().Valeur);
            }
            cbRetirerImg.Visible = false;
        }

        List<ValeurPreference> laValeurCouleurTexte = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(2)).ToList();
        if (laValeurCouleurTexte.Count > 0)
        {
            MainContent.Style.Add("color", laValeurCouleurTexte.First().Valeur);
            ddlCouleurTexte.SelectedValue = laValeurCouleurTexte.First().Valeur;
        }

        List<ValeurPreference> laValeurEnvoiAjout = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(3)).ToList();
        if (laValeurEnvoiAjout.Count > 0)
        {
            string strChecked = laValeurEnvoiAjout.First().Valeur.ToString() == "1" ? "true" : "false";
            cbCourrielAjout.Checked = Convert.ToBoolean(strChecked);
        }

        List<ValeurPreference> laValeurEnvoiApprop = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(4)).ToList();
        if (laValeurEnvoiApprop.Count > 0)
        {
            string strChecked = laValeurEnvoiApprop.First().Valeur.ToString() == "1" ? "true" : "false";
            cbCourrielApprop.Checked = Convert.ToBoolean(strChecked);
        }

        List<ValeurPreference> laValeurEnvoiSupp = valeurPrefDao.FindAll().Where(v => v.NoUtilisateur.Equals(currentUser.NoUtilisateur) && v.NoPreference.Equals(5)).ToList();
        if (laValeurEnvoiSupp.Count > 0)
        {
            string strChecked = laValeurEnvoiSupp.First().Valeur.ToString() == "1" ? "true" : "false";
            cbCourrielRetrait.Checked = Convert.ToBoolean(strChecked);
        }


    }



protected void remplireDDLCouleur(DropDownList dropDownList)
    {
        dropDownList.Items.Clear();
        dropDownList.Items.Insert(0, new ListItem("Noir", "Black"));
        dropDownList.Items.Insert(1, new ListItem("Vert", "Green"));
        dropDownList.Items.Insert(2, new ListItem("Bleu", "Blue"));
        dropDownList.Items.Insert(3, new ListItem("Rouge", "Red"));
        dropDownList.Items.Insert(3, new ListItem("Jaune", "Yellow"));
    }

    protected void remplirNbPages(DropDownList dropDownList)
    {
        for(int i =1 ; i <= 20; i++)
        {
            string strValeurs = (i*5).ToString();            
            dropDownList.Items.Insert(i-1, new ListItem(strValeurs, strValeurs));
        }
    }

 
}