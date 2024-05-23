<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="master.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            margin: 0px auto;
            direction: ltr;
            text-align: center;
        }
        h1 {
            text-align: center;
            color: black;
        }
        input {
            text-align: center;
        }
        h2 {
            text-align: center;
            direction: ltr;
        }
        h3 {
            text-align: center;
            color: maroon;
        }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User login</h1>
    <form method="post" runat="server">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="uName" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="pw" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="Sign In" />
                </td>
            </tr>
        </table>

        <h3><%=msg %></h3>
    </form>
</asp:Content>
