<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Registration.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
<p>
        <asp:LoginView ID="LoginView1" runat="server">
            <LoggedInTemplate>
                You are logged in<br />
            </LoggedInTemplate>
            <AnonymousTemplate>
                You are not logged in<br />
            </AnonymousTemplate>
        </asp:LoginView>
    </p>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">



    <link href="https://fonts.googleapis.com/css?family=Droid+Serif" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Arizonia" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="mystyle.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





        <div class="video">
            
            <iframe
                src="/Images/Utech.mp4" width="1200" height="700"></iframe>
            
        </div>







    </div>
</asp:Content>
