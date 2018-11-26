<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

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
        routes.MapPageRoute("ConnexionRoute", "", "~/Pages/Connexion.aspx");
        routes.MapPageRoute("DeconnexionRoute", "Deconnexion", "~/Actions/Deconnexion.aspx");
        routes.MapPageRoute("CatalogueRoute", "Catalogue/{page}", "~/Pages/DVDTousLesUtilisateurs.aspx");
        routes.MapPageRoute("DVDRoute", "DVD/{id}/{idUtil}/{noExemp}", "~/Pages/AffichageDesDonneesDetaillesDunDVD.aspx");
        routes.MapPageRoute("UtilRoute", "Utilisateur/{page}/{indexDdl}", "~/Pages/DVDAutreUtil.aspx");
        routes.MapPageRoute("MesDVDSRoute", "MesDVD/{id}", "~/Pages/affichageDVDEnMain.aspx");
        routes.MapPageRoute("AjoutDVDRoute", "DVDAjout/Ajouter", "~/Pages/AjoutDVD.aspx");
        routes.MapPageRoute("MessagerieRoute", "Messagerie/{id}", "~/Pages/EnvoiCourriel.aspx");
        routes.MapPageRoute("GestionUtilisateur", "GestionUtilisateur", "~/Pages/GestionUtilisateurs.aspx");
        routes.MapPageRoute("MonCompte", "MonCompte", "~/Pages/PersonnalisationEnv.aspx");
        routes.MapPageRoute("ModifDVD", "modifDVD/{id}", "~/Pages/ModificationDVD.aspx");
    }
</script>
