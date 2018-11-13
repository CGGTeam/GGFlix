<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AffichageDesDonneesDetaillesDunDVD.aspx.cs" Inherits="AffichageDesDonneesDetaillesDunDVD" Culture="fr-FR" %>
<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">

<head>
    <title>DVD Express</title>
    
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


</head>
<body>
	<div class="card">
		<div class="card-body">
		    <div class="row" style="margin-left: 15%">
		        <div class="col-xs-2 col-md-3">
		            <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		        </div>
		        <div class="col-xs-4 col-md-4">
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
		         <div class="col-xs-6 col-md-4">
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
	<br/>
	 <div align="center">
		<a href="/Catalogue/1" class="btn btn-success">Afficher liste de DVD</a>
	</div>
</body>
</html>
</asp:Content>