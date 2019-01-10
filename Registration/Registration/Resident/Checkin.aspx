<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeBehind="Checkin.aspx.cs" Inherits="Registration.Checkin" %>

<%@ Register Assembly="Custom" Namespace="Custom" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <script>
function myFunction() {
    alert("Success!");
}
</script>

    <asp:Label ID="lblcheckindate" runat="server" Text="Check-in Date"></asp:Label>

   <cc1:CustomCalendar ID="CustomCalendar1" runat="server"  ImageButtonImageUrl="/Images/calendar.png" />


    <asp:Label ID="lblroomno" runat="server" Text="Enter room number:"></asp:Label>
    <asp:TextBox ID="Txtroomno" runat="server" CssClass="form-control"></asp:TextBox>



    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
&nbsp;<asp:Label ID="lblHall" runat="server" Text="Hall" ></asp:Label>

    <asp:TextBox ID="txthall" runat="server" CssClass="form-control"></asp:TextBox>





            <div>
<%--                <hr width="450" align="left" color="Gainsboro" />--%>
                <asp:Table ID="Table1"
                    runat="server"
                    Font-Size="X-Large"
                    Width="550"
                    Font-Names="Palatino"
                    BackColor="Orange"
                    BorderColor="DarkRed"
                    BorderWidth="2"
                    ForeColor="Snow"
                    CellPadding="5"
                    CellSpacing="5">
                    <asp:TableHeaderRow
                        runat="server"
                        ForeColor="Snow"
                        BackColor="OliveDrab"
                        Font-Bold="true">
                        <asp:TableHeaderCell>
                            <asp:Label ID="Label6" runat="server" Text="Study Desk"></asp:Label>


                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>

                             <asp:Label ID="Label7" runat="server" Text="Chairs"></asp:Label>


    <asp:CheckBoxList runat="server">
        <asp:ListItem>Needs Repair</asp:ListItem>
        <asp:ListItem>Suitable</asp:ListItem>
    </asp:CheckBoxList>

                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                               <asp:Label ID="Label8" runat="server" Text="Bulb"></asp:Label>


    <asp:CheckBoxList runat="server">
        <asp:ListItem>Needs Repair</asp:ListItem>
        <asp:ListItem>Suitable</asp:ListItem>
    </asp:CheckBoxList>


                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow
                        ID="TableRow1"
                        runat="server"
                        BackColor="OrangeRed">
                        <asp:TableCell>

                            <asp:Label ID="Lblcloset" runat="server" Text="Closet"></asp:Label>

                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>

                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label4" runat="server" Text="Door"></asp:Label>


                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="Label5" runat="server" Text="Dresser"></asp:Label>


                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow
                        ID="TableRow2"
                        runat="server"
                        BackColor="DarkOrange">
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server" Text="Bed"></asp:Label>

                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>


                        </asp:TableCell>
                        <asp:TableCell>    <asp:Label ID="Label9" runat="server" Text="Light Switch"></asp:Label>


    <asp:CheckBoxList runat="server">
        <asp:ListItem>Needs Repair</asp:ListItem>
        <asp:ListItem>Suitable</asp:ListItem>
    </asp:CheckBoxList></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow
                        ID="TableRow3"
                        runat="server"
                        BackColor="OrangeRed">
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Mattress"></asp:Label>


                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>



                        </asp:TableCell>
                        <asp:TableCell>

                            <asp:Label ID="Label3" runat="server" Text="Windows"></asp:Label>


                            <asp:CheckBoxList runat="server">
                                <asp:ListItem>Needs Repair</asp:ListItem>
                                <asp:ListItem>Suitable</asp:ListItem>
                            </asp:CheckBoxList>


                        </asp:TableCell>
                    </asp:TableRow>
                  
                   
                    <asp:TableFooterRow
                        runat="server"
                        BackColor="DarkOrange">
                       
                    </asp:TableFooterRow>
                </asp:Table>
            </div>





    <br />

    <p>I hereby confirm that the facilities checked above are in the condition described.</p>
    <br />
    <p>
        I also agree to accept full/joint responsibility for any damage or loss that may occur as a result 
        of misuse, negligence or malice and hereby consent that appropriate charges be deducted from my caution fee.
     <br />
        N.B. Students also have the responsibility for loss or damage to other Hall Facilities.
    </p>

    <asp:Button ID="Button1" runat="server" Text="Confirm " CssClass="btn btn-success" OnClick="Button1_Click"/>


    <asp:Button ID="Button2" runat="server" Text="Cancel " CssClass="btn btn-danger" OnClick="Button2_Click" />


    
       
</asp:Content>
