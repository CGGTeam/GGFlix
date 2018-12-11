<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="EnvoiCourriel.aspx.cs" Inherits="Pages_EnvoiCourriel" %>


<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="form-group">
                       <Label for="tbA">À : </Label>
                        <asp:TextBox ID="tbA" runat="server" placeholder="abc@courriel.com;def@courriel.com" class="form-control"/>
                        <asp:CheckBox ID="chTous" runat="server" Text="Envoyer à tous" OnCheckedChanged="chClicked" AutoPostBack="true"/><br/>
                        <asp:CustomValidator runat="server" ControlToValidate="tbA" OnServerValidate="VerifierA" ErrorMessage="Doit être un ou plusieurs courriels délimités par des point-virgules" CssClass="text-danger"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbA" ErrorMessage="Ne peut pas être vide" CssClass="text-danger"/>
                        <br />
                        <br />
                         <Label for="tbDe">De : </Label>
                        <asp:TextBox ReadOnly="True" ID="tbDe" runat="server" placeholder="abc@courriel.com" class="form-control"/>
                        <br />
                        <br />
                         <label for="tbObjet">Objet : </label>
                        <asp:TextBox ID="tbObjet" runat="server" placeholder="Objet" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbObjet" ErrorMessage="Ne peut pas être vide" CssClass="text-danger"/>
                        <br />
                        <br />
                        <label for="tbTexte">Texte : </label>
                        <textarea ID="tbTexte" rows="5" runat="server" class="form-control"/>
                        <br />
                        <br />
                        <div class="text-right">
                            <asp:Button ID="btnEnvoyer" OnClick="Envoyer" runat="server" Text="Envoyer"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>