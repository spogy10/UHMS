<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Next.aspx.cs" Inherits="Registration.Applicants.Next" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <style>
.center {
    padding: 70px 0;
   
}
</style>

    <div class="center">
    
        <h1>Registration Form</h1>

    <asp:Label ID="lblFaculty" runat="server" Text="Faculty"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlFaculty" runat="server">
        <asp:ListItem>FENC</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
     <asp:Label ID="lblyear" runat="server" Text="Academic Year"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtyear" runat="server" ></asp:TextBox>
    <br />

    <h1>Contact Info</h1>
     <asp:Label ID="lblcell" runat="server" Text="Cell Phone"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtcell" runat="server" ></asp:TextBox>
    
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
     <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
    <br />

    <h1>Medical Information</h1>
    <p>State any known Medical Problems</p>
<textarea id="TextAreaMed" cols="20" rows="2"></textarea>

    <p>Are you physically challenged?</p>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:CheckBoxList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcell" CssClass="alert-danger" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />

    <p>Hall Preference</p>
    <asp:DropDownList ID="ddldorm" runat="server">
        <asp:ListItem>Garvey Hall</asp:ListItem>
        <asp:ListItem>Hall A</asp:ListItem>
        <asp:ListItem>Hall B</asp:ListItem>
        <asp:ListItem>Hall E</asp:ListItem>
        <asp:ListItem>Falcon</asp:ListItem>
        <asp:ListItem>Farquharson</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <h1> Financial Information</h1>
    <p>Guardian's Occupation</p>

    <asp:TextBox ID="txtoccupancy" runat="server"></asp:TextBox>
    <br />
    <br />
    <p>No. of dependents under parents’/guardians’ care? </p>
    <asp:TextBox ID="txtdependents" runat="server"></asp:TextBox>
    <br />
    <p>Who will finance you for the upcoming academic year in relation to you? </p>
     <asp:TextBox ID="txtrel" runat="server"></asp:TextBox>

    <p> Extra Curricular Activities</p>
    <textarea id="TextAreaex" cols="20" rows="2"></textarea>
    <br />
    <br />
    <p>Attributes that describe you</p>
    <textarea id="Textchara" cols="20" rows="2"></textarea>
    <br />
    <br />
    <p>Submitting the form you hereby certify that the information given above is true and declare that I will comply with the rules and regulations listed in both the general Student and Resident Student Handbooks.</p>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-primary" OnClick="btnSubmit_Click" />

        </div>
</asp:Content>
