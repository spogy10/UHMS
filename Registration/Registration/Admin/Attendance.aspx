<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="Registration.Executives.Attendance" %>

<%@ Register Assembly="Custom" Namespace="Custom" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <br />
    <br />
        <p>Date</p>

    <cc1:CustomCalendar ID="CustomCalendar1" runat="server" />


    
    
    <br />
    <br />
    <p>Event</p>
    <asp:TextBox ID="txtEvent" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />


    
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email"></asp:DropDownList>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Email] FROM [AspNetUsers]"></asp:SqlDataSource>

<button onclick="myFunction()">Present</button>

    <asp:Button ID="Button2" runat="server" Text="Home" CssClass="btn btn-success" OnClick="Button2_Click" />

    <script>
function myFunction() {
    alert("Attendance Recorded!");
}
</script>

</asp:Content>

