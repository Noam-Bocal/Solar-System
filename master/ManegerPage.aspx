<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManegerPage.aspx.cs" Inherits="master.ManegerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white;
            margin: 0 auto;
            max-width: 1300px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }

        h1 {
            color: #4a4a4a;
            text-align: center;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
            margin-bottom: 20px;
            margin-top: 20px; 
        }

        h2 {
            color: #2a7bd7;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        h3 {
            color: #333;
            margin-top: 15px;
            margin-bottom: 10px;
        }

        a {
            color: #2a7bd7;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Management Page</h1>

    <% if (Session["admin"].ToString() == "no") { %>
        <div style="text-align:center; color:red">
            <h3>No permission</h3>
            <a href="Beginning.aspx">Continue</a>
        </div>
    <% } else { %>
    <div style="text-align:center;">
        <h2><a href="ShowTable.aspx">Users Table</a></h2>
        <h2 style="color:red;"><a href="DeleteUser.aspx">Delete User</a></h2>
        <h3><a href="SelectedByFirstName.aspx">Users whose names start with the letter A</a></h3>
        <h3><a href="SelectedGmailAndCity.aspx">Users with Gmail and live in either Hadera or Eilat</a></h3>
        <h3><a href="SelectByYear.aspx">Users born in 2006</a></h3>
        <h3><a href="SelectByGenderAndYear.aspx">Male users born between 2004 and 2010</a></h3>
    </div>
    <% } %>
</asp:Content>
