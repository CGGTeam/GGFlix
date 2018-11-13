<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutDVD.aspx.cs" Inherits="Pages_AjoutDVD" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="mt-3">
        <div class="container">
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
                        <br /><br />
                        <asp:Label ID="Label5" runat="server" Text="Film #5 : " />
                        <asp:TextBox ID="tb5" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label6" runat="server" Text="Film #6 : " />
                        <asp:TextBox ID="tb6" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label7" runat="server" Text="Film #7 : " />
                        <asp:TextBox ID="tb7" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label8" runat="server" Text="Film #8 : " />
                        <asp:TextBox ID="tb8" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label9" runat="server" Text="Film #9 : " />
                        <asp:TextBox ID="tb9" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label10" runat="server" Text="Film #10: " />
                        <asp:TextBox ID="tb10" runat="server"></asp:TextBox>
                        <br /><br />
                     </div>
                    <div id="divComplet" runat="server" class="form-group" visible="false">
                        	<div class="card">
		<div class="jumbotron">
		    <div class="row" style="margin-left: 15%">
		        <div class="col">
		            <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		        </div>
		        <div class="col">
		            <h4 class="product-name"><small><asp:Label id="lblnomDVD" AssociatedControlId="nomDVD" Text="Nom du DVD" runat="server"/>
                        <asp:TextBox id="nomDVD" runat="server" /></small></h4>
		            <h4><small><asp:Label id="lblAnneeSortie" AssociatedControlId="AnneeSortie" Text="Année de sortie" runat="server"/>
                        <asp:TextBox id="AnneeSortie" runat="server" /></small></h4>
		            <h4><small><asp:Label id="lblCategorieFilm" Text="Catégorie" AssociatedControlId="CategorieFilm" runat="server"/><asp:TextBox id="CategorieFilm" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDerniereMiseJourLe" AssociatedControlId="DerniereMiseJourLe" Text="Dernière mise à jour le" runat="server"/><asp:TextBox id="DerniereMiseJourLe" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDerniereMiseJourPar" AssociatedControlId="DerniereMiseJourPar" Text="Dernière mise à jour par" runat="server"/><asp:TextBox id="DerniereMiseJourPar" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDescriptionSupplementDispo" AssociatedControlId="DescriptionSupplementDispo" Text="Description de trois suppléments disponibles DDL" runat="server"/><asp:DropDownList id="DescriptionSupplementDispo" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDureeFilm" AssociatedControlId="DureeFilm" Text="Durée du film" runat="server"/><asp:TextBox id="DureeFilm" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDVDOriginal" AssociatedControlId="DVDOriginal" Text="Est-ce un dvd original" runat="server"/><asp:CheckBox id="DVDOriginal" runat="server" /></small></h4>
		        </div>
		         <div class="col">
                	<h4><small><asp:Label id="lblNomProducteur" AssociatedControlId="NomProducteur" Text="Nom du producteur" runat="server"/><asp:TextBox id="NomProducteur" runat="server" /></small></h4>
		            <h4><small><asp:Label id="lblNomRealisateur" AssociatedControlId="NomRealisateur" Text="Nom du réalisateur" runat="server"/><asp:TextBox id="NomRealisateur" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblNomActeurs" AssociatedControlId="NomActeurs" Text="Nom des trois princiaux acteurs/actrices" runat="server"/><asp:DropDownList id="NomActeurs" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblResume" AssociatedControlId="Resume" Text="Résumé du film" runat="server"/><asp:TextBox id="Resume" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblSousTitre" AssociatedControlId="SousTitre" Text="Sous-Titres" runat="server"/><asp:DropDownList id="SousTitre" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblTitreFrancais" AssociatedControlId="TitreFrancais" Text="Titre-français" runat="server"/><asp:DropDownList id="TitreFrancais" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblTitreOriginal" AssociatedControlId="TitreOriginal" Text="Titre original" runat="server"/><asp:DropDownList id="TitreOriginal" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblProprietaire" AssociatedControlId="Proprietaire" Text="Utilisateur ayant acheté le DVD (propriétaire)" runat="server"/><asp:DropDownList id="Proprietaire" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblEmprunteur" AssociatedControlId="Emprunteur" Text="Utilisateur ayant le DVD en main (emprunteur)" runat="server"/><asp:DropDownList id="Emprunteur" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblVersionEtendue" AssociatedControlId="VersionEtendue" Text="Version étendue ?" runat="server"/><asp:CheckBox id="VersionEtendue" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblVisibleTous" AssociatedControlId="VisibleTous" Text="Visible à tous ?" runat="server"/><asp:CheckBox id="VisibleTous" runat="server" /></small></h4>
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
