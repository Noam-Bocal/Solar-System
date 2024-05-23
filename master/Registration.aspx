<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="master.Registration" %>
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

    <script>
        function validatePassword() {
            var password = document.getElementById("pw");
            var confirmPassword = document.getElementById("Checkpw");
            var errorDiv = document.getElementById("passwordMatchError");

            if (password.value != confirmPassword.value) {
                errorDiv.style.display = "block";
                confirmPassword.setCustomValidity("Passwords do not match.");
            } else {
                errorDiv.style.display = "none";
                confirmPassword.setCustomValidity("");
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
        <table style="margin-right: auto; margin-left: auto;">
            <tr>
                <td colspan="2" style="height:60px">Job Spot</td>
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" pattern="[a-zA-Z]{1}[a-zA-z0-9]{4,18}" title="Username must start with a capital letter, 5-19 characters long" required="required" name="uName" id="uName" placeholder="Enter username" size="40" style="height:25px; text-align:center; "/></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" pattern="[A-Za-z]{2,}" title="Name must be at least 2 characters long" required="required" name="fName" id="fName" placeholder="Enter first name" size="40" style="height:25px; text-align:center;"/></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" pattern="[A-Za-z]{2,}" title="Name must be at least 2 characters long" required="required" name="lName" id="lName" placeholder="Enter last name" size="40" style="height:25px; text-align:center;"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" required="required" name="email" id="email" autocomplete="on" placeholder="Enter email" size="40" style="height:25px; text-align:center;"/></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <select id="gender" name="gender" class="form-style" required="required">
                        <option>Select</option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td dir="ltr">
                    <select name="prefix">
                        <option value="050" selected>050</option>
                        <option value="052">052</option>
                        <option value="053">053</option>
                        <option value="054">054</option>
                        <option value="055">055</option>
                        <option value="057">057</option>
                        <option value="058">058</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="077">077</option>
                    </select>
                    -
                    <input name="phone" id="phone" type="tel" class="form-style" autocomplete="on" placeholder="Enter phone number" pattern="[0-9]{7}" title="Enter 7-digit phone number" required="required" checked="checked" size="30" style="height:25px; text-align:center;" />
                </td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <div class="form-group">
                        <select class="form-style" required="required" id="city" name="city">
                            <option>Tel Aviv</option>
                            <option>Jerusalem</option>
                            <option>Haifa</option>
                            <option>Netanya</option>
                            <option>Natanya</option>
                            <option>Be'er Sheva</option>
                            <option>HaSharon</option>
                            <option>Other</option>
                        </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Year Born:</td>
                <td>
                    <input id="yearBorn" type="number" name="yearBorn" autocomplete="on" placeholder="Enter year of birth" min="1960" max="2017" step="1" value="2005" required="required" checked="checked" size="30" style="height:25px; text-align:center;" />
                </td>
            </tr>
            <tr>
                <td>Hobbies:</td>
                <td>
                    <table style="width: 550px">
                        <tr>
                            <td><input type="checkbox" name="hobby" value="1" />Reading</td>
                            <td><input type="checkbox" name="hobby" value="2" />Sports</td>
                            <td><input type="checkbox" name="hobby" value="3" />Traveling</td>
                            <td><input type="checkbox" name="hobby" value="4" />Gardening</td>
                            <td><input type="checkbox" name="hobby" value="5" />Cooking</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <input id="pw" type="password" placeholder="Enter password" name="pw" pattern="[a-zA-z0-9]{6,18}" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Password must be 6-18 characters long' : ''); if (this.checkValidity()) form.Checkpw.pattern = this.value;" required="required" autocomplete="off" size="40" style="height:25px; text-align:center;"/>
                </td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <input id="Checkpw" type="password" name="Checkpw" placeholder="Confirm password" pattern="[a-zA-z0-9]{6,18}" onchange="validatePassword()" required="required" autocomplete="off" size="40" style="height:25px; text-align:center;"/>
                    <div id="passwordMatchError" style="color: red; display: none;">Passwords do not match.</div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="Submit_Click"/>
                </td>
            </tr>
        </table>
    </form>
    <%=msg %>
</asp:Content>
