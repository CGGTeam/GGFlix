<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master"
    AutoEventWireup="true" CodeFile="DVDAutreUtil.aspx.cs" Inherits="DVDAutreUtil" EnableEventValidation="false"
    Title="DVDs d'un utilisateur" %>

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
     <asp:Panel runat="server" ID="MainContent">
    <div class="container" style="margin-bottom: 30px;">
        <a href="/">
            <img class="navbar navbar-expand-lg navbar-dark nav-bg rounded" src="/Static/img/banner.jpg" height="40%" width="100%">
        </a>
    </div>
    <br />
    <br />
        <div class="form-group row">
            <asp:Panel ID ="panelSideBar" CssClass="col-md-2" runat="server"></asp:Panel>
            <asp:Panel ID="panelAffichage" CssClass="col-md-8 card card-body" runat="server">
            </asp:Panel>


        </div>
    <asp:Panel ID="panelBasDePage" runat="server"></asp:Panel>
    <br />
    <br />
    <br />
         </asp:Panel>
</asp:Content>
