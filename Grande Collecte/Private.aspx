<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Private.aspx.cs" Inherits="Grande_Collecte.Private" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="privatecontainer">

<div id="privatecontent">
<article>
<p>You are now in a protected page via successful log in.</p>

<div id="logout">
<asp:Button ID="Logoutbtn" runat="server" Text="Logout" OnClick="Logoutbtn_Click" />
</div>
</article>
</div>
</div>



</asp:Content>
