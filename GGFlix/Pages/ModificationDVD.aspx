<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="ModificationDVD.aspx.cs" Inherits="Pages_ModificationDVD" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/connexion.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
	<div class="card">
		<div class="card-body">
		    <div class="row" style="margin-left: 15%">
		        <div class="col-xs-2 col-md-3 d-flex flex-wrap align-items-center">
		            <img class="img-responsive " width="75%" height="60%" src="/Static/img/181201.jpg" alt="prewiew">
		        </div>
		        <div class="col-xs-4 col-md-4">
		            <h4 class="product-name"></h4>
		            <h4><small><asp:Label id="lblAnneeSortie" AssociatedControlId="AnneeSortie" Text="Année de sortie" runat="server"/>
                        <asp:TextBox id="AnneeSortie" Text="2007" runat="server" /></small></h4>
		            <h4><small><asp:Label id="lblCategorieFilm" Text="Catégorie" AssociatedControlId="categorieddl" runat="server"/>
                        <asp:DropDownList id="categorieddl" runat="server" >
                             <asp:ListItem Text="Action" Value="0" />
                             <asp:ListItem Text="Comédie dramatique" Value="1" />
                             <asp:ListItem Text="Criminel" Value="2" />
                         </asp:DropDownList></small>
		            </h4>
                    <h4><small><asp:Label id="lblDerniereMiseJourLe" AssociatedControlId="DerniereMiseJourLe" Text="Dernière mise à jour le" runat="server"/><asp:TextBox id="DerniereMiseJourLe" Text="2018-11-14" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDerniereMiseJourPar" AssociatedControlId="DerniereMiseJourPar" Text="Dernière mise à jour par" runat="server"/><asp:TextBox id="DerniereMiseJourPar" Text="Nikola Jouanik" runat="server" /></small></h4>
                    <h4><small><asp:Label id="lblDescriptionSupplementDispo" AssociatedControlId="DescriptionSupplementDispo" Text="Description de trois suppléments disponibles" runat="server"/>
                        <asp:DropDownList id="DescriptionSupplementDispo" runat="server">
                             <asp:ListItem Text="Bande-annonce (Trailer)" Value="0" />
                             <asp:ListItem Text="Commentaires audio" Value="1" />
                             <asp:ListItem Text="Scènes supprimées" Value="2" />
                         </asp:DropDownList>
                            </small></h4>
                    <h4><small><asp:Label id="lblDureeFilm" AssociatedControlId="DureeFilm" Text="Durée du film" runat="server"/>
                        <asp:TextBox id="DureeFilm" TextMode="Number" Text="200"  runat="server" min="0" max="400" step="1" MaxLength="3"/></small></h4>
                    <h4><small><asp:Label id="lblDVDOriginal" AssociatedControlId="DVDOriginal" Text="Est-ce un dvd original" runat="server"/><asp:CheckBox id="DVDOriginal" runat="server" /></small></h4>
                        <asp:Label id="lblResume" AssociatedControlId="Resume" Text="Résumé du film" runat="server"/>
                    <div style="overflow: auto;">
                     <asp:TextBox textmode="multiline" runat="server" style="width:400px; height:200px;" ID="Resume" Text="Une histoire d'amour qui se déroule au milieu des années 60 et des manifestations anti-guerre, de la lutte pour la liberté d'expression et les droits civiques, l'exploration des esprits et le rock'n roll. Le film nous fait voyager des Universités du Massachussetts et de l'Ohio, aux émeutes de Détroit et aux champs de batailles du Vietnam, en passant par les docks de Liverpool. Les amants Jude (Jim Sturgess) et Lucy (Evan Rachel Wood) se retrouvent, en compagnie d'une bande de musiciens et d'amis"></asp:TextBox>

                    </div>
                  
		        </div>
		         <div class="col-xs-6 col-md-4">
                	<h4><small><asp:Label id="lblNomProducteur" AssociatedControlId="NomProducteur" Text="Nom du producteur" runat="server"/><asp:TextBox id="NomProducteur" Text="Edward S. Feldman" runat="server" /></small></h4>
		            <h4><small><asp:Label id="lblNomRealisateur" AssociatedControlId="NomRealisateur" Text="Nom du réalisateur" runat="server"/><asp:TextBox id="NomRealisateur" Text="Francis Ford Coppola" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblNomActeurs" AssociatedControlId="NomActeurs" Text="Nom des trois princiaux acteurs/actrices" runat="server"/><asp:DropDownList id="NomActeurs" runat="server" /></small></h4>               
                <h4><small><asp:Label id="lblSousTitre" AssociatedControlId="SousTitre" Text="Sous-Titres" runat="server"/>
                    <asp:DropDownList id="SousTitre" runat="server" >
                         <asp:ListItem Text="Anglais" Value="0" />
                             <asp:ListItem Text="Français" Value="1" />
                             <asp:ListItem Text="Espagnol" Value="2" />
                        </asp:DropDownList></small></h4>
                <h4><small><asp:Label id="lblTitreFrancais" AssociatedControlId="TitreFrancais" Text="Titre-français" runat="server"/><asp:TextBox id="TitreFrancais" Text="À travers l'univers" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblTitreOriginal" AssociatedControlId="TitreOriginal" Text="Titre original" runat="server"/><asp:TextBox id="TitreOriginal" Text="Across the Universe" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblProprietaire" AssociatedControlId="Proprietaire" Text="Utilisateur ayant acheté le DVD (propriétaire)" runat="server"/><asp:TextBox id="Proprietaire" runat="server" Text="Francis Perro" /></small></h4>
                <h4><small><asp:Label id="lblEmprunteur" AssociatedControlId="Emprunteur" Text="Utilisateur ayant le DVD en main (emprunteur)" runat="server"/><asp:TextBox id="Emprunteur" runat="server" Text="Raphael Plèbois" /></small></h4>
                <h4><small><asp:Label id="lblVersionEtendue" AssociatedControlId="VersionEtendue" Text="Version étendue ?" runat="server"/><asp:CheckBox id="VersionEtendue" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblVisibleTous" AssociatedControlId="VisibleTous" Text="Visible à tous ?" runat="server"/><asp:CheckBox id="VisibleTous" runat="server" /></small></h4>
                <h4><small><asp:Label id="lblFormat" AssociatedControlId="txtFormat" Text="Format" runat="server"/>
                    <asp:DropDownList id="txtFormat" runat="server">
                             <asp:ListItem Text="Panoramique" Value="0" />
                             <asp:ListItem Text="Blu-Ray" Value="1" />
                             <asp:ListItem Text="Normal" Value="2" />
                         </asp:DropDownList></small></h4>        
                <h4><small><asp:Label id="lblLangue" AssociatedControlId="txtLangue" Text="Langue" runat="server"/>
                     <asp:DropDownList id="txtLangue" runat="server">
                             <asp:ListItem Text="Français" Value="0" />
                             <asp:ListItem Text="Anglais" Value="1" />
                             <asp:ListItem Text="Espagnol" Value="2" />
                         </asp:DropDownList></small></h4>                    
                <h4><small><asp:Label id="lblNbDisques" AssociatedControlId="tbNbDisques" Text="Nombre de disques" runat="server"/>
                <asp:TextBox id="tbNbDisques" TextMode="Number" Text="2"  runat="server" min="0" max="15" step="1" MaxLength="2"/></small></h4>
		        </div>
		    </div>
		</div>
	</div>
	<br/>
	 <div align="center">
		<a href="" class="btn btn-success">Modifier le DVD</a>
          <a href="/Pages/DVDTousLesUtilisateurs.aspx" class="btn btn-success">Afficher les DVDs de tous les utilisateurs</a>
	</div>
</asp:Content>
