<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master"
    AutoEventWireup="true" CodeFile="DVDAutreUtil.aspx.cs" Inherits="DVDAutreUtil" EnableEventValidation="false"
    Title="DVDs d'un utilisateur" %>

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="container" style="margin-bottom: 30px;">
        <a href="/">
            <img class="navbar navbar-expand-lg navbar-dark nav-bg rounded" src="/Static/img/banner.jpg" height="40%" width="100%">
        </a>
    </div>
    <br />
    <br />
        <div class="form-group row">
            <div class="col-md-2" style="margin-left:10px;">
                <label for="rechercheDVD" >Rechercher DVD:</label>
                <br />
                <input id="rechercheDVD" type="text" style="width:260px;height:25px;">
                <input type="image" src="/Static/img/loupe.png" width="20px" height="20px" />
                <br />
                <br />
                <label>DVD de l'utilisateur : </label>
                <br />
                <asp:DropDownList runat="server" ID="ddlUtilisateur" AutoPostBack="true" style="width:260px;height:25px;" OnSelectedIndexChanged="creerAffichage" ></asp:DropDownList>
            </div>
            <asp:Panel ID="panelAffichage" CssClass="col-md-8 card card-body" runat="server">
                </asp:Panel>


        </div>
    <div align="center">
        <a href="-1" class="btn btn-success">|<</a>
        <a href="0" class="btn btn-success"><</a>
        <a href="1" class="btn btn-success">Page 1</a>
        <a href="2" class="btn btn-success">Page 2</a>
        <a href="3" class="btn btn-success">Page 3</a>
        <a href="4" class="btn btn-success">Page 4</a>
        <a href="5" class="btn btn-success">Page 5</a>
        <a href="6" class="btn btn-success">></a>
        <a href="7" class="btn btn-success">>|</a>
        <br />
        <br />
        <a href="/Catalogue/1" class="btn btn-success">Afficher les DVDs de tous les utilisateurs</a>
        <a href="/MesDVD" class="btn btn-success">Afficher les DVDs en main</a>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
