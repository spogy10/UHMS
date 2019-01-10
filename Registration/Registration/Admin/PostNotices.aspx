<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostNotices.aspx.cs" Inherits="Registration.PostNotices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="ddlrecp" runat="server" OnSelectedIndexChanged="ddlrecp_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="email"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBSConnection %>" SelectCommand="SELECT [email] FROM [Profiles]"></asp:SqlDataSource>

    <br />
    <br />
    <asp:TextBox ID="txtmessage" runat="server" Height="158px" Width="343px"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="btnPost" runat="server" Text="Post" CssClass="btn btn-success" OnClick="btnPost_Click" />

    <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" CssClass="btn btn-primary" />

</asp:Content>
