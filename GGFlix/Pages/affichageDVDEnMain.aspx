﻿<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AffichageDVDEnMain.aspx.cs" Inherits="AffichageDVDEnMain" Culture="fr-FR" %>
<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/connexion.css"/>
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
			    <a href="page1" class="btn btn-success">Page 1</a>
			    <a href="page1" class="btn btn-success">Page 2</a>
			    <a href="page1" class="btn btn-success">Page 3</a>
			    <a href="page1" class="btn btn-success">Page 4</a>
			    <a href="page1" class="btn btn-success">Page 5</a>
			    <div class="form-group row">
				    <label for="example-number-input" class="col-2 col-form-label">Nombre de titres par page</label>
					    <input class="form-control" type="number" value="10" id="example-number-input" style="width: 7.5%">
			    </div>
		    </div><br/><br/>

	    <div class="card">
		    <div class="card-body">
		        <div class="row" style="margin-left: 15%">
		            <div class="col-xs-2 col-md-2">
		                <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		            </div>
		            <div class="col-xs-4 col-md-6">
		                <h4 class="product-name"><strong>Film 1</strong></h4><h4><small>Par Raphael</small></h4>
		            </div>
		             <div class="col-xs-6 col-md-4 row">
                            <div class="col-xs-6 col-md-6 text-right" style="padding-top: 5px">
                        	    <br/>
                                <a href="" class="btn btn-info">Affichage des données détaillées</a><br/>
							    <a href="" class="btn btn-warning">Modification des données existantes</a>
							    <a href="" class="btn btn-danger">Suppression du film</a>
                            </div>
		            </div>
		        </div>
		        <hr>
		        <div class="row" style="margin-left: 15%">
		            <div class="col-xs-2 col-md-2">
		                <img class="img-responsive" src="/Static/img/dvd.jpg" alt="prewiew">
		            </div>
		            <div class="col-xs-4 col-md-6">
		                <h4 class="product-name"><strong>Film 2</strong></h4><h4><small>Par Benoit</small></h4>
		            </div>
		            <div class="col-xs-6 col-md-4 row">
                            <div class="col-xs-6 col-md-6 text-right" style="padding-top: 5px">
                        	    <br/>
                                <a href="" class="btn btn-info">Affichage des données détaillées</a><br/>
							    <a href="" class="btn btn-warning">Modification des données existantes</a>
							    <a href="" class="btn btn-danger">Suppression du film</a>
                            </div>
		            </div>
		        </div>
		    </div>
	    </div>
	    <br/>
    </body>
</asp:Content>