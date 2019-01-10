<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Portal.aspx.cs" Inherits="Registration.Resident.Portal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:Button ID="Button1" runat="server" Text="Make Complaint" Cssclass="btn btn-default" OnClick="Button1_Click"/>

    <div class="form-group">
        <div class="row">
             <a href="Checkin.aspx"><img src="/Images/checkin.png" alt="Check-in" height="400" width="400"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <a href="https://www.utech.edu.jm/events"> <img src="/Images/events-icon.jpg" alt="Committee" height="400" width="400"> </a>

        </div>
    </div>
  
    <div class="form-group">
        <div class="row">
          <a href="Performance.aspx">  <img src="/Images/Performace.jpg" alt="Check-in" height="400" width="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
       <a href="Payment.aspx"> <img src="/Images/Accounting.png" alt="Check-in" height="400" width="400"> </a>  
        </div>
    </div>
</asp:Content>
