<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="stephanos_School.web_Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
<link href='http://fonts.googleapis.com/css?family=Raleway:300,200' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel="stylesheet" href="style.css">
<head runat="server">
    <title></title>
    <style>
        .header{
            font-size: 30px;
        }
        #column_1{
            font-size: 20px;
             padding:8px;
        }
         #column_2{
            font-size: 20px;
             padding:10px;
        }
        .main_form{
            margin-left:20px;
            margin-top:1%;
            color:black;
            font-weight:bolder;
            max-width:500px;
        }
        .btn {
        padding: 10px 20px;
        width: 100%;
        font-size: 1.2rem;
        font-family: Raleway;
        font-weight: bold;
        display: block;
        color: white;
        position: relative;
        border: 1px solid rgba(255, 255, 255, 0.4);
        background-color:black;
        -moz-border-radius: 6px;
        -webkit-border-radius: 6px;
        border-radius: 6px;
        cursor: pointer;
        width:250px;
        margin-left:50px;
        
    }

         .btn:focus {
            outline: none;
        }

        .btn:hover {
            color: white;
            border: 1px solid white;
        }

        .btn.recover {
            background: #FF2B4B;
            color: white !important;
            border: 1px solid white !important;
            transition: all 400ms linear;
        }
    .topbar.error + .submit {
        color: white;
    }
    .topbar.success + .submit {
        color: white;
        border: 1px solid white;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form_class">
            <div class="Header">
                <h1 class="header"> STUDENT REGISTRATION FORM </h1>
            </div>
            <div class="main_form">
                <table class="main_table">
                    <tr>
                        <th id="column_1">
                            Student Id:
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtstudentId" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr id="row_table">
                        <th id="column_1"> First Name: </th>
                        <th id ="column_2"> 
                            <asp:TextBox ID="txtfirstName" class="txtbox" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr id="row_2_table">
                        <th id="column_1">
                            Last Name:
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtlastName" class="txtbox" runat="server"></asp:TextBox>

                        </th>
                    </tr>
                    <tr id="row_3_table">
                        <th id="column_1">
                            Email :
                        </th>
                        <th id="column_2">

                            <asp:TextBox ID="txtEmail" runat="server" class="txtbox"></asp:TextBox>

                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Date Of Birth:
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtDOB" runat="server" OnTextChanged="txtDOB_TextChanged" AutoPostBack="True"></asp:TextBox>
                        </th>
                    </tr>
                    <tr id="row_4_table">
                        <th id="column_1">
                            Mobile Number
                        </th>
                        <th id="column_2">

                            <asp:TextBox ID="txtmobileNumber" runat="server" CssClass="txtbox"></asp:TextBox>

                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Date of Joining :
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtDOJ" runat="server" CssClass="txtbox"></asp:TextBox>
                         </th>
                    </tr>
                    <tr id="row_5_table"> 
                        <th id="column_1">
                            Class :
                        </th>
                        <th id="column_2">

                            <asp:DropDownList ID="ddClass" runat="server">
                                <asp:ListItem Value="603">Beginner</asp:ListItem>
                                <asp:ListItem Value="604"> INTERMEDIATE </asp:ListItem>
                                <asp:ListItem Value="605">    ADVANCED  </asp:ListItem>
                            </asp:DropDownList>

                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Belt:
                        </th>
                        <th id="column_2">
                            <asp:DropDownList ID="ddbelt" runat="server">
                                <asp:ListItem Value="701">White</asp:ListItem>
                                <asp:ListItem Value="702">Orange</asp:ListItem>
                                <asp:ListItem Value="703">Green</asp:ListItem>
                                <asp:ListItem Value="704">Red</asp:ListItem>
                                <asp:ListItem Value="705">Black</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Gender :
                        </th>
                        <th id="column_2">
                            <asp:DropDownList ID="ddGender" runat="server">
                                <asp:ListItem>    Male   </asp:ListItem>
                                <asp:ListItem>   Female   </asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            House Number:
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txthouseNumber" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                        Street Name :
                            </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtstreetName" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Country :
                        </th>
                        <th id="column_2">
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th id="column_1">
                            Is Active
                        </th>
                        <th id="column2">
                            <asp:RadioButtonList ID="rdbtnStatus" runat="server">
                                <asp:ListItem>yes</asp:ListItem>
                                <asp:ListItem>no</asp:ListItem>
                            </asp:RadioButtonList>
                        </th>
                    </tr>
                    <tr id="row_6_table">
                        <th colspan="3">
                            <asp:Table ID="ttparentDetails" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell ID="column_1" Font-Size="Large">
                                        Father First Name:
                                    </asp:TableCell>
                                    <asp:TableCell class="column_2" RowSpan="2">
                                        <asp:TextBox ID="txt_Father_Name" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Font-Size="Large">
                                        Father Last Name
                                    </asp:TableCell>
                                    <asp:TableCell  >
                                        <asp:TextBox ID="txt_Father_Last_Name" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow Font-Size="Large">
                                    <asp:TableCell >
                                        Mother First Name
                                    </asp:TableCell>
                                    <asp:TableCell >
                                        <asp:TextBox ID="txt_mother_name" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow >
                                <asp:TableRow Font-Size="Large">
                                    <asp:TableCell >
                                        Mother Last Name
                                    </asp:TableCell>
                                    <asp:TableCell >
                                        <asp:TextBox ID="txt_mother_last_name" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Font-Size="Large">
                                        Mobile Number:
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txt_mobile_number" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Font-Size="Large">
                                        House Number
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txt_parent_house_number" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Font-Size="Large">
                                        Street Name
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txt_parent_street_name" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell Font-Size="Large">
                                        Country
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox ID="txt_parent_country" runat="server"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <asp:Button ID="Button1"  class="btn" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
