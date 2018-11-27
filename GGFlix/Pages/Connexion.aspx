<%@ Page Language="C#" MasterPageFile="~/Fragments/Imports.master" Inherits="Pages_Connexion" CodeFile="Connexion.aspx.cs" Title="Connexion"%>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Contenu">
    <form runat="server">
        <div runat="server" ID="divErreurs" class="alert alert-danger text-center">
            <asp:Label runat="server" ID="lblErreur"/>
        </div>
        <div runat="server" ID="divDeconnexion" class="alert alert-info text-center">
            <asp:Label runat="server" ID="messageDeconnexion">Votre session a été terminée avec succès</asp:Label>
        </div>
        
        <div  class="vertical-center">
            <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <asp:Image runat="server"
                           ImageUrl="/Static/img/CD-512-dark.png"
                           Width="100"
                           Height="100"/>
                
                <h1 class="font-weight-normal">Bienvenue chez GGFlix!</h1>
                <br /><br/>
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="form-group">
                        <h2 class="text-center">Connexion</h2>
                    </div>
                    <div class="form-group">
                        <label for="tbCourriel">Nom d'utilisateur:</label><br/>
                        <input runat="server"
                               tabindex="1"
                               ID="tbEmail" 
                               class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="tbPassword">Mot de passe:</label>
                        <asp:TextBox runat="server"
                                     tabindex="2"
                                     ID="tbPassword" 
                                     MaxLength="5"
                                     class="form-control"
                                     TextMode="password"/>
                    </div>
                    <div class="form-group d-flex justify-content-center pt-3 mb-0 mt-3">
                        <asp:Button runat="server"
                                    tabindex="3"
                                    CssClass="btn btn-primary"
                                    OnClick="connexion"
                                    Text="Connexion"/>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>
</asp:Content>