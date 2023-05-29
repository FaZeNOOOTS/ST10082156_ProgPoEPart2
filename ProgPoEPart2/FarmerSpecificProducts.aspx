<%@ Page Title="" Language="C#" MasterPageFile="~/FarmerMasterPage.Master" AutoEventWireup="true" CodeBehind="FarmerSpecificProducts.aspx.cs" Inherits="ProgPoEPart2.FarmerSpecificProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" Text="Farmer Product information:"></asp:Label>
            </td>
            <td colspan="2" rowspan="10">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 235px" id="lbl">
                <asp:Label ID="Label3" runat="server" Text="Farmer ID:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">
                <asp:Label ID="Label4" runat="server" Text="Product"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlProduct" runat="server" Height="29px" Width="146px">
                    <asp:ListItem>Choose Item</asp:ListItem>
                    <asp:ListItem>Fruit</asp:ListItem>
                    <asp:ListItem>Vegetable</asp:ListItem>
                    <asp:ListItem>Milk</asp:ListItem>
                    <asp:ListItem>Meat</asp:ListItem>
                    <asp:ListItem>Alcohol</asp:ListItem>
                    <asp:ListItem>Tobacco</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">
                <asp:Label ID="Label5" runat="server" Text="Amount:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmt" runat="server" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">
                <asp:Label ID="Label6" runat="server" Text="Date Delivered:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDD" runat="server" Width="172px"  TextMode="Date"  placeholder="dd-mm-yyyy"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 235px; height: 25px;">&nbsp;</td>
            <td style="height: 25px">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 235px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 235px">
                <asp:Label ID="Label2" runat="server" Text="xxx"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="62px" OnClick="btnDelete_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 235px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="183px" OnClick="btnCancel_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 235px; height: 20px;"></td>
            <td style="height: 20px">
                </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 235px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>