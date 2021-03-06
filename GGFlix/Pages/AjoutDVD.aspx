﻿<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutDVD.aspx.cs" Inherits="Pages_AjoutDVD" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
     <asp:Panel runat="server" ID="MainContent">
    <asp:Panel ID="pnApercu" Visible="False" CssClass="alert alert-info" runat="server">
        <asp:LinkButton ID="btnApercu" OnClick="ApercuCourriel" Text="Voir l'apercu du courriel envoyé" runat="server"/>
    </asp:Panel>
    <div class="mt-3">
        <div class="container-fluid">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="col text-center">
                    <div class="form-group ">
                        <asp:Label ID="lblTypeAjout" Text="Mode d'ajout : " runat="server" />
                        <asp:DropDownList ID="typeAjout" AutoPostBack="true" runat="server" OnSelectedIndexChanged="afficheDIV">
                            <asp:ListItem Value="0" Text="Abrégé" />
                            <asp:ListItem Value="1" Text="Complet" />
                        </asp:DropDownList>

                        <asp:DropDownList ID="AjoutPour" runat="server" Visible="false" />
                    </div>
                    <div id="divAbrege" runat="server" class="form-group jumbotron">
                        <asp:Label ID="Label1" runat="server" Text="Film #1 : " />
                        <asp:TextBox ID="tb1" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Film #2 : " />
                        <asp:TextBox ID="tb2" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Film #3 : " />
                        <asp:TextBox ID="tb3" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Film #4 : " />
                        <asp:TextBox ID="tb4" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Film #5 : " />
                        <asp:TextBox ID="tb5" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Film #6 : " />
                        <asp:TextBox ID="tb6" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Film #7 : " />
                        <asp:TextBox ID="tb7" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Film #8 : " />
                        <asp:TextBox ID="tb8" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Film #9 : " />
                        <asp:TextBox ID="tb9" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Film #10: " />
                        <asp:TextBox ID="tb10" runat="server" MaxLength="50"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                    <div id="divComplet" runat="server" class="form-group" visible="false">
                        <div class="card">
                            <div class="card-body">
                                <div class="row" style="margin-left: 10%">
                                    <div class="col-xs-2 col-md-2" style="align-items: center;">
                                        <asp:Image ID="imageFilm" Style="margin:auto;display:block;" CssClass="img-responsive" ImageUrl="/Static/img/block.jpg" AlternateText="imagePlaceHolder" Width="140px" Height="208px" runat="server" />
                                        <br />
                                        <asp:FileUpload ID="FileUpload" runat="server"/><br />
                                       <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Afficher l'image"  OnClick="afficherImage_Click"  /><br />
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
                                        <asp:Label ID="lblXtra" Text="Xtra" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblResume" Text="Résumé du film" runat="server" Style="font-size: initial" CssClass="row" Height="26px" />
                                    </div>
                                    <div class="col-xs-2 col-md-2">
                                        <asp:TextBox ID="TitreFrancais" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50" /><br />
                                        <asp:TextBox ID="TitreOriginal" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/><br />
                                        <asp:TextBox ID="NomProducteur" Text="" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br />
                                        <asp:TextBox ID="NomRealisateur" Text="" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br />
                                        <asp:TextBox ID="AnneeSortie" runat="server" TextMode="Number" Width="100%" CssClass="row" Height="26px" min="1895" MaxLength="4" /><br />
                                        <asp:TextBox ID="tbCategorie" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></> <br />
                                        <asp:TextBox ID="DureeFilm" TextMode="Number"  CssClass="row" runat="server" Height="26px" min="0" max="9999" step="1" MaxLength="4" Width="100%" /><br />
                                        <asp:TextBox ID="tbFormat" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="50"/></><br />
                                        <asp:TextBox ID="tbNbDisques" TextMode="Number" Width="100%" CssClass="row" Height="26px" runat="server" min="1" max="9999" step="1" MaxLength="4" /><br />
                                        <asp:TextBox ID="tbXtra" runat="server" Width="100%" CssClass="row" Height="26px" MaxLength="255"/></><br />
                                            <asp:TextBox TextMode="multiline" runat="server" Style="width:100%;text-wrap:normal;font-size:initial;height: 200px;" CssClass="row" ID="Resume"></asp:TextBox>

                                    </div>

                                    <div class="col-xs-1 col-md-2">
                                        <asp:Label ID="lblNomActeurs" Text="Acteur/Actrice" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
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
                                        <asp:Label ID="lblSousTitre" Text="Sous-titres" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
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
                                        <asp:Label ID="lblDVDOriginal" Text="DVD Original" runat="server" Style="font-size: initial" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:Label ID="lblVersionEtendue" Text="Version étendue" Style="font-size: initial" CssClass="row" Height="26px" runat="server" /><br />
                                        <br />
                                    </div>

                                    <div class="col-xs-2 col-md-2">
                                        <asp:TextBox ID="tbNomActeur1" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/> est une femme <asp:CheckBox ID="estFemme1" runat="server" /><br />
                                        <asp:TextBox ID="tbNomActeur2" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/> est une femme <asp:CheckBox ID="estFemme2" runat="server" /><br />
                                        <asp:TextBox ID="tbNomActeur3" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/> est une femme <asp:CheckBox ID="estFemme3" runat="server" /><br />
                                        <asp:TextBox ID="tbSupplement1" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/><br />
                                        <asp:TextBox ID="tbSupplement2" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/><br />
                                        <asp:TextBox ID="tbSupplement3" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="50"/><br />
                                        <asp:TextBox ID="tbSousTitre1" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:TextBox ID="tbSousTitre2" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:TextBox ID="tbSousTitre3" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:TextBox ID="tbLangue1" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:TextBox ID="tbLangue2" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:TextBox ID="tbLangue3" runat="server" Style="font-size: initial" Width="100%" CssClass="row" Height="26px" MaxLength="10"/><br />
                                        <asp:CheckBox ID="DVDOriginal" runat="server" CssClass="row" Height="26px" /><br />
                                        <br />
                                        <asp:CheckBox ID="VersionEtendue" runat="server" CssClass="row" Height="26px" /><br />
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="lblErreur" runat="server" Visible="false" style="color:red"/><br />
        <asp:Label ID="lblGood" runat="server" Visible="false" style="color:green" /><br />
        <asp:Button ID="btnAjouter" CssClass="btn btn-primary" Text="Ajouter" runat="server" />          
                        <asp:button id="backButton" runat="server" text="Retour"  CssClass="btn btn-danger"></asp:button>
                </div>
                <asp:HiddenField ID="hidFilms" runat="server"/>
            </div>

        </div>
    </div>

         </asp:Panel>
</asp:Content>
