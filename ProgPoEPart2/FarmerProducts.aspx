<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.Master" AutoEventWireup="true" CodeBehind="FarmerProducts.aspx.cs" Inherits="ProgPoEPart2.FarmerProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" Text="Farmer Product information:"></asp:Label>
            </td>
            <td colspan="2" rowspan="10">
                <asp:GridView ID="FarmerView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="213px" Width="438px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FarmerID" HeaderText="FarmerID" InsertVisible="False" ReadOnly="True" SortExpression="FarmerID" />
                        <asp:BoundField DataField="FarmerName" HeaderText="FarmerName" SortExpression="FarmerName" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="DateDelivered" HeaderText="DateDelivered" SortExpression="DateDelivered" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT F.FarmerID, F.FarmerName, P.ProductName, FP.Amount, FP.DateDelivered From FarmerProduct FP, Farmer F, Products P WHERE P.ProductID = FP.ProductID"></asp:SqlDataSource>
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
