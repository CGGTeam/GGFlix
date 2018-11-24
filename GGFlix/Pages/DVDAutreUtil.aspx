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
    <asp:Panel ID="panelBasDePage" runat="server"></asp:Panel>
    <br />
    <br />
    <br />
</asp:Content>
