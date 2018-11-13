<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AffichageDVDEnMain.aspx.cs" Inherits="AffichageDVDEnMain" Culture="fr-FR" %>
<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">

    <head>
        <title></title>
    
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


    </head>
    <body>
    <div align="center">
			    <a href="1" class="btn btn-success">Page 1</a>
			    <a href="2" class="btn btn-success">Page 2</a>
			    <a href="3" class="btn btn-success">Page 3</a>
			    <a href="4" class="btn btn-success">Page 4</a>
			    <a href="5" class="btn btn-success">Page 5</a>
			    <div class="form-group row">
				    <label for="example-number-input" class="col-2 col-form-label">Nombre de titres par page</label>
					    <input class="form-control" type="number" value="10" id="example-number-input" style="width: 7.5%">
			    </div>
		    </div><br/><br/>

	    <div class="card">
		    <div class="card-body">
		        <div class="row" style="margin-left: 15%">
		            <div class="col-xs-2 col-md-2">
		                <a href="/DVD/1">
		                    <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		                </a>
		            </div>
		            <div class="col-xs-4 col-md-6">
		                <h4 class="product-name"><strong>Film 1</strong></h4><h4><small>Par <a href="/Utilisateur/5">Par Raphael</a></small></h4>
		            </div>
		             <div class="col-xs-6 col-md-4 row">
                            <div class="col-xs-6 col-md-6 text-right" style="padding-top: 5px">
                        	    <br/>
                                <a href="/DVD/1" class="btn btn-info">Affichage des données détaillées</a><br/>
							    <a href="/DVD/1" class="btn btn-warning">Modification des données existantes</a>
							    <a href="" class="btn btn-danger">Suppression du film</a>
                            </div>
		            </div>
		        </div>
		        <hr>
		        <div class="row" style="margin-left: 15%">
		            <div class="col-xs-2 col-md-2">
		                <a href="/DVD/2">
		                    <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		                </a>
		            </div>
		            <div class="col-xs-4 col-md-6">
		                <h4 class="product-name"><strong>Film 2</strong></h4><h4><small>Par <a href="/Utilisateur/7">Benoit</a></small></h4>
		            </div>
		            <div class="col-xs-6 col-md-4 row">
                            <div class="col-xs-6 col-md-6 text-right" style="padding-top: 5px">
                        	    <br/>
                                <a href="/DVD/2" class="btn btn-info">Affichage des données détaillées</a><br/>
							    <a href="/DVD/2" class="btn btn-warning">Modification des données existantes</a>
							    <a href="" class="btn btn-danger">Suppression du film</a>
                            </div>
		            </div>
		        </div>
		    </div>
	    </div>
	    <br/>
    </body>
</asp:Content>