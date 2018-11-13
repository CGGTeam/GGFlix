<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="PersonnalisationEnv.aspx.cs" Inherits="Pages_PersonnalisationEnv" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContenuPrincipal">
    <div class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                     <div class="form-group">
                        <h2 class="text-center">Personnalisation de l'environnement</h2>
                    </div>
                    <div class="form-group ">
                        <label for="tbCourriel">Courriel : </label>
                        <asp:TextBox ID="tbCourriel" runat="server" Text="DVD@wesh.qc.ca" class="form-control"/>
                        <br />
                        <br />
                        <label for="tbNom">Nom : </label>
                        <asp:TextBox ID="tbNom" runat="server" Text="Victor Maertens" class="form-control"/>
                        <br />
                        <br />
                        <label for="tbMdeP">Mot de passe : </label>
                        <asp:TextBox ID="tbMdeP" runat="server" Text="Password1" class="form-control" />
                        <br />
                        <br />                             
                        <asp:CheckBox ID="cbCourrielAjout" runat="server" Checked="true"  Text="Recevoir un courriel lors d'ajout de DVD" />
                        <br />
                        <br />                     
                        <asp:CheckBox ID="cbCourrielRetrait" runat="server" Checked="true"  Text="Recevoir un courriel lors du retrait d'un DVD" />
                        <br />
                        <br />                        
                        <asp:CheckBox ID="cbCourrielApprop" runat="server" Checked="true"  Text="Recevoir un courriel lors de l'appropriation d'un DVD" />
                        <br />
                        <br />  
                        <label for="ddlNbDvdAffiche">Nombre de DVDs à afficher par page : </label>
                           <asp:DropDownList id="ddlNbDvdAffiche" runat="server">
                             <asp:ListItem Text="10" Value="0" />
                             <asp:ListItem Text="15" Value="1" />
                             <asp:ListItem Text="20" Value="2" />
                            <asp:ListItem Text="25" Value="3" />
                         </asp:DropDownList>  
                        <br />
                        <br />  
                        <div class="text-center">
                            <asp:Button ID="btnModifier" runat="server" Text="Modifier" class="text-center"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>