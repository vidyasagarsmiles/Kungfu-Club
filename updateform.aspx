<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateform.aspx.cs" Inherits="stephanos_School.web_Pages.updateform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main_header">
         <div class="sub_part">
             <div class="search_part">
                 <div class="part_1_header">
                     <h2> Please Enter Student Id </h2>
                 </div>
                 <table class="search_table">
                     <tr id="row_1">
                         <th>
                             <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                         </th>
                         <th>
                             <asp:Button ID="btnSearch" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />
                         </th>
                     </tr>
                 </table>
             </div>
             <div class="binding_Values">
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
                        <th>
                            Date Of Birth:
                        </th>
                        <th>
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
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
                        <th>
                            Date of Joining :
                        </th>
                        <th>
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
                        <th>
                            Belt:
                        </th>
                        <th>
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
                        <th>
                            Gender :
                        </th>
                        <th>
                            <asp:DropDownList ID="ddGender" runat="server">
                                <asp:ListItem>    Male   </asp:ListItem>
                                <asp:ListItem>   Female   </asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            House Number:
                        </th>
                        <th>
                            <asp:TextBox ID="txthouseNumber" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                        Street Name :
                            </th>
                        <th>
                            <asp:TextBox ID="txtstreetName" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Country :
                        </th>
                        <th>
                            <asp:TextBox ID="txtCountry" runat="server" CssClass="txtbox"></asp:TextBox>
                        </th>
                    </tr>
                    <tr id="row_6_table">
                        <th colspan="3">
                            <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />
                        </th>
                    </tr>
                </table>
            </div>
             </div>
         </div>
        <div class="sub_part_2">

        </div>
    </div>
    </form>
</body>
</html>
