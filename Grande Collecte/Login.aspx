﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Grande_Collecte.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="logincontainer">
    
    
    <div id="header10">
    <h1 >Dear member, please LogIn to your account</h1>
    </div>

   
     <div id="loginID">
     <br />
    <asp:Label ID="LblLogin" runat="server" Text="Login ID:"></asp:Label>&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;<asp:TextBox ID="TxtUsername" runat="server" Width="513px" ></asp:TextBox>
         <br />
    </div>

     <div id="password">
     <br />
    <asp:Label ID="Lblpswd" runat="server" Text="PASSWORD? :"></asp:Label>&nbsp;&nbsp;&nbsp;
         <br />
&nbsp;<asp:TextBox ID="Txtpswd" runat="server" Width="513px" TextMode="Password"></asp:TextBox>
         <br />
    </div>

    <div id="Login">

    <asp:Button ID="Loginbtn" runat="server" Text="LOGIN" OnClick="Loginbtn_Click" />
         <asp:Literal ID="LitLogin" runat="server"></asp:Literal>



   <div id="register">
   <p><a href ="Register.aspx">Not yet our member? Please register here</a></p>
    </div>    
    </div>
    </div>




</asp:Content>