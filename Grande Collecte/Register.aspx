<%@ Page Title="REGISTER HERE" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Grande_Collecte.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="registercontainer">

    
    
    <div id="header11">
    <h1 >Please register here to become our member</h1>
    </div>

   

     <div id="signemail">
     <br />
    <asp:Label ID="LblSign" runat="server" Text="SIGNUP WITH EMAIL :"></asp:Label>&nbsp; 
    <asp:TextBox ID="TxtSign" runat="server" Width="513px"></asp:TextBox>
         <br />
         <br />
    </div>

    

    <div id="username">
    <br />
    <asp:Label ID="Lblusername" runat="server" Text=" FULL NAME : "></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="TxtUsername" runat="server" Width="536px"></asp:TextBox>
        <br />
        <br />
    </div>

    <div id="signupmobile">
    <br />
    <asp:Label ID="Lblsignmobile" runat="server" Text=" SIGNUP WITH MOBILE NO :"></asp:Label>&nbsp;
    <asp:TextBox ID="TxtMobile" runat="server" Width="512px"></asp:TextBox>
        <br />
        <br />
    </div>

    <div id="rpassword">
    <br />
    <asp:Label ID="Lblrpassword" runat="server" Text=" PASSWORD : "></asp:Label>
    <asp:TextBox ID="Txtpassword" runat="server" Width="527px" TextMode="Password"></asp:TextBox>
        <br />
     <br />
    </div>  

    <div id="Signupregister">

    <asp:Button ID="regbtn" runat="server" Text="REGISTER" OnClick="regbtn_Click" />
         <asp:Literal ID="LitRegister" runat="server"></asp:Literal>
    
   </div>
   </div>
</asp:Content>
