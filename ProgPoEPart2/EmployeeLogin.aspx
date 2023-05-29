<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="ProgPoEPart2.EmployeeLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
            .formstyle {
                height:100vh
            }

            
        .auto-style1 {
            height: 20px;
        }
        </style>
    <h1><center>Employees login</center>  
    </h1>
 <body>
   
     <center>
          <table class="nav-justified">
              <tr>
                  <td>
                    <center> <asp:Label ID="lblEmployeeName" runat="server" Text="Employee Name:"></asp:Label></center>
                  </td>
                  <td>
                   <center> <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox> </center>
                  </td>
              </tr>
              <br />
              <tr>
                  <td>
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td>
                     <center> <asp:Label ID="lblEmployeePassword" runat="server" Text="Password:"></asp:Label></center>
                  </td>
                  <td>
                    <center>  <asp:TextBox ID="txtEmployeePassword" runat="server" TextMode="Password"></asp:TextBox></center>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style1" colspan="2">
                      <center><asp:Label ID="lblError" runat="server" Text=""></asp:Label></center>
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      <center><asp:Button ID="btnSubmit" runat="server" Text="Login" Width="86px" OnClick="btnSubmit_Click" /></center>
                  </td>
              </tr>
         </table>
         </center>
 </body>
</asp:Content>
