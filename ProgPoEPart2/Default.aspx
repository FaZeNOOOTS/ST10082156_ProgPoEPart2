<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProgPoEPart2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html>
        <style type="text/css">
            .formstyle {
                height:100vh
            }

            body {
                background-image: url(back.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    <div class="jumbotron" style="background-color:#90EE90">
        <h1>Farm Central</h1>
        <p class="lead">Welcome to the official Farm Central Database Web Application.</p>      
    </div>

    <div class="row">
        <div class="col-md-4">
            <center>
            <center>
            <p><asp:Button ID="Button1" runat="server" Text="Login as Farmer" OnClick="Button1_Click" /></p>
            <p><asp:Button ID="Button2" runat="server" Text="Login as Employee" OnClick="Button2_Click" /></p> 
                </center>
                <br />
                <center>
            <asp:Button ID="Button3" runat="server" Text="Register as Employee" Width="247px" OnClick="Button3_Click" />
                </center>
            </center>
            <!--<p></p>
            <p>
                <!--<a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2></h2>
            <p>
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2></h2>
            <p>
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p> -->
        </div> 
    </div>
    </html>
</asp:Content>
