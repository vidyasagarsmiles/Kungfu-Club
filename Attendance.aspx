<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="stephanos_School.web_Pages.Attendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="main_header">
        <div class="subheader">
            <h1>
                Welcome to Stephanos Kungfu School: Attendance
            </h1>
        </div>
        <div class="part_2">
            <table class="attendance">
                <tr>
                    <td>
                        Student Id 
                    </td>
                    <td>
                        <asp:TextBox ID="txtstudentid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                          Class
                    </td>
                  <td>
                      <asp:DropDownList ID="ddClass" runat="server">
                          <asp:ListItem Value="603">Beginner</asp:ListItem>
                          <asp:ListItem Value="604">Intermediate</asp:ListItem>
                          <asp:ListItem Value="604">Advanced</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                    <td>
                        Is Present?
                    </td>
                    <td>
                        <asp:RadioButtonList ID="radiobutton" runat="server" Width="100px" >
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="search_student">
            <div class="search_part1">
                <h1> Get the attendace details of student </h1>
            </div>
            <div class="search_part2">
                <table>
                    <tr>
                        <th>
                            Please enter Student Id:
                        </th>
                        <th>
                            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                        </th>
                        <th>
                            <asp:Button ID="btnSearch" runat="server" Text="Search" />
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="stu_id" HeaderText="STUDENT ID" SortExpression="stu_id" />
                                    <asp:BoundField DataField="Student_First_Name" HeaderText="STUDENT FIRST NAME" SortExpression="Student_First_Name" />
                                    <asp:BoundField DataField="Student_Last_name" HeaderText="STUDENT LAST NAME" SortExpression="Student_Last_name" />
                                    <asp:BoundField DataField="cls_type" HeaderText="CLASS TYPE" SortExpression="cls_type" />
                                    <asp:BoundField DataField="Attendance_Taken_date" HeaderText="ATTENDANCE TAKEN DATE" SortExpression="Attendance_Taken_date" />
                                    <asp:BoundField DataField="is_Present" HeaderText="IS PRESENT?" SortExpression="is_Present" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="getStudentAttendancebyId" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtSearch" Name="id" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
