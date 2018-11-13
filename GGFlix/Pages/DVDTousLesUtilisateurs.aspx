<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DVDTousLesUtilisateurs.aspx.cs" Inherits="DVDTousLesUtilisateurs" %>


<html>
<head>
    <title>DVD Express</title>
    
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


</head>
<body>
<div class="container" style="margin-bottom: 30px;">
        <a href="/">
            <img class="navbar navbar-expand-lg navbar-dark nav-bg rounded" src="/Static/img/banner.jpg" height="40%" width="100%">
        </a>
</div>
    <br /> 
            <br />
<div align="center">
			<a href="page1" class="btn btn-success">Page 1</a>
			<a href="page1" class="btn btn-success">Page 2</a>
			<a href="page1" class="btn btn-success">Page 3</a>
			<a href="page1" class="btn btn-success">Page 4</a>
			<a href="page1" class="btn btn-success">Page 5</a>
			<div class="form-group row">
                <div class="col-md-4">
                    <label>Rechercher DVD:</label>
                    <input type="text">
                    <input type="image" src="/Static/img/loupe.png" width="20px" height="20px" />
                </div>
                <div class="col-md-4">
                    <label for="example-number-input" class="col-2 col-form-label">Nombre de titres par page</label>
				<input class="form-control" type="number" value="10" id="example-number-input" style="width: 12%">
                    </div>
                <div align="col-md-4 ">
                 <label for="" class="col-2">Trier par : </label>            
			
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
		    <div class="row" style="margin-left: 15%">
		        <div class="col-xs-2 col-md-2">
		            <img class="img-responsive" src="/Static/img/181201.jpg" alt="prewiew">
		        </div>
		        <div class="col-xs-4 col-md-6">
		            <h4 class="product-name pb-5"><strong>Across the universe</strong></h4><h4><small>Par Perro</small></h4>
                     <h4><small >Réservé par : Francis Perreault</small></h4>
		        </div>		 
                <div class="col-xs-6 col-md-6 btn-group-vertical" style="padding-top: 5px; width:25%;">
                    <br/>
                    <a href="" class="btn btn-info btn-primary">Affichage des données détaillées</a><br/>
					<a href="" class="btn btn-warning btn-primary">Envoi un courriel à celui qui l'a en main</a><br/>
					<a href="" class="btn btn-danger btn-primary">S'approprier ce DVD</a>
                </div>
		
		    </div>
		    <hr>
		    <div class="row" style="margin-left: 15%">
		        <div class="col-xs-2 col-md-2">
		            <img class="img-responsive" src="/Static/img/181003.jpg" alt="prewiew">
		        </div>
		        <div class="col-xs-4 col-md-6">
		            <h4 class="product-name"><strong>Danny Ocean 13</strong></h4><h4><small>Par Niko</small></h4>
                     <h4><small >Réservé par : Landry DeRonald</small></h4>
		        </div>		        
                    <div class="col-xs-6 col-md-6 btn-group-vertical" style="padding-top: 5px; width:25%;">
                        <br/>
                        <a href="" class="btn btn-info btn-primary">Affichage des données détaillées</a><br/>
					    <a href="" class="btn btn-warning btn-primary">Envoi un courriel à celui qui l'a en main</a><br/>
					    <a href="" class="btn btn-danger btn-primary">S'approprier ce DVD</a>
                    </div>
		        
		    </div>
		    <hr>
		    <div align="center">
			    <a href="/Pages/affichageDVDEnMain.aspx" class="btn btn-success">Afficher les DVDs en main</a>
			    <a href="" class="btn btn-success">Afficher les DVDs d'un autre utilisateur</a>
			</div>
		</div>
	<br/>
</body>
</html>
