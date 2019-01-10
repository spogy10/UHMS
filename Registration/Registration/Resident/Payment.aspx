<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Registration.CreateAccount" %>

<%@ Register Assembly="Custom" Namespace="Custom" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>&nbsp; Payment Form</h1>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtFirstname" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label>
    <asp:TextBox ID="txtFirstname" runat="server" CssClass="form-control"></asp:TextBox>

    &nbsp;&nbsp;&nbsp;


      <asp:Label ID="lblLastname" runat="server" Text="Lastname"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtLastname" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtLastname" runat="server" CssClass="form-control"></asp:TextBox>

    <br />



    <br />

   
    <asp:Label ID="Label1" runat="server" Text="Payment Type"></asp:Label>
    <asp:DropDownList ID="ddlPaymentType" runat="server" CssClass="btn btn-secondary dropdown-toggle">
        <asp:ListItem>Boarding Fee</asp:ListItem>
        <asp:ListItem>BCF</asp:ListItem>
    </asp:DropDownList>

    <br />

 
    


    <h4>Billing Address</h4>

       <asp:Label ID="lblStreet" runat="server" Text="Street"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtStreet" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control"></asp:TextBox>

       <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>

       <asp:Label ID="lblParish" runat="server" Text="Parish/State"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtParish" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtParish" runat="server" CssClass="form-control"></asp:TextBox>


      <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtCountry" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>



          <asp:Label ID="lblcardtype" runat="server" Text="Card Type"></asp:Label>
    <asp:DropDownList ID="ddlcardtype" runat="server" CssClass="btn btn-secondary dropdown-toggle">
        <asp:ListItem>Credit Card</asp:ListItem>
        <asp:ListItem>Debit Card</asp:ListItem>
    </asp:DropDownList>


      <asp:Label ID="lblCardno" runat="server" Text="Card number:"></asp:Label>
    <asp:TextBox ID="txtcardno" runat="server" CssClass="form-control"></asp:TextBox>


       <asp:Label ID="lblcvv" runat="server" Text="CVV:"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtcvv" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="txtcvv" runat="server" CssClass="form-control"></asp:TextBox>



    <br />
     <br />
           <asp:Label ID="lblDOB" runat="server" Text="Expiration Date"></asp:Label>

    <br />
    <cc1:CustomCalendar ID="CustomCalendar1" runat="server" ImageButtonImageUrl="/Images/calendar.png" />
                      

    <br />


    <br />


      <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>          

    <br />

          <asp:Label ID="lblphone" runat="server" Text="Phone number"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtPhonenumber" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtPhonenumber" runat="server" CssClass="form-control"></asp:TextBox>          

    <br />

                <asp:Label ID="lblamount" runat="server" Text="Amount"></asp:Label>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>



       <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" CssClass=" btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" />





</asp:Content>
