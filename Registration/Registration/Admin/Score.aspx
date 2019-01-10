<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Score.aspx.cs" Inherits="Registration.RM.Sort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 120px">

            <h1> Sorted List of Students</h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="595px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="239px" style="margin-right: 153px">
                <Columns>
                    <asp:BoundField DataField="schoolid" HeaderText="schoolid" SortExpression="schoolid" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UBSConnection %>" SelectCommand="SELECT [schoolid], [email] FROM [Profiles]"></asp:SqlDataSource>




            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBSConnection %>" SelectCommand="SELECT [id], [schoolid] FROM [Profiles]"></asp:SqlDataSource>

            <asp:DropDownList ID="ddlstudentid" runat="server" DataSourceID="SqlDataSource2" DataTextField="schoolid" DataValueField="email"></asp:DropDownList>



            <asp:Button ID="Button2" runat="server" Text="Approve" CssClass="btn btn-success"  onclick="Button1_Click"/>

            <asp:Button ID="Button1" runat="server" Text="Return Home" Cssclass="btn btn-success" OnClick="Button1_Click1" />

<script>
function myFunction() {
    alert("Email sent!");
}
</script>
        </div>
    </form>
</body>
</html>
