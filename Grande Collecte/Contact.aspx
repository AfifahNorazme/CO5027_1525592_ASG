<%@ Page Title="CONTACT US" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Grande_Collecte.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    
   <div id="contactcontainer">
    
    
    <div id="header1">
    <h1 >Any problem? Dear customer, Please do contact us here</h1>
    </div>

   

     <div id="fullname">
     <br />
    <asp:Label ID="LblName" runat="server" Text="FULL NAME :"></asp:Label>&nbsp; 
    <asp:TextBox ID="TxtName" runat="server" Width="513px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="fullnamevalid" runat="server" ErrorMessage="Please enter your name" ForeColor="Red" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
         <br />
    </div>

    

    <div id="email">
    <br />
    <asp:Label ID="LblEmail" runat="server" Text="EMAIL : "></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="TxtEmail" runat="server" Width="536px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="emailvalid" runat="server" ErrorMessage="Please enter your email" ForeColor="Red" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
        <br />
    </div>


    <div id="mobileno">
    <br />
    <asp:Label ID="LblMobile" runat="server" Text="MOBILE NO :"></asp:Label>&nbsp;
    <asp:TextBox ID="TxtMobile" runat="server" Width="512px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="mobilevalid" runat="server" ErrorMessage="Please enter your mobile number" ForeColor="Red" ControlToValidate="TxtMobile"></asp:RequiredFieldValidator>
        <br />
    </div>


     <div id="subject">
    <asp:Label ID="LblSubject" runat="server" Text="SUBJECT : "></asp:Label>&nbsp;
    <br />
    <asp:TextBox ID="TxtSubject" runat="server" Height="61px" Width="233px"></asp:TextBox>
     
         <asp:RequiredFieldValidator ID="subjectvalid" runat="server" ErrorMessage="Please enter subject" ForeColor="Red" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>
     
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
     
    </div>


    <div id="message">
    <asp:Label ID="LblMessage" runat="server" Text="MESSAGE : "></asp:Label>&nbsp;
    <br />
    <asp:TextBox ID="TxtMessage" runat="server" Height="59px" Width="238px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="messagevalid" runat="server" ErrorMessage="Please insert your message" ForeColor="Red" ControlToValidate="TxtMessage"></asp:RequiredFieldValidator>
     <asp:Literal ID="LitMessage" runat="server"></asp:Literal>
    </div>
       
     <div id="Submit">

    <asp:Button ID="Submitbtn" runat="server" Text="SUBMIT" OnClick="Submitbtn_Click" />
    
    
    </div>    
    
   
    <div id="gcmap"></div>

    <script async defer 
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDL9ggxORMxKQE2S3JaxC_C3xyFIkAYE3M&callback=initMap">
</script>

    <script src="MapJavascript.js"></script>
</div>



     <a href="https://validator.w3.org/nu/?doc=http%3A%2F%2F1525592.studentwebserver.co.uk%2Fco5027%2FContact.aspx" >Validation for HTML</a>

</asp:Content>
