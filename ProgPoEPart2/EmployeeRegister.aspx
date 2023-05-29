<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeRegister.aspx.cs" Inherits="ProgPoEPart2.EmployeeRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <title>Employee Registration</title>
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
                <center><label for="txtEmployeeName">Employee Name:</label>
                <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox></center>
            </div>
            <div class="form-group">
                <center><label for="lblEmployeePassword">Employee Password:</label>
                <asp:TextBox ID="txtEmployeePassword" runat="server" TextMode="Password"></asp:TextBox>
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
