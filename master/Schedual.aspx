<%@ Page Title="Schedul" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedual.aspx.cs" Inherits="master.Schedual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
        }

        h1 {
            color: #4a4a4a;
            text-align: center;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        table {
            background-color: #fff;
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
        }

        th, td {
            padding: 8px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .pale-blue {
            background-color: #add8e6;
        }

        .pale-pink {
            background-color: #ffc0cb;
        }

        .pale-green {
            background-color: #98fb98;
        }

        .pale-yellow {
            background-color: #fffac0;
        }

        .pale-orange {
            background-color: #f5b879;
        }

        .pale-lavender {
            background-color: #d0a4d6;
        }

        .pale-mint {
            background-color: #b5e2b2;
        }

        .pale-salmon {
            background-color: #ffa07a;
        }

        .pale-turquoise {
            background-color: #afeeee;
        }

        .pale-lilac {
            background-color: #c8a2c8;
        }

        .pale-peach {
            background-color: #ffdab9;
        }

        .pale-aqua {
            background-color: #88d8b0;
        }

        .pale-rose {
            background-color: #D9544D;
        }

        .pale-lime {
            background-color: #d3ffce;
        }

        .back-home {
            display: block;
            margin-bottom: 20px;
            text-align: right;
            text-decoration: none;
            color: #2a7bd7;
            font-size: 16px;
            font-weight: bold;
        }

        .back-home:hover {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%if (Session["uName"].ToString() != "Guest")
            { %>
                <a href="Schedual.aspx">
                </a>
            <%}%>
    
    
    <h1>Student Schedule</h1>
    <table>
        <tr>
            <th>שעות</th>
            <th>ראשון</th>
            <th>שני</th>
            <th>שלישי</th>
            <th>רביעי</th>
            <th>חמישי</th>
        </tr>
        <tr>
            <td>8:00 - 8:45</td>
            <td class="pale-lime">מתמטיקה</td>
            <td class="pale-rose">היסטוריה</td>
            <td class="pale-pink">אנגלית</td>

        </tr>
        <tr>
            <td>9:45 - 11:15 </td>
            <td class="pale-lime">מתמטיקה</td>
            <td class="pale-aqua">אזרחות</td>
            <td class="pale-pink">אנגלית</td>
            <td class="pale-lime">מתמטיקה</td>
            <td class="pale-orange">ספורט</td>
        </tr>
        <tr>
            <td>11:30 - 13:00</td>
            <td class="pale-peach">פיסיקה</td>
            <td class="pale-aqua">אזרחות</td>
            <td class="pale-pink">אנגלית</td>
            <td class="pale-lime">מתמטיקה</td>
            <td class="pale-peach">פיסיקה</td>
        </tr>
        <tr>
            <td>13:15 - 14:45</td>
            <td class="pale-peach">פיסיקה</td>
            <td class="pale-rose">חינוך</td>
            <td class="pale-green">מדעי המחשב</td>
            <td class="pale-pink">אנגלית</td>
            <td class="pale-peach">פיסיקה</td>

        </tr>
        <tr>
            <td>15:00 - 16:30</td>
            <td class="pale-peach">פיסיקה</td>
            <td></td>
            <td class="pale-green">מדעי המחשב</td>
            <td class="pale-pink">אנגלית</td>
            <td class="pale-aqua">אזרחות</td>
        </tr>
    </table>
</asp:Content>
