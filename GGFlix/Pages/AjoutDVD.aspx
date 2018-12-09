<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutDVD.aspx.cs" Inherits="Pages_AjoutDVD" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
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
                    </div>
                    <div id="divAbrege" runat="server" class="form-group jumbotron">
                        <asp:Label ID="Label1" runat="server" Text="Film #1 : " />
                        <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Film #2 : " />
                        <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Film #3 : " />
                        <asp:TextBox ID="tb3" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Film #4 : " />
                        <asp:TextBox ID="tb4" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Film #5 : " />
                        <asp:TextBox ID="tb5" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Film #6 : " />
                        <asp:TextBox ID="tb6" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Film #7 : " />
                        <asp:TextBox ID="tb7" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Film #8 : " />
                        <asp:TextBox ID="tb8" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Film #9 : " />
                        <asp:TextBox ID="tb9" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Film #10: " />
                        <asp:TextBox ID="tb10" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </div>
                    <div id="divComplet" runat="server" class="form-group" visible="false">
                        <div class="card">
                            <div class="jumbotron">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row" style="margin-left: 15%">
                                            <div class="col-xs-2 col-md-3 d-flex flex-wrap align-items-center">
                                                <img class="img-responsive " width="100%" height="auto" src="/Static/img/181201.jpg" alt="prewiew">
                                            </div>
                                            <div class="col-xs-4 col-md-4">
                                                <h4 class="product-name"></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblAnneeSortie" AssociatedControlID="AnneeSortie" Text="Année de sortie" runat="server" />
                                                    <asp:TextBox ID="AnneeSortie" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblCategorieFilm" Text="Catégorie" AssociatedControlID="categorieddl" runat="server" />
                                                    <asp:DropDownList ID="categorieddl" runat="server">
                                                    </asp:DropDownList></small>
                                                </h4>
                                                <h4><small>
                                                    <asp:Label ID="lblDerniereMiseJourLe" AssociatedControlID="DerniereMiseJourLe" Text="Dernière mise à jour le" runat="server" /><asp:TextBox ID="DerniereMiseJourLe" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblDerniereMiseJourPar" AssociatedControlID="DerniereMiseJourPar" Text="Dernière mise à jour par" runat="server" /><asp:TextBox ID="DerniereMiseJourPar" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblDescriptionSupplementDispo" AssociatedControlID="DescriptionSupplementDispo" Text="Description de trois suppléments disponibles" runat="server" />
                                                    <asp:DropDownList ID="DescriptionSupplementDispo" runat="server">
                                                    </asp:DropDownList>
                                                </small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblDureeFilm" AssociatedControlID="DureeFilm" Text="Durée du film" runat="server" />
                                                    <asp:TextBox ID="DureeFilm" TextMode="Number" runat="server" min="0" max="400" step="1" MaxLength="3" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblDVDOriginal" AssociatedControlID="DVDOriginal" Text="Est-ce un dvd original" runat="server" /><asp:CheckBox ID="DVDOriginal" runat="server" /></small></h4>
                                                <asp:Label ID="lblResume" AssociatedControlID="Resume" Text="Résumé du film" runat="server" />
                                                <div style="overflow: auto;">
                                                    <asp:TextBox TextMode="multiline" runat="server" Style="width: 400px; height: 200px;" ID="Resume"></asp:TextBox>

                                                </div>

                                            </div>
                                            <div class="col-xs-6 col-md-4">
                                                <h4><small>
                                                    <asp:Label ID="lblNomProducteur" AssociatedControlID="NomProducteur" Text="Nom du producteur" runat="server" /><asp:TextBox ID="NomProducteur" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblNomRealisateur" AssociatedControlID="NomRealisateur" Text="Nom du réalisateur" runat="server" /><asp:TextBox ID="NomRealisateur" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblNomActeurs" AssociatedControlID="NomActeurs" Text="Nom des trois princiaux acteurs/actrices" runat="server" /><asp:DropDownList ID="NomActeurs" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblSousTitre" AssociatedControlID="SousTitre" Text="Sous-Titres" runat="server" />
                                                    <asp:DropDownList ID="SousTitre" runat="server">
                                                    </asp:DropDownList></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblTitreFrancais" AssociatedControlID="TitreFrancais" Text="Titre-français" runat="server" /><asp:TextBox ID="TitreFrancais" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblTitreOriginal" AssociatedControlID="TitreOriginal" Text="Titre original" runat="server" /><asp:TextBox ID="TitreOriginal" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblProprietaire" AssociatedControlID="Proprietaire" Text="Utilisateur ayant acheté le DVD (propriétaire)" runat="server" /><asp:TextBox ID="Proprietaire" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblEmprunteur" AssociatedControlID="Emprunteur" Text="Utilisateur ayant le DVD en main (emprunteur)" runat="server" /><asp:TextBox ID="Emprunteur" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblVersionEtendue" AssociatedControlID="VersionEtendue" Text="Version étendue ?" runat="server" /><asp:CheckBox ID="VersionEtendue" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblVisibleTous" AssociatedControlID="VisibleTous" Text="Visible à tous ?" runat="server" /><asp:CheckBox ID="VisibleTous" runat="server" /></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblFormat" AssociatedControlID="txtFormat" Text="Format" runat="server" />
                                                    <asp:DropDownList ID="txtFormat" runat="server">
                                                    </asp:DropDownList></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblLangue" AssociatedControlID="txtLangue" Text="Langue" runat="server" />
                                                    <asp:DropDownList ID="txtLangue" runat="server">
                                                    </asp:DropDownList></small></h4>
                                                <h4><small>
                                                    <asp:Label ID="lblNbDisques" AssociatedControlID="tbNbDisques" Text="Nombre de disques" runat="server" />
                                                    <asp:TextBox ID="tbNbDisques" TextMode="Number" runat="server" min="0" max="15" step="1" MaxLength="2" /></small></h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <asp:Button ID="btnAjouter" Text="Ajouter" runat="server"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
