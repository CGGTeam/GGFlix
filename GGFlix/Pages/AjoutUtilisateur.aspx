<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutUtilisateur.aspx.cs" Inherits="Pages_AjoutUtilisateur" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                     <div class="form-group">
                        <h2 class="text-center">Ajout d'un utilisateur</h2>
                    </div>
                    <div class="form-group ">
                        <label for="tbPrenom">Nom d'utilisateur : </label>
                        <asp:TextBox ID="tbPrenom" runat="server" class="form-control"/>
                        <br />
                        <br />
                        <label for="tbCourriel1">Courriel : </label>
                        <asp:TextBox ID="tbCourriel1" runat="server" class="form-control"/>
                        <br />
                        <br />
                        <label for="tbCourriel2">Confirmer le courriel : </label>
                        <asp:TextBox ID="tbCourriel2" runat="server" class="form-control" />
                        <br />
                        <br />
                        <label for="tbMdeP1">Mot de passe : </label>
                        <asp:TextBox ID="tbMdeP1" runat="server" TextMode="Password" class="form-control" />
                        <asp:CheckBox ID="chMdeP1" runat="server" Text="Afficher le mot de passe" />
                        <br />
                        <br />
                        <label for="tbMdeP2">Confirmer le mot de passe : </label>
                        <asp:TextBox ID="tbMdeP2" runat="server" TextMode="Password" class="form-control"/>
                        <asp:CheckBox ID="chMdeP2" runat="server" Text="Afficher le mot de passe" />
                        <br />
                        <br />
                        <asp:Panel ID="pnOptionsAdmin" Visible="false" runat="server">
                            <label for="ddlTypeUtilisateur" runat="server" TextMode="Password" class="form-control"/>
                            <asp:DropDownList ID="ddlTypeUtilisateur" runat="server"/>
                            <br />
                            <br />
                        </asp:Panel>
                        <div class="text-center">
                            <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" class="text-center"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>