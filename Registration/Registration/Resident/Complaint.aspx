<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="Registration.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>Make complaint here:</p>
    <asp:TextBox ID="txtcomp" runat="server" Height="324px" OnTextChanged="txtcomp_TextChanged" Width="634px"></asp:TextBox>

    <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Button1_Click" />
    <br />
    
</asp:Content>
