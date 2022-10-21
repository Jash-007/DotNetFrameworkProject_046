<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Addhar_management.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <title>Login</title>
    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: black;
            color: white;
            text-align: center;
         }
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
            border-radius: 10px;
            box-shadow: 2px 2px 10px #353636;
            background-image: url('https://t4.ftcdn.net/jpg/04/60/71/01/360_F_460710131_YkD6NsivdyYsHupNvO3Y8MPEwxTAhORh.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            color: white;
            margin-top:40px;
            max-width:500px;
        }

        .item-container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .log-in {
            font-size: 35px;
            color: red;
        }
        #login{
            background-color:aquamarine;
            border:groove;
        }

            .log-in::after {
                content: "";
                display: block;
                width: 60%;
                height: 3px;
                margin-top: 8px;
                background-color: orange;
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
        body{
            background-image: url('https://wallpaperaccess.com/full/4893706.jpg');
            background-repeat: no-repeat;
            background-size:cover;
        }
        .display-space-between {
            color:white;
            text-emphasis-color: white;
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
        
    </style>
</head>
<body>
         <form id="loginform" runat="server">
        <div class="container">
            <div class="item-container">
                <h2 class="log-in">Login</h2>
            </div>
            <div class="item-container">
                <p>Login For Aadhar</p>
            </div>
                <div class="form-input">
                    <label for="email" class="label">Email</label>
                    <input ID="email_input" type="text" class="textbox" runat="server" aria-required="true" Width="372px" Text="Enter Your emailID">
            </div>
                <div class="form-input">
                    <label for="password" class="label">Password</label>
                    <input ID="password_input" type="password" class="textbox" runat="server" Width="355px" aria-required="true" Text="Password" CausesValidation="True" Visible="True" >
                </div>
                <div class="display-space-between">
                    <div>
                        <input type="checkbox" checked>
                        <label for="password" class="chekbox-label">Remember Me</label>
                    </div>
                    <div>
                        <a href="#">Forget password</a>
                    </div>
                </div>
                <div>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label></br>
                    <asp:Button ID="login" runat="server" Text="Login" onClick="onlogin" Width="76px"/> 
                    
                </div>
         
            <div class="display-space-between">
                <a href="Register.aspx">Register Here</a>
                <a href="#">Terms & Condition</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </div>
        </div>
        <div class="footer">
            <p>&copy All Rights are Resersed.</p>
        </div>
    </form>
</body>
</html>
