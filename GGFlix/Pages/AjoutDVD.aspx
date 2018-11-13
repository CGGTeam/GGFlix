<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="AjoutDVD.aspx.cs" Inherits="Pages_AjoutDVD" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
    <link rel="stylesheet" href="/Static/css/main.css"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6 text-center">
                    <div class="form-group ">
                        <asp:Label ID="lblTypeAjout" Text="Mode d'ajout : " runat="server" />
                            <asp:DropDownList ID="typeAjout" AutoPostBack="true" runat="server" OnSelectedIndexChanged="afficheDIV">
                                <asp:ListItem Value="0" Text="Abrégé" />
                                <asp:ListItem Value="1" Text="Complet" />
                            </asp:DropDownList>
                        </div>
                    <div id="divAbrege" runat="server" class="form-group ">
                        <asp:Label ID="Label1" runat="server" Text="Film #1 : " />
                        <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Film #2 : " />
                        <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Film #3 : " />
                        <asp:TextBox ID="tb3" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Film #4 : " />
                        <asp:TextBox ID="tb4" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label5" runat="server" Text="Film #5 : " />
                        <asp:TextBox ID="tb5" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label6" runat="server" Text="Film #6 : " />
                        <asp:TextBox ID="tb6" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label7" runat="server" Text="Film #7 : " />
                        <asp:TextBox ID="tb7" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label8" runat="server" Text="Film #8 : " />
                        <asp:TextBox ID="tb8" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label9" runat="server" Text="Film #9 : " />
                        <asp:TextBox ID="tb9" runat="server"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label10" runat="server" Text="Film #10: " />
                        <asp:TextBox ID="tb10" runat="server"></asp:TextBox>
                        <br /><br />
                     </div>
                    <div id="divComplet" runat="server" class="form-group" hidden="hidden">
                        <!-- Affichage détaillé -->
                    </div>
                        <asp:Button ID="btnAjouter" Text="Ajouter" runat="server"/>
                    </div>
                </div>
             </div>
        </div>
</asp:Content>
