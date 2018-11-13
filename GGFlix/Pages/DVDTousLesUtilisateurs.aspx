<%@ Page Language="C#"  MasterPageFile="~/Fragments/PageMaitre.master"
    AutoEventWireup="true" CodeFile="DVDTousLesUtilisateurs.aspx.cs"
    Inherits="DVDTousLesUtilisateurs"
    Title="Catalogue"%>


<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
<div class="container" style="margin-bottom: 30px;">
        <a href="/">
            <img class="navbar navbar-expand-lg navbar-dark nav-bg rounded" src="/Static/img/banner.jpg" height="40%" width="100%">
        </a>
</div>
    <br /> 
            <br />
<div align="center">
			<a href="1" class="btn btn-success">Page 1</a>
			<a href="2" class="btn btn-success">Page 2</a>
			<a href="3" class="btn btn-success">Page 3</a>
			<a href="4" class="btn btn-success">Page 4</a>
			<a href="5" class="btn btn-success">Page 5</a>
			<div class="form-group row">
                <div class="col-md-4">
                    <label>Rechercher DVD:</label>
                    <input type="text">
                    <input type="image" src="/Static/img/loupe.png" width="20px" height="20px" />
                </div>
                <div class="col-md-4">
                    <label for="example-number-input" class="col-form-label">Nombre de titres par page</label>
				<input class="form-control" type="number" value="10" id="example-number-input" style="width: 20%">
                    </div>
                <div>
                 <label for="" class="">Trier par : </label>            
			
                <select>
                    <option value="0"></option>
                    <option value="1">Nom d'utilisateur</option>
                    <option value="2">Titre du DVD</option>
                     <option value="3">Nom d'utilisateur et Titre du DVD</option>      
                </select>
                </div>
		    </div>
		</div><br/><br/>

	<div class="card">
		<div class="card-body">
		    <div class="row" style="margin-left: 15%;margin-right: 15%">
		        <div class="col-xs-2 col-md-2">
                    <a href="/DVD/1">
                        <img class="img-responsive" src="/Static/img/181201.jpg" alt="prewiew">
                    </a>
		        </div>
		        <div class="col-xs-4 col-md-6">
		            <h4 class="product-name pb-5"><strong>Across the universe</strong></h4><h4><small>Par <a href="/Utilisateur/4">Perro</a></small></h4>
                     <h4><small >Réservé par : <a href="/Utilisateur/3">Francis Perreault</a></small></h4>
		        </div>		 
                <div class="col-xs-6 col-md-4 btn-group-vertical" style="padding-top: 5px;">
                    <br/>
                    <a href="/DVD/1" class="btn btn-info btn-primary">Affichage des données détaillées</a><br/>
					<a href="/Messagerie" class="btn btn-warning btn-primary">Envoi un courriel à celui qui l'a en main</a><br/>
					<a href="" class="btn btn-danger btn-primary">S'approprier ce DVD</a>
                </div>
		
		    </div>
		    <hr>
		    <div class="row" style="margin-left: 15%;margin-right: 15%">
		        <div class="col-xs-2 col-md-2">
                    <a href="/DVD/2">
		             <img class="img-responsive" src="/Static/img/181003.jpg" alt="prewiew">
                    </a>
		        </div>
		        <div class="col-xs-4 col-md-6">
		            <h4 class="product-name"><strong>Danny Ocean 13</strong></h4><h4><small>Par <a href="/Utilisateur/2">Niko</a></small></h4>
                     <h4><small >Réservé par : <a href="/Utilisateur/1">Landry DeRonald</a></small></h4>
		        </div>		        
                    <div class="col-xs-6 col-md-4 btn-group-vertical" style="padding-top: 5px;">
                        <br/>
                        <a href="/DVD/2" class="btn btn-info btn-block btn-primary">Affichage des données détaillées</a><br/>
					    <a href="/Messagerie" class="btn btn-warning btn-block btn-primary">Envoi un courriel à celui qui l'a en main</a><br/>
					    <a href="" class="btn btn-danger btn-block btn-primary">S'approprier ce DVD</a>
                    </div>
		    </div>
		    <hr>
		    <div align="center">
			    <a href="/MesDVD" class="btn btn-success">Afficher les DVDs en main</a>
			    <a href="/Utilisateur/1" class="btn btn-success">Afficher les DVDs d'un autre utilisateur</a>
			</div>
		</div>
	<br/>
</asp:Content>