<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    private static readonly Route[] Routes =
        {
            new Route("ConnexionRoute", "", "~/Pages/Connexion.aspx"),
            new Route("DeconnexionRoute", "Deconnexion", "~/Actions/Deconnexion.aspx"),
            new Route("CatalogueRoute", "Catalogue/{page}", "~/Pages/DVDTousLesUtilisateurs.aspx"),
            new Route("DVDRoute", "DVD/{id}/{idUtil}/{noExemp}", "~/Pages/AffichageDesDonneesDetaillesDunDVD.aspx"),
            new Route("UtilRoute", "Utilisateur/{page}/{indexDdl}", "~/Pages/DVDAutreUtil.aspx"),
            new Route("MesDVDSRoute", "MesDVD/{id}", "~/Pages/affichageDVDEnMain.aspx"),
            new Route("AjoutDVDRoute", "DVDAjout/Ajouter", "~/Pages/AjoutDVD.aspx"),
            new Route("MessagerieRoute", "Messagerie/{id}/{action}", "~/Pages/EnvoiCourriel.aspx"),
            new Route("GestionUtilisateur", "GestionUtilisateur", "~/Pages/GestionUtilisateurs.aspx"),
            new Route("AjoutUtilisateur", "Utilisateur/Ajout", "~/Pages/GestionUtilisateurs.aspx"),
            new Route("ModifUtilisateur", "Utilisateur/Modifier/{id}", "~/Pages/GestionUtilisateurs.aspx"),
            new Route("MonCompte", "MonCompte", "~/Pages/PersonnalisationEnv.aspx"),
            new Route("ModifDVD", "modifDVD/{id}", "~/Pages/ModificationDVD.aspx"),
        };

    void Application_Start(object sender, EventArgs e)
    {
        RegisterRoutes(RouteTable.Routes);
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    void RegisterRoutes(RouteCollection routes)
    {
        routes.RouteExistingFiles = false;

        foreach (var route in Routes)
        {
            routes.MapPageRoute(route.Nom, route.Url, route.Fichier, false);
        }
    }

    class Route
    {
        public string Nom { get; set; }
        public string Url { get; set; }
        public string Fichier { get; set; }

        public Route(string nom, string url, string fichier)
        {
            Nom = nom;
            Url = url;
            Fichier = fichier;
        }
    }
</script>
