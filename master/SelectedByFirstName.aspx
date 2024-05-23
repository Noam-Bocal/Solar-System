<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SelectedByFirstName.aspx.cs" Inherits="master.SelectedByFirstName" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }

        h1 {
            color: #4a4a4a;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
            margin-bottom: 20px;
            text-align:center;
        }

        h2 {
            color: #2a7bd7;
            margin-top: 20px;
            text-align: left;
            text-align:center;
        }

        h3 {
            color: #2a7bd7;
            margin-top: 20px;
            text-align: center;
        }

        p {
            color: #666;
            line-height: 1.5;
            font-size: 16px;
            margin-bottom: 20px;
            text-align: justify;
        }

        a {
            text-decoration: none;
            color: #2a7bd7;
        }

        a:hover {
            text-decoration: underline;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2> Users whose first name starts with the letter A</h2>

    <table>
        <%= st %>
    </table>

    <h3><%= msg %></h3>
</asp:Content>
