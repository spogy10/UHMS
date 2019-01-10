<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Performance.aspx.cs" Inherits="Registration.Resident.Track_Performance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <body>
   
        <div>


          
            


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBSConnection %>" SelectCommand="SELECT * FROM [Applications]"></asp:SqlDataSource>
            


        &nbsp;
                                                <img src="/Images/perf1.gif" alt="Check-in" height="400" width="400"/>

            
                        <img src="/Images/perf2.gif" alt="Check-in" height="400" width="400"/>

                    &nbsp;


                                    <img src="/Images/perf1.gif" alt="Check-in" height="400" width="400"/>


                                                <img src="/Images/p.png" alt="Check-in" height="400" width="400"/>

                                    <img src="/Images/perf2.gif" alt="Check-in" height="400" width="400"/>

            <asp:Button ID="Button1" runat="server" Text="Return to Portal" CssClass="btn btn-primary" OnClick="Button1_Click"/>

        </div>

    </body>



</asp:Content>
