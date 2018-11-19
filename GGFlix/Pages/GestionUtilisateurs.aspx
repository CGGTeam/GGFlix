﻿<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="GestionUtilisateurs.aspx.cs" Inherits="GestionUtilisateurs" Culture="fr-FR" %>
<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <table class="table table-striped table-bordered" style="padding-left:10%;padding-right:10%;">
      <thead class="black white-text">
        <tr>
          <th scope="col">Type d'utilisateur</th>
          <th scope="col">Prénom</th>
          <th scope="col">Nom de famille</th>
            <th scope="col">Modifier</th>
            <th scope="col">Supprimer</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">SuperUtilisateur</th>
          <td>Mark</td>
          <td>Otto</td>
          <td><asp:Button CssClass="btn btn-warning" Text="Modifier" runat="server"/></td>
          <td><asp:Button CssClass="btn btn-danger" Text="Supprimer" runat="server"/></td>

        </tr>
        <tr>
          <th scope="row">Utilisateur</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td><asp:Button CssClass="btn btn-warning" Text="Modifier" runat="server"/></td>
          <td><asp:Button CssClass="btn btn-danger" Text="Supprimer" runat="server"/></td>
        </tr>
      </tbody>
    </table>
    <br />
    <div align="center">
        <a href="/Pages/AjoutUtilisateur.aspx" class="btn btn-success">Ajout d'un utilisateur</a>
    </div>
</asp:Content>