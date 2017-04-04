<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Grande_Collecte.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
   <div id="contactcontainer">
    
    
    <div id="header1">
    <h1 >Grande Collecté</h1>
    </div>

   

     <div id="fullname">
     <br />
    Full Name:&nbsp; 
    <asp:TextBox ID="TextBox1" runat="server" Width="513px"></asp:TextBox>
         <br />
    </div>

    

    <div id="email">
    <br />
    Email:&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="536px"></asp:TextBox>
        <br />
    </div>

    <div id="mobileno">
    <br />
    Mobile No:&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="512px"></asp:TextBox>
        <br />
    </div>

    <div id="address">
    <br />
    Address:
    <asp:TextBox ID="TextBox4" runat="server" Width="527px"></asp:TextBox>
        <br />
     <br />
    </div>  

    <div id="question">
    Any Question?&nbsp;
    <br />
    <asp:TextBox ID="TextBox5" runat="server" Height="76px" Width="262px"></asp:TextBox>
     
    </div>
       
     <div id="Submit">

    <asp:Button ID="Button1" runat="server" Text="SUBMIT" />
     
    </div>    
    </div>
   </div>
    

</asp:Content>
