<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" Inherits="Pages_Connexion" CodeFile="Connexion.aspx.cs" Title="Connexion"%>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/connexion.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="form-group">
                        <h2 class="text-center">Connexion</h2>
                    </div>
                    <div class="form-group">
                        <label for="tbCourriel">Courriel:</label><br/>
                        <input runat="server"
                               tabindex="1"
                               ID="tbEmail" 
                               class="form-control"
                               TextMode="email"
                               placeholder="courriel@example.com"/>
                    </div>
                    <div class="form-group">
                        <label for="tbPassword">Mot de passe:</label>
                        <asp:TextBox runat="server"
                                     tabindex="2"
                                     ID="tbPassword" 
                                     class="form-control"
                                     TextMode="password"/>
                    </div>
                    <div class="form-group d-flex justify-content-between align-items-baseline">
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
</asp:Content>