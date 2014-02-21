<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="imbMain" runat="server" Height="84px" Width="970px" />
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:ImageButton ID="imbSearch" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollorConnection %>" SelectCommand="SELECT [Red], [Green], [Blue], [Name] FROM [Colors] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="HexId" DataSourceID="SqlDataSource1">
            <ItemTemplate>
&nbsp;<table style="width:100%;">
                    <tr>
                        <td>Name:</td>
                        <td>Red:</td>
                        <td>Green:</td>
                        <td>Blue:</td>
                        <td>Hex Code</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RedLabel" runat="server" Text='<%# Eval("Red") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GreenLabel" runat="server" Text='<%# Eval("Green") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BlueLabel" runat="server" Text='<%# Eval("Blue") %>' />
                        </td>
                        <td>
                            <asp:Label ID="lblHex" runat="server" Text='<%#  %>'></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" />
    
    </div>
    </form>
</body>
</html>
