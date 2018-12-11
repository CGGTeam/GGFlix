<%@ Page Language="C#" MasterPageFile="~/Fragments/PageMaitre.master" AutoEventWireup="true" CodeFile="PersonnalisationEnv.aspx.cs" Inherits="Pages_PersonnalisationEnv" %>

<asp:Content runat="server" ContentPlaceHolderID="Head">
        <script language="javascript" type="text/ecmascript">


       function confirmerAppropriation() {
        var Result = confirm("Êtes-vous certain de vouloir vous appropriez ce dvd?");
           if (Result == true) {
               __doPostBack('txtConfirmRetour', "Approprier"); //sending back to server.
            return true;
        }
        else 
        {

             return false;
        }
    }


    </script>
</asp:Content>
<asp:Content runat="server"  ContentPlaceHolderID="ContenuPrincipal">
    <asp:Panel runat="server" ID="MainContent" class="vertical-center">
        <div class="container">
            <div class="row flex-column h-100 justify-content-center align-items-center">
                <div class="jumbotron col-11 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                     <div class="form-group">
                        <h2 class="text-center">Personnalisation de l'environnement</h2>
                    </div>
                    <div class="form-group ">                      
                        <br />
                        <asp:Label for="tbMdeP">Mot de passe : </asp:Label>
                        <asp:TextBox ID="tbMdeP" runat="server" TextMode="Password" Text="" class="form-control" />                        
                        <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "tbMdeP" ID="regLengthPass" 
                            ValidationExpression = "^\d{5}$" ForeColor="Red" 
                            runat="server" ErrorMessage="Le mot de passe est uniquement composé de 5 chiffres. <br> Entre 00000 et 99999. "></asp:RegularExpressionValidator>
                        <div class="text-center">
                              <br /> 
                            <asp:Button ID="btnModifier" runat="server"  Text="Modifier mot de passe" class="text-center"/>
                        </div>
                        <br />
                        <br />                             
                        <asp:CheckBox ID="cbCourrielAjout" runat="server" AutoPostBack="true"  Text="Recevoir un courriel lors d'ajout de DVD" />
                        <br />
                        <br />                     
                        <asp:CheckBox ID="cbCourrielRetrait" runat="server" AutoPostBack="true"   Text="Recevoir un courriel lors du retrait d'un DVD" />
                        <br />
                        <br />                        
                        <asp:CheckBox ID="cbCourrielApprop" runat="server" AutoPostBack="true" Text="Recevoir un courriel lors de l'appropriation d'un DVD" />
                        <br />
                        <br />  

                        <asp:Label >Choisir une image de fond : </asp:Label>&nbsp; 
                         <asp:FileUpload ID="FileUpload" runat="server"/>       <br />   
                          <div class="text-center">
                              <br />
                            <asp:Button ID="btnUpload" CssClass="btn btn-primary" runat="server" Text="Téléverser" />
                        </div>                       
                        <asp:CheckBox ID="cbRetirerImg" runat="server" AutoPostBack="true"  Visible="false"  Text="Voulez vous retirer votre image actuel " />    <br />  <br /> 
                          
                         <asp:Label >Choisir une couleur de fond : </asp:Label> &nbsp;  
                        <asp:DropDownList ID="ddlCouleurFond" AutoPostBack="true"  runat="server">
                            
                        </asp:DropDownList>
                        <br />
                        <br /> 
                         <label >Choisir une couleur de texte : </label>&nbsp; 
                         <asp:DropDownList ID="ddlCouleurTexte" AutoPostBack="true"  runat="server">
                           
                        </asp:DropDownList>
                        <br /><br />
                        <asp:Label for="ddlNbDvdAffiche">Nombre de DVDs à afficher par page : </asp:Label>
                           <asp:DropDownList id="ddlNbDvdAffiche" AutoPostBack="true"  runat="server">                            
                         </asp:DropDownList>  
                        <br />
                        <br />  
                        
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
