<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutUtilisateur.aspx.cs" Inherits="Pages_AjoutUtilisateur" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <script type="text/javascript">
        function Afficher(cb, tbId) {
            document.getElementById(tbId).type = cb.checked ? 'text' : 'password';
        }
    </script>
    
    <asp:Panel ID="pnErreurs"  CssClass="alert alert-danger text-center" runat="server">
        <asp:Literal ID="LitErreur" runat="server"></asp:Literal>
    </asp:Panel>

    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                     <div class="form-group">
                        <h2 class="text-center"><asp:Literal runat="server" ID="litMode"></asp:Literal> d'un utilisateur</h2>
                    </div>
                    <div class="form-group ">
                        <label for="tbPrenom">Nom d'utilisateur : </label>
                        <asp:TextBox ID="tbPrenom" runat="server" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Ce champs est requis" ControlToValidate="tbPrenom" CssClass="text-danger"/>
                        <br />
                        <br />
                        <label for="tbCourriel1">Courriel : </label>
                        <asp:TextBox ID="tbCourriel1" runat="server" class="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Ce champs est requis" ControlToValidate="tbCourriel1" CssClass="text-danger"/>
                        <asp:RegularExpressionValidator ValidationExpression="[a-z0-9]+([._-][a-z0-9]+)*@\w+([._-][a-z0-9]+)*(.[a-z]{2,})" runat="server" ControlToValidate="tbCourriel1" ErrorMessage="L'adresse saisie est invalide" CssClass="text-danger"/>
                        <br />
                        <br />
                        <label for="tbCourriel2">Confirmer le courriel : </label>
                        <asp:TextBox ID="tbCourriel2" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Ce champs est requis" ControlToValidate="tbCourriel2" CssClass="text-danger"/>
                        <asp:CompareValidator runat="server" ErrorMessage="Les deux courriels doivent correspondre" ControlToValidate="tbCourriel2" ControlToCompare="tbCourriel1" Operator="Equal" CssClass="text-danger"/>
                        <br />
                        <br />
                        <label for="tbMdeP1">Mot de passe : </label>
                        <asp:TextBox ID="tbMdeP1" ClientIDMode="Static" runat="server" class="form-control" />
                        <input id="cbMdP1" type="checkbox" onclick="Afficher(this, 'tbMdeP1')"/>
                        <label for="cbMdP1">Afficher Mot de Passe</label>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Ce champs est requis" ControlToValidate="tbMdeP1"/>
                        <asp:RangeValidator runat="server" Type="Integer" MinimumValue="0" MaximumValue="99999" ErrorMessage="Doit être un nombre entier positif" ControlToValidate="tbMdeP1" CssClass="text-danger"/>
                        <br />
                        <br />
                        <label for="tbMdeP2">Confirmer le mot de passe : </label>
                        <asp:TextBox ID="tbMdeP2" ClientIDMode="Static" runat="server" class="form-control"/>
                        <input id="cbMdP2" type="checkbox" onclick="Afficher(this, 'tbMdeP2')"/>
                        <label for="cbMdP2" >Afficher Mot de Passe</label>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Ce champs est requis" ControlToValidate="tbMdeP2"/>
                        <asp:CompareValidator runat="server" ErrorMessage="Les deux mots de passe doivent correspondre" ControlToValidate="tbMdeP2" ControlToCompare="tbMdeP1" Operator="Equal" CssClass="text-danger"/>
                        <br />
                        <br />
                        <asp:Panel ID="pnOptionsAdmin" Visible="false" runat="server">
                            <label for="ddlTypeUtilisateur" runat="server" >Type d'utilisateur</label>
                            <asp:DropDownList ID="ddlTypeUtilisateur" runat="server"/>
                            <br />
                            <br />
                        </asp:Panel>
                        <div class="text-center">
                            <asp:Button ID="btnAjouter" OnClick="ConfirmerAjout" runat="server" Text="Confirmer" class="btn btn-success"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>