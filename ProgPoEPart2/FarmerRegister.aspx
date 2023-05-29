<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMasterPage.Master" AutoEventWireup="true" CodeBehind="FarmerRegister.aspx.cs" Inherits="ProgPoEPart2.FarmerRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Farmer Registration</title>
    <style>
        .form-group {
            margin-bottom: 10px;
        }

        .form-group label {
            display: inline-block;
            width: 151px;
            text-align: right;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 200px;
        }
    </style>
<body>
        <div>
        <center><h1>Employee Registration</h1></center> 
            <div class="form-group">
                <center><label for="txtFarmerName">Farmer Name:</label>
                <asp:TextBox ID="txtFarmerName" runat="server"></asp:TextBox></center>
            </div>
            <div class="form-group">
                <center><label for="lblFarmerPassword">Farmer Password:</label>
                <asp:TextBox ID="txtFarmerPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <center><label for="lblConfirm">Confirm Password:</label>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></center>
                    <br />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </center>
            </div>
            <div class="form-group">
                <center><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></center>
            </div>
        </div>
</body>
</asp:Content>
