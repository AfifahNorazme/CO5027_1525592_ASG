<%@ Page Title="Grande Collecté" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Grande_Collecte._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="img">

    <img src="Grande%20Collecte%20images/bggc4.jpg" alt="bgimage" />
    
    </div> 
    
    <div id="homecontainer">
     
   <h2>Our Grande Collecte products:-</h2>

    <div id="pimages">

    <table>

  <tr><td><a href="blazzer.aspx"><img src="Grande%20Collecte%20images/blazzer.jpg" height="350" width="250" alt="ANASTASIA PINK BLAZZER"/></a></td>
    <td><a href="cardigan.aspx"><img src="Grande%20Collecte%20images/cardigan.jpg" height="350" width="250" alt="VICTORIA CARDIGAN"/></a></td>
    <td><a href="jollypants.aspx"><img src="Grande%20Collecte%20images/jollypants.jpg" height="350" width="250" alt="RELAXED JOLLY PANTS"/></a></td></tr>
    <tr><td><a href="hoodie.aspx"><img src="Grande%20Collecte%20images/hoodie.jpg" height="350" width="250" alt="CAPE HOODIE"/></a></td>
    <td><a href="blouse.aspx"><img src="Grande%20Collecte%20images/blouse.jpg" height="350" width="250" alt="CLAUDIA SENROSE BLOUSE"/></a></td>
    <td><a href="skirt.aspx"><img src="Grande%20Collecte%20images/skirt.jpg" height="350" width="250" alt="SYLVIA GREEN SKIRT"/></a></td></tr>
    </table>
    </div>
   
    </div>

    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <li>
                <a href="<%# Eval ("ProductID","ProductDtl.aspx?Id={0}") %>">
                    <%#Eval ("ProductName") %>
                </a>
            </li>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525592_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>

    <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1525592.studentwebserver.co.uk%2Fco5027%2Fdefault.aspx">Validation For HTML</a>

 
    


    
</asp:Content>
