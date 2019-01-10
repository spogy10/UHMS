<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration._Default" %>

<%@ Register Assembly="Custom" Namespace="Custom" TagPrefix="cc1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">




     <br />
    <br />

    <h1>Registration Form</h1>

    <div class="d-inline bg-success">
       
    <asp:Label ID="lblFirstame" runat="server" Text="Firstname"></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-rounded"></asp:TextBox>

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

     <asp:Label ID="lblMiddleName" runat="server" Text="Middle name"></asp:Label>
     <asp:TextBox ID="txtMiddleName" runat="server" ></asp:TextBox>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Label ID="lblLastName" runat="server" Text="Last name"></asp:Label>
     <asp:TextBox ID="txtLastName" runat="server"   ></asp:TextBox>
          <br />
        <br />
          </div>  
   <br />
    <br />
    

      <div class= "d-inline bg-success">
        
    <asp:Label ID="lblid" runat="server" Text="Id Number"></asp:Label>

    <asp:TextBox ID="txtIdNumber" runat="server"   ></asp:TextBox>

    &nbsp;&nbsp;&nbsp;

           <asp:Label ID="lblstreet" runat="server" Text="Street"    ></asp:Label>

    <asp:TextBox ID="txtstreet" runat="server" ></asp:TextBox>
    

          
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    

          
            <asp:Label ID="lbltown" runat="server" Text="Town"    ></asp:Label>

    <asp:TextBox ID="txttown" runat="server"></asp:TextBox>


             <asp:Label ID="lblparish" runat="server" Text="Parish"  ></asp:Label>

    <asp:TextBox ID="txtparish" runat="server" ></asp:TextBox>

    </div>
        

       
     <br />
    <br />
    
    
      <div class= "d-inline bg-success">
   

   

    <asp:Label ID="lblNationality" runat="server" Text="Nationality"></asp:Label>
    <asp:DropDownList ID="ddlNationality" runat="server">
        <asp:ListItem>Jamaican</asp:ListItem>
        <asp:ListItem>American</asp:ListItem>
        <asp:ListItem>Cuban</asp:ListItem>
        <asp:ListItem>Chinese</asp:ListItem>
          </asp:DropDownList>

   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   
    <asp:Label ID="lbltelephone" runat="server" Text="Telephone"></asp:Label>
    <asp:TextBox ID="txttelephone" runat="server"   ></asp:TextBox>

    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    
    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
    <asp:DropDownList ID="ddlgender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:DropDownList>


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"  ></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
    <br />
    <br />
  
            <asp:Label ID="lblCharacteristics" runat="server" Text="State personal Characteristics benefical to the dorm community"></asp:Label>

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             <textarea id="TxtCharacteristics" cols="80" rows="16"></textarea>


        <br />
     <br />


        <asp:Label ID="lbldob" runat="server" Text="Date of Birth"></asp:Label>

  
    <cc1:CustomCalendar ID="CustomCalendar1" runat="server"  ImageButtonImageUrl="/Images/calendar.png" />

     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdNumber" ErrorMessage="id missing" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Firstname missing" ForeColor="Red"></asp:RequiredFieldValidator>
     <br />
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="lastname missing" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />
    <br />

    <asp:Button ID="btnSubmit" runat="server" Text="Next"  CssClass="btn btn-primary" OnClick="btnSubmit_Click1" />


</asp:Content>
