<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AffichageDesDonneesDetaillesDunDVD.aspx.cs" Inherits="AffichageDesDonneesDetaillesDunDVD" Culture="fr-FR" %>
<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css" />
    <meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    
    <script type="text/javascript">
    function confirmerAppropriation() {
        var Result = confirm("Êtes-vous certain de vouloir vous appropriez ce dvd?");
        if (Result == true) {
            __doPostBack('txtConfirmRetour', "Approprier"); //sending back to server.
            return true;
        }
        else 
        {

             return false;
        }
    }
    </script> 
</asp:Content>

 

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <asp:Panel ID="unBloc" CssClass="mt-3" runat="server">
        <div class="container-fluid">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="col text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="row" style="margin-left: 10%">
                                    <div class="col-xs-2 col-md-2" style="align-items: center;">
                                        <div class="form-group ">
                                            <asp:Label ID="lblAppropriation" Text="Appropriation pour : " runat="server" />
                                            <asp:DropDownList ID="AppropriationPour" runat="server" Visible="false" />
                                        </div>
                                        <asp:Image ID="imageFilm" CssClass="img-responsive" Style="margin:auto;display:block;" AlternateText="imagePlaceHolder" Width="140px" Height="208px" runat="server" />
                                        <br />
                                        <asp:Label ID="lblProprio" runat="server" Width="100%" Style="font-size: initial" /><br />
                                        <asp:Label ID="lblEmprunteur" runat="server" Width="100%" Style="font-size: initial" /><br />
                                        <asp:Label ID="lblUtilisateurMAJ" runat="server" Width="100%" Style="font-size: initial" /><br />
                                        <asp:Label ID="lblDateMAJ" runat="server" Width="100%" Style="font-size: initial" /><br />
                                            <br />
                                    </div>
                                    <div class="col-xs-1 col-md-2">
                                        <asp:Label ID="lblTitreFrancais" Text="Titre français" runat="server" Style="font-size: initial" CssClass="row" Height="26px"/><br />
                                        <br />
                                        <asp:Label ID="lblTitreOriginal" Text="Titre original" Style="font-size: initial" runat="server" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblNomProducteur" Text="Producteur" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />

                                        <asp:Label ID="lblNomRealisateur" Text="Réalisateur" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblAnneeSortie" Text="Année de sortie" Style="font-size: initial" runat="server" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblCategorieFilm" Text="Catégorie" Style="font-size: initial" runat="server" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblDureeFilm" Text="Durée du film" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblFormat" Text="Format" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />                                        
                                        <asp:Label ID="lblNbDisques" Text="Nombre de disques" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblResume" Text="Résumé du film" runat="server" Style="font-size: initial" CssClass="row" Height="26px" />
                                    </div>
                                    <div class="col-xs-2 col-md-2">
                                        <asp:Label ID="TitreFrancais" Style="font-size: initial" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50" /><br /><br />
                                        <asp:Label ID="TitreOriginal" Style="font-size: initial" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/><br /><br />
                                        <asp:Label ID="NomProducteur" Style="font-size: initial" Text="" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br /><br />
                                        <asp:Label ID="NomRealisateur" Style="font-size: initial" Text="" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br /><br />
                                        <asp:Label ID="AnneeSortie" Style="font-size: initial" runat="server" TextMode="Number" Width="100%" CssClass="row" Height="26px" min="1895" MaxLength="4" /><br /><br />
                                        <asp:Label ID="tbCategorie" Style="font-size: initial" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/> <br /><br />
                                        <asp:Label ID="DureeFilm" Style="font-size: initial" TextMode="Number"  CssClass="row" runat="server" Height="26px" min="0" max="9999" step="1" MaxLength="4" Width="100%" /><br /><br />
                                        <asp:Label ID="tbFormat" Style="font-size: initial" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br /><br />
                                        <asp:Label ID="tbNbDisques" Style="font-size: initial" TextMode="Number" Width="100%" CssClass="row" Height="26px" runat="server" min="1" max="9999" step="1" MaxLength="4" /><br /><br />
                                            <asp:Label TextMode="multiline" runat="server" Style="width:100%;text-wrap:normal;font-size:initial" CssClass="row" ID="Resume"></asp:Label>

                                    </div>

                                    <div class="col-xs-1 col-md-2">
                                        <asp:Label ID="lblNomActeurs" Text="Acteur/Actrice" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Label ID="lblDescriptionSupplementDispo" Style="font-size: initial" Text="Suppléments" runat="server" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Label ID="lblSousTitre" Text="Sous-titres" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Label ID="lblLangue" Text="Langue" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <asp:Label ID="lblDVDOriginal" Text="DVD Original" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblVersionEtendue" Text="Version étendue" Style="font-size: initial" CssClass="row" Height="26px" runat="server" /><br />
                                        <br />
                                    </div>

                                    <div class="col-xs-2 col-md-2">
                                        <asp:Label ID="tbNomActeur1" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /> est une femme <asp:CheckBox Enabled="false" ID="estFemme1" runat="server" /><br />
                                        <asp:Label ID="tbNomActeur2" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /> est une femme <asp:CheckBox Enabled="false" ID="estFemme2" runat="server" /><br />
                                        <asp:Label ID="tbNomActeur3" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /> est une femme <asp:CheckBox Enabled="false" ID="estFemme3" runat="server" /><br /><br />
                                        <asp:Label ID="tbSupplement1" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /><br />
                                        <asp:Label ID="tbSupplement2" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /><br />
                                        <asp:Label ID="tbSupplement3" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="50"/><br /><br />
                                        <asp:Label ID="tbSousTitre1" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br />
                                        <asp:Label ID="tbSousTitre2" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br />
                                        <asp:Label ID="tbSousTitre3" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br />
                                        <asp:Label ID="tbLangue1" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br />
                                        <asp:Label ID="tbLangue2" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br />
                                        <asp:Label ID="tbLangue3" runat="server" Width="100%" Style="font-size: initial" CssClass="row" Height="26px" MaxLength="10"/><br /><br /><br />
                                        <asp:CheckBox ID="DVDOriginal" runat="server" CssClass="row" Height="26px" Enabled="false"/><br /><br />
                                        <asp:CheckBox ID="VersionEtendue" runat="server" CssClass="row" Height="26px" Enabled="false"/><br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    <br /><asp:button id="btnConfirmerAppropriation" runat="server" text="Confirmer l'appropriation"  CssClass="btn btn-info"
                        OnClientClick="confirmerAppropriation()" Visible="false"></asp:button>
                        <asp:button id="backButton" runat="server" text="Retour"  CssClass="btn btn-danger"
                        PostBackUrl="~/Catalogue/1"></asp:button>
                    </div>

            </div>

        </div>
</asp:Panel>
</asp:Content>
