<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Engine_news.Home" %>

<!DOCTYPE html>
<!--pagina de inregistrare-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 0px;
        }
        .auto-style2 {
            text-align: right;
            width: 174px;
        }
        .auto-style3 {
            width: 174px;
            height: 23px;
        }
        .auto-style4 {
            width: 174px;
            height: 67px;
        }
        .auto-style5 {
            height: 67px;
        }
        .auto-style8 {
            text-align: right;
            width: 174px;
            height: 29px;
        }
        .auto-style9 {
            height: 29px;
        }
        .auto-style11 {
            height: 29px;
            width: 287px;
            text-align: center;
        }
        .auto-style13 {
            height: 67px;
            width: 287px;
            text-align: center;
        }
        .auto-style14 {
            text-align: right;
            width: 174px;
            height: 32px;
        }
        .auto-style15 {
            width: 287px;
            height: 32px;
            text-align: center;
        }
        .auto-style16 {
            height: 32px;
        }
        .auto-style17 {
            font-weight: bold;
        }
        .auto-style18 {
            width: 287px;
            text-align: center;
        }
        .auto-style19 {
            width: 287px;
            height: 23px;
            text-align: center;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style21 {
            margin-left: 0px;
        }
        .auto-style22 {
            text-align: right;
            width: 174px;
            height: 26px;
        }
        .auto-style23 {
            width: 287px;
            text-align: center;
            height: 26px;
        }
        .auto-style24 {
            margin-bottom: 0px;
        }
        .auto-style25 {
            margin-left: 59px;
        }
    </style>
</head>
<body>
     <h3>Create an Account!</h3>
    <form id="form1" runat="server">
        <table class="auto-style1">

               <!--First name-->
              <tr>
                <td class="auto-style8">First_name:</td>
                   <td class="auto-style18">
                    <asp:TextBox ID="TextBoxFN" runat="server" Width="180px"></asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFN" ErrorMessage="Enter yout first name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <!--Last name-->
              <tr>
                <td class="auto-style22">Last_name:</td>
                  <td class="auto-style23">
                    <asp:TextBox ID="TextBoxLN" runat="server" Width="180px"></asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLN" ErrorMessage="Enter your last name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <!--CNP-->
              <tr>
                <td class="auto-style8">CNP:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxCNP" runat="server" Width="180px" MaxLength="13"></asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCNP" ErrorMessage="Enter your Personal Identification Number!" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxCNP" Enabled="False" ErrorMessage="Must be 13 digits!" ForeColor="#660033" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <!--Birth Day-->
              <tr>
                <td class="auto-style8">Birth_Date:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxBD" runat="server" Width="180px">DD</asp:TextBox>
                </td>
                   <td aria-atomic="True">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxBD" ErrorMessage="Enter your birth day!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Birth Month-->
              <tr>
                <td class="auto-style8">Birth_Month:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxBM" runat="server" Width="180px">MM</asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxBM" ErrorMessage="Enter your birth month!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Birth Year-->
              <tr>
                <td class="auto-style8">Birth_Year:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxBY" runat="server" Width="180px">YYYY</asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxBY" ErrorMessage="Enter your birth year!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Address-->
              <tr>
                <td class="auto-style8">Address:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Width="180px"></asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="Enter your home address!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Phone-->
              <tr>
                <td class="auto-style8">Phone:</td>
                  <td class="auto-style18">
                    <asp:TextBox ID="TextBoxPhone" runat="server" Width="180px"></asp:TextBox>
                </td>
                   <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Enter your phone!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--User  name-->
            <tr>
                <td class="auto-style2">User name:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="Create a user name!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Email-->
            <tr>
                <td class="auto-style8">E-mail:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Your email address!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid email id!" ForeColor="#FF33CC" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Height="50px" CssClass="auto-style25"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <!--Password-->
            <tr>
                <td class="auto-style2">Password:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxPass" runat="server" Height="20px" TextMode="Password" Width="180px" CssClass="auto-style24" MaxLength="10"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <!--PAROLA POATE FI DE INTRE 0..9-->
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password length must be between 7 to 10 characters" ValidationExpression="[0-9]{7,10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <!--Confirm Pass-->
            <tr>
                <td class="auto-style14">Confirm Password:</td>
                <td class="auto-style15"><strong>
                    <asp:TextBox ID="TextBoxRePass" runat="server" CssClass="auto-style17" TextMode="Password" Width="180px"></asp:TextBox>
                    </strong></td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxRePass" ErrorMessage="You must confirm password!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRePass" ErrorMessage="Password must be the same!" ForeColor="#FF0066" CssClass="auto-style21" Height="50px"></asp:CompareValidator>
                </td>
            </tr>

            <!--Gender-->
            <tr>
                <td class="auto-style8">Gender:</td>
                 <td class="auto-style18">
                     <asp:DropDownList ID="DropDownListGender" runat="server" Width="180px">
                         <asp:ListItem>Female</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Unspecified</asp:ListItem>
                     </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGeb" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Please choose Female/Male/Unspecified!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <!--Country-->
            <tr>
               <td class="auto-style8">Country:</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>RO</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>GE</asp:ListItem>
                        <asp:ListItem>FR</asp:ListItem>
                        <asp:ListItem>BG</asp:ListItem>
                        <asp:ListItem>RU</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>DE</asp:ListItem>
                        <asp:ListItem>JP</asp:ListItem>
                        <asp:ListItem>CN</asp:ListItem>
                        <asp:ListItem>GR</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Please select a country!" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <!--Type-->
            <tr>
                <td class="auto-style8">Type:</td>
                 <td class="auto-style18">
                     <asp:DropDownList ID="DropDownListType" runat="server" Width="180px">
                         <asp:ListItem>Doctor</asp:ListItem>
                         <asp:ListItem>Pacient</asp:ListItem>
                         <asp:ListItem>Admin</asp:ListItem>
                     </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownListType" ErrorMessage="Please choose Doctor/Pacient/Admin!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>


            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style19">
            <!--Submit-->
                    <asp:Button ID="ButtonSub" runat="server" Height="24px" OnClick="Button_Submit" Text="Submit" />
            <!--Reset-->
                    <input id="Reset1" type="reset" value="Reset" /></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style13"></td>
                <td class="auto-style5"></td>
            </tr>
        </table>
    </form>
</body>
</html>
