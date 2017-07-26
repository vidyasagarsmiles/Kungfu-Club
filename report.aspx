<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="stephanos_School.web_Pages.report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main_header">
        <div class="sub_header_1">
            <h1>
                Get Student Report by Status
            </h1>
        </div>
      <div class="sub_header">
          <table>
              <tr>
                  <th>
                      <asp:DropDownList ID="ddStatus" runat="server">
                          <asp:ListItem Value="yes">Active</asp:ListItem>
                          <asp:ListItem Value="No">Not Active</asp:ListItem>
                      </asp:DropDownList>
                  </th>
                  <th>
                      <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                  </th>
              </tr>
              <tr>
                  <th>
                      <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID">
                          <Columns>
                              <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                              <asp:BoundField DataField="STUDENT_FIRST_NAME" HeaderText="STUDENT FIRST NAME" SortExpression="STUDENT_FIRST_NAME" />
                              <asp:BoundField DataField="STUDENT_LAST_NAME" HeaderText="STUDENT LAST NAME" SortExpression="STUDENT_LAST_NAME" />
                              <asp:BoundField DataField="STUDENT_GENDER" HeaderText="GENDER" SortExpression="STUDENT_GENDER" />
                              <asp:BoundField DataField="STUDENT_COUNTRY" HeaderText="COUNTRY" SortExpression="STUDENT_COUNTRY" />
                              <asp:BoundField DataField="cls_type" HeaderText="ClASS" SortExpression="cls_type" />
                              <asp:BoundField DataField="ISACTIVE" HeaderText="STATUS" SortExpression="ISACTIVE" />
                              <asp:BoundField DataField="belt_color" HeaderText="BELT" SortExpression="belt_color" />
                          </Columns>
                      </asp:GridView>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SKU_ProjectConnectionString %>" SelectCommand="getreportbystatus" SelectCommandType="StoredProcedure">
                          <SelectParameters>
                              <asp:ControlParameter ControlID="ddStatus" Name="status" PropertyName="SelectedValue" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </th>
              </tr>
              </table>
       </div>
        <div class="part_2">
            <table>
                <tr>
                    <th>
                        Enter Year to Search For Student Details:
                    </th>
                    <th>
                        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
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
                        Hit Search to get the Student Details:
                    </th>
                    <th>
                        <asp:Button ID="Button1" runat="server" Text="Search" />
                    </th>
                </tr>
                <tr>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                            <asp:BoundField DataField="STUDENT_FIRST_NAME" HeaderText="STUDENT FIRST NAME" SortExpression="STUDENT_FIRST_NAME" />
                            <asp:BoundField DataField="STUDENT_LAST_NAME" HeaderText="STUDENT LAST NAME" SortExpression="STUDENT_LAST_NAME" />
                            <asp:BoundField DataField="STUDENT_GENDER" HeaderText="STUDENT GENDER" SortExpression="STUDENT_GENDER" />
                            <asp:BoundField DataField="STUDENT_COUNTRY" HeaderText="STUDENT COUNTRY" SortExpression="STUDENT_COUNTRY" />
                            <asp:BoundField DataField="cls_type" HeaderText="CLASS" SortExpression="cls_type" />
                            <asp:BoundField DataField="belt_color" HeaderText="BELT" SortExpression="belt_color" />
                            <asp:BoundField DataField="ISACTIVE" HeaderText="ISACTIVE" SortExpression="ISACTIVE" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SKU_ProjectConnectionString %>" SelectCommand="getreportbyYearandBelt" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddbelt" Name="rankId" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="txtSearch" Name="year" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
