<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Addhar_management.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style>
        :root {
            --link-color: #6C4BB4;
            --primary-color-opacity: #e9d5ff;
            --white-shade: #f0f8ff;
            --secondary-color: #1e293b;
            --primary-padding: 8px;
            --pilled-shape-radius: 40px;
            --color1: #36EB84;
            --color2: #2BCDB5;
           --primary-gradient: linear-gradient(to right,var(--color2), var(--color1))
        }



        .submit{
            align-content: center;
            width: 30%;
            margin-left: 35%;
        }
        .container {
            padding: 15px;
            background-image: url('https://www.begindot.com/wp-content/uploads/2019/01/Best-CSS-Registration-Form-Templates.png');
            background-repeat: no-repeat;
            background-size:cover;
            border-radius: 10px;
            box-shadow: 2px 2px 10px #353636;
            color: white;
            margin-top:40px;
            max-width:500px;
        }
        body{
            background-image: url('https://t4.ftcdn.net/jpg/02/09/96/11/360_F_209961108_cUkIlK3BzAso88hd45zZPUGWY6lqBsse.jpg');
            background-size: cover;
            background-repeat:no-repeat;
        }

        .item-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .log-in {
            font-size: 35px;
            color: var(--secondary-color);
        }

            .log-in::after {
                content: "";
                display: block;
                width: 60%;
                height: 3px;
                margin-top: 8px;
                background: var(--primary-gradient);
                margin-inline: auto;
            }
            

        .form-input {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px;
        }

        .textbox {
            width: 386px;
            border-radius: var(--pilled-shape-radius);
            border: none;
            background: #E7FDF0;
            color: var(--secondary-color);
            outline: none;
            border: 1px solid transparent;
        }

        @media only screen and (max-width: 300px) {
            .textbox {
                width: 200px;
            }
        }

        .textbox:focus-visible {
            border: 1px solid var(--color1);
            background: transparent;
        }

        .label {
            color: var(--secondary-color);
            margin-bottom: 3px;
        }

        .display-space-between {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 10px 0 10px 0;
        }

        .item-container button {
            border-radius: 50%;
            border: none;
            padding: 5px;
            background: transparent;
            margin-left: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 2px 2px 5px #353636;
        }

        

        .chekbox-label {
            font-size: 14px;
        }

        a {
            text-decoration: none;
            color: var(--link-color);
            font-size: 14px;
        }
    .footer {
            position:relative;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: black;
            color: white;
            text-align: center;
         }
    </style> 
    <title>Register</title>

</head>
<body>
    <form id="register" runat="server">
        <div class="container">
            <div class="item-container">
                <h2 class="log-in">Register yourself</h2>
            </div>
            <div class="item-container">
                <p>Fill up the mentioned details:</p>
            </div>
             <div class="form-input">
                    <label for="Email" class="label">Name:</label>
                    <input ID="name" type="text" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
                <div class="form-input">
                    <label for="email" class="label">Email</label>
                    <input ID="email" type="email" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>
            </div>
             <div class="form-input">
                    <label for="mobile" class="label">Mobile No.</label>
                    <input ID="Mobile" type="number" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID" required>
                    <br />
                    <asp:RegularExpressionValidator ID="mobile_error" runat="server" BackColor="Red" ControlToValidate="Mobile" ErrorMessage="Mobile Number Must Be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
             <div class="form-input">
                    <label for="dob" class="label">Date_of_birth:</label>
                    <input ID="dob_input" type="date" class="textbox" runat="server" style="height:100px; border-radius:unset;" aria-required="true" Width="372px"  Text="Enter Your emailID" required>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
                <div class="form-input">
                    <label for="password" class="label">Password</label>
                    <input ID="Password" type="password" class="textbox" runat="server" Width="355px" aria-required="true" Text="Password" CausesValidation="True" Visible="True" required><asp:RegularExpressionValidator ID="password_validation" runat="server" BackColor="Red" ControlToValidate="Password" ErrorMessage="Password must be of Alphanumeric values and length of 8" ValidationExpression="[0-9|a-z|A-Z]{8}"></asp:RegularExpressionValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                <div class="form-input">
                    <label for="password" class="label">Confirm Password</label>
                    <input ID="confirmPassword" type="password" class="textbox" runat="server" Width="355px" aria-required="true" Text="Password" CausesValidation="True" Visible="True" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                <div>
                    </br>
                   
                    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="submit" runat="server" Text="Submit" Width="76px" OnClick="onRegister" />
                   
                    
                </div>
        </div>
         <div class="footer">
            <p>&copy All Rights are Resersed.</p>
        </div>
        
    </form>
</body>
</html>
