<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowDatabase.aspx.cs" Inherits="Task.Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:'Comic Sans MS'">
            <h1>Database</h1>
            <div class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="" Visible="false" ></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </div>
            
                <%--<asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" EnableTheming="True" Height="642px" Width="1124px" Visible="False">--%>
            
            <div>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="115px" Width="1123px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                                <asp:BoundField DataField="Sr.Noo" HeaderText="Sr.No">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Company Namee" HeaderText="CompanyName">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="GSTINo" HeaderText="GST NO">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="StartDatee" HeaderText="StartDate">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EndDatee" HeaderText="EndDate">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="TurnoverAmounte" HeaderText="TurnoverAmount">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ContactEmaile" HeaderText="ContactEmail">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ContactNumbere" HeaderText="ContactNumber">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
             
                </div>
            <%--</asp:Panel>--%>
        </div>
    </form>
</body>
</html>
