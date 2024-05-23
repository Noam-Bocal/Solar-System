<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="master.Update" %>
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
        }

        h2 {
            color: #2a7bd7;
            margin-top: 20px;
            text-align: left;
        }

        p {
            color: #666;
            line-height: 1.5;
            font-size: 16px;
            margin-bottom: 20px;
            text-align: justify;
        }

        .back-home {
            display: block;
            margin-bottom: 20px;
            text-align: left;
            text-decoration: none;
            color: #2a7bd7;
            font-size: 16px;
            font-weight: bold;
        }

        .back-home:hover {
            text-decoration: underline;
        }

        #backToTopButton {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            text-decoration: none;
        }

        #backToTopButton:hover {
            background-color: #0056b3;
        }

        ul {
            padding: 10px;
            margin: 0;
            list-style: circle;
        }

        li {
            margin: 10px 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
        }

        th, td {
            padding: 8px;
            text-align: right;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        ul {
            padding: 0;
            margin: 0;
            list-style: none;
        }

        ul li {
            margin: 10px 0;
            color: #666;
            line-height: 1.5;
            font-size: 16px;
            text-align: justify;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" onsubmit="return checkForm();">
        <h1 style="color:#232327;">Update data</h1>

        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="uName" id="uName" value="<%=uName %>" disabled="disabled" /></td>
                <td><input type="text" id="muName" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled" /></td>
            </tr>
            <tr>
                <td>First name:</td>
                <td><input type="text" name="fName" id="fName" value="<%=fName %>"/></td>
                <td><input type="text" id="mfName" size="50" style="display:none; background-color:silver; font-weight:bold;"/></td>
            </tr>
            <tr>
                <td>Last name</td>
                <td><input type="text" name="lName" id="lName" value="<%=lName %>"/></td>
                <td><input type="text" id="mlName" size="50" style="display:none; background-color:silver; font-weight:bold;"/></td>
            </tr>
            <tr>
                <td>Email address</td>
                <td><input type="text" name="email" id="email" value="<%=email %>"/></td>
                <td><input type="text" id="memail" size="50" style="display:none; background-color:silver; font-weight:bold;"/></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <% if (gender == "male") { %>
                        <input type="radio" name="gender" value="male" checked />Male
                        <input type="radio" name="gender" value="female" />Female
                        <input type="radio" name="gender" value="other" />Other
                    <% } else if (gender == "female") { %>
                        <input type="radio" name="gender" value="male" />Male
                        <input type="radio" name="gender" value="female" checked />Female
                        <input type="radio" name="gender" value="other" />Other
                    <% } else { %>
                        <input type="radio" name="gender" value="male" />Male
                        <input type="radio" name="gender" value="female" />Female
                        <input type="radio" name="gender" value="other" checked />Other
                    <% } %>
                </td>
            </tr>
            <tr>
                <td>Cellphone</td>
                <td dir="ltr">
                    <select name="prefix">
                        <option value="050" <%= prefix == "050" ? "selected" : "" %>>050</option>
                        <option value="051" <%= prefix == "051" ? "selected" : "" %>>051</option>
                        <option value="052" <%= prefix == "052" ? "selected" : "" %>>052</option>
                        <option value="053" <%= prefix == "053" ? "selected" : "" %>>053</option>
                        <option value="054" <%= prefix == "054" ? "selected" : "" %>>054</option>
                        <option value="055" <%= prefix == "055" ? "selected" : "" %>>055</option>
                        <option value="056" <%= prefix == "056" ? "selected" : "" %>>056</option>
                        <option value="057" <%= prefix == "057" ? "selected" : "" %>>057</option>
                        <option value="058" <%= prefix == "058" ? "selected" : "" %>>058</option>
                    </select>
                    &nbsp &nbsp - &nbsp &nbsp
                    <input type="text" name="phone" id="phone" value="<%=phone %>" />
                </td>
                <td><input type="text" id="mphone" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><select name="city" id="city">
                    <%=cityStr %>
                    </select>
                </td>
                <td><input type="text" id="mcity" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>Year of Birth</td>
                <td>
                    <select name="yearBorn" id="yearBorn">
                        <%=yearBorn %>
                    </select>
                </td>
                <td><input type="text" id="myearBorn" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>Hobbies</td>
                <td>
                    <table style="width:550px;">
                        <tr>
                            <td style="width:100px;">
                                <%if (hob1 == "T") { %>
                                    <input type="checkbox" name="hobby" value="1" checked="checked" /> Reading
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="1" /> Reading
                                <% } %>
                            </td>
                            <td>
                                <%if (hob2 == "T") { %>
                                    <input type="checkbox" name="hobby" value="2" checked="checked" /> Sports
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="2" /> Sports
                                <% } %>
                            </td>
                            <td>
                                <%if (hob3 == "T") { %>
                                    <input type="checkbox" name="hobby" value="3" checked="checked" /> Traveling
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="3" /> Traveling
                                <% } %>
                            </td>
                            <td>
                                <%if (hob4 == "T") { %>
                                    <input type="checkbox" name="hobby" value="4" checked="checked" /> Gradening
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="4" /> Gardening
                                <% } %>
                            </td>
                            <td>
                                <%if (hob5 == "T") { %>
                                    <input type="checkbox" name="hobby" value="5" checked="checked" /> Cooking
                                <% } else { %>
                                    <input type="checkbox" name="hobby" value="5" /> Cooking
                                <% } %>
                            </td>
                        </tr>
                    </table>
                </td>
                <td><input type="text" id="mhobby" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pw" id="pw" size="10" maxlength="8" value="<%=pw %>" /><span style="color:red;"></span></td>
                <td><input type="text" id="mpw" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>Confirm password</td>
                <td><input type="password" name="pw1" size="10" maxlength="8" /></td>
                <td><input type="text" id="mpw1" size="50" style="display:none; background-color:silver; font-weight:bold;" disabled="disabled"/></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" value="Update" />
                </td>
            </tr>
        </table>
    </form>

    <br />
    <h2 style="color:red;"><%=msg %></h2>
</asp:Content>
