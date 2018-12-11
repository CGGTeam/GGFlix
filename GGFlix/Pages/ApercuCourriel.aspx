<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="ApercuCourriel.aspx.cs" Inherits="Pages_EnvoiCourriel" %>


<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <style>
        .tbA 
        {    
            height: 3.25rem;
            overflow: auto;
        }
    </style>
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="form-group">
                       <Label for="tbA">À : </Label>
                        <asp:Label CssClass="tbA form-control" ID="tbA" runat="server"/>
                        <br />
                        <br />
                         <Label for="tbDe">De : </Label>
                        <asp:Label ID="tbDe" runat="server" class="form-control"/>
                        <br />
                        <br />
                         <label for="tbObjet">Objet : </label>
                        <asp:Label ID="tbObjet" runat="server" class="form-control"/>
                        <br />
                        <br />
                        <label for="tbTexte">Texte : </label>
                        <asp:TextBox ReadOnly="True" TextMode="MultiLine" ID="tbTexte" rows="5" runat="server" class="form-control"/>
                        <br />
                        <br />
                        <a href="/Messagerie" class="btn btn-primary">Retour</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>