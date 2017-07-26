<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentPayment.aspx.cs" Inherits="stephanos_School.web_Pages.studentPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main_header">
    <div class="sub_header">
        <div class="payment_search">

        </div>
        <div class="payment_insertion">
            <div class="part_1">
                <table class="payment_details">
                    <tr>
                        <th>
                            Student Id:
                        </th>
                        <th>
                            <asp:TextBox ID="txtstudent" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Class 
                        </th>
                        <th>
                            <asp:DropDownList ID="ddClass" runat="server">
                                <asp:ListItem Value="603">Beginner</asp:ListItem>
                                <asp:ListItem Value="604">Intermediate</asp:ListItem>
                                <asp:ListItem Value="605">Advanced</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Product Type:
                        </th>
                        <th>
                            <asp:DropDownList ID="ddProduct" runat="server">
                                <asp:ListItem Value="3">Books</asp:ListItem>
                                <asp:ListItem Value="1">Test</asp:ListItem>
                                <asp:ListItem Value="2">Membership</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Payment Type:
                        </th>
                        <th>
                            <asp:DropDownList ID="ddPayment" runat="server">
                                <asp:ListItem>Visa</asp:ListItem>
                                <asp:ListItem>Cash</asp:ListItem>
                                <asp:ListItem>Cheque</asp:ListItem>
                                <asp:ListItem>Debit</asp:ListItem>
                            </asp:DropDownList>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Payment Amount
                        </th>
                        <th>
                            <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="btnPay" runat="server" Text="Pay" OnClick="btnPay_Click" />
                        </th>
                        <th>
                            <asp:Button ID="bthReset" runat="server" Text="Reset" OnClick="bthReset_Click" />
                        </th>
                    </tr>
                </table>
            </div>
            <div class="part_2">
                <div class="part_2_header">
                    <h1>Payment Report</h1>
                </div>
                <div>
                <table>
                    <tr>
                        <th>
                            Start Date:
                        </th>
                        <th>
                            <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            End Date:
                        </th>
                        <th>
                            <asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <asp:Button ID="bthSearch" runat="server" Text="Search"  />
                        </th>
                        <th>
                            <asp:Button ID="btnReset" runat="server" Text="Reset" />
                        </th>
                    </tr>
                </table>
                    </div>
                <div class="report_binding">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="STUD_ID" HeaderText="STUDENT ID" SortExpression="STUD_ID" />
                            <asp:BoundField DataField="STUDENT_FIRST_NAME" HeaderText="STUDENT FIRST NAME" SortExpression="STUDENT_FIRST_NAME" />
                            <asp:BoundField DataField="STUDENT_LAST_NAME" HeaderText="STUDENT LAST NAME" SortExpression="STUDENT_LAST_NAME" />
                            <asp:BoundField DataField="PRODUCT_TYPE" HeaderText="PRODUCT" SortExpression="PRODUCT_TYPE" />
                            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT PAID" SortExpression="AMOUNT" />
                            <asp:BoundField DataField="PAYMENT_TYPE" HeaderText="PAYMENT TYPE" SortExpression="PAYMENT_TYPE" />
                            <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAID DATE" SortExpression="PAYMENT_DATE" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SKU_ProjectConnectionString %>" SelectCommand="getPaymentDetailsbyStudent" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtStartDate" DbType="Date" DefaultValue="" Name="indate" PropertyName="Text" />
                            <asp:ControlParameter ControlID="txtEndDate" DbType="Date" Name="outdate" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
