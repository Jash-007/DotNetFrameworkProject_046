<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAdhar.aspx.cs" Inherits="Addhar_management.DisplayAdhar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Aadhar</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
        }

        .navigation {
            height: 55px;
            background: linear-gradient(45deg, #5da7fc, #74b4fe);
        }

        .brand {
            position: absolute;
            padding-left: 20px;
            float: left;
            line-height: 55px;
            text-transform: uppercase;
            font-size: 1.4em;
        }

            .brand a, .brand a:visited {
                color: #ffffff;
                text-decoration: none;
            }

        .nav-container {
            max-width: 1000px;
            margin: 0 auto;
        }

        nav {
            float: right;
        }

            nav ul {
                list-style: none;
                margin: 0;
                padding: 0;
            }

                nav ul li {
                    float: left;
                    position: relative;
                }

                    nav ul li a, nav ul li a:visited {
                        display: block;
                        padding: 0 20px;
                        line-height: 55px;
                        color: #fff;
                        background: #262626;
                        text-decoration: none;
                    }

                    nav ul li a {
                        background: transparent;
                        color: #FFF;
                    }

                        nav ul li a:hover, nav ul li a:visited:hover {
                            background: #2581DC;
                            color: #ffffff;
                        }

        .navbar-dropdown li a {
            background: #2581DC;
        }

        nav ul li a:not(:only-child):after, nav ul li a:visited:not(:only-child):after {
            padding-left: 4px;
            content: ' \025BE';
        }

        nav ul li ul li {
            min-width: 190px;
        }

            nav ul li ul li a {
                padding: 15px;
                line-height: 20px;
            }

        .navbar-dropdown {
            position: absolute;
            display: none;
            z-index: 1;
            background: #fff;
            box-shadow: 0 0 35px 0 rgba(0,0,0,0.25);
        }
        /* Mobile navigation */
        .nav-mobile {
            display: none;
            position: absolute;
            top: 0;
            right: 0;
            background: transparent;
            height: 55px;
            width: 70px;
        }

        @media only screen and (max-width: 800px) {
            .nav-mobile {
                display: block;
            }

            nav {
                width: 100%;
                padding: 55px 0 15px;
            }

                nav ul {
                    display: none;
                }

                    nav ul li {
                        float: none;
                    }

                        nav ul li a {
                            padding: 15px;
                            line-height: 20px;
                            background: #262626;
                        }

                        nav ul li ul li a {
                            padding-left: 30px;
                        }

            .navbar-dropdown {
                position: static;
            }

            @media screen and (min-width:800px) {
                .nav-list {
                    display: block !important;
                }
            }

            #navbar-toggle {
                position: absolute;
                left: 18px;
                top: 15px;
                cursor: pointer;
                padding: 10px 35px 16px 0px;
            }

                #navbar-toggle span, #navbar-toggle span:before, #navbar-toggle span:after {
                    cursor: pointer;
                    border-radius: 1px;
                    height: 3px;
                    width: 30px;
                    background: #ffffff;
                    position: absolute;
                    display: block;
                    content: '';
                    transition: all 300ms ease-in-out;
                }

                    #navbar-toggle span:before {
                        top: -10px;
                    }

                    #navbar-toggle span:after {
                        bottom: -10px;
                    }

                #navbar-toggle.active span {
                    background-color: transparent;
                }

                    #navbar-toggle.active span:before, #navbar-toggle.active span:after {
                        top: 0;
                    }

                    #navbar-toggle.active span:before {
                        transform: rotate(45deg);
                    }

                    #navbar-toggle.active span:after {
                        transform: rotate(-45deg);
                    }
        }

        .card-horizontal {
            display: flex;
            flex: 1 1 auto;
        }

        .main-footer {
            padding: 70px 0;
            display: flex;
            justify-content: space-evenly;
            background-color: #19302E;
        }

            .main-footer ul {
                list-style: none;
            }

            .main-footer h1 {
                font-size: 22px;
                line-height: 117%;
                color: #ffffff;
                margin-bottom: 10px;
                font-weight: 500;
            }

            .main-footer h2 {
                color: #ffffff;
                font-weight: 500;
            }

            .main-footer ul li a {
                color: #ffffffcc;
                text-decoration: none;
            }

        footer {
            background-color: #19302E;
            border-top: 1px solid #6EB981;
            font-size: 17px;
            padding: 15px 5px;
            color: #ffffff;
            text-align: center;
        }

            footer a {
                text-decoration: none;
                color: #ffffff;
            }

        .logoinfo p {
            color: #6EB981;
            font-size: 17px;
            margin-top: 5px;
        }

        .contact-details {
            margin-top: 20px;
        }

            .contact-details li {
                list-style: none;
                margin: 10px 0;
            }

                .contact-details li a {
                    text-decoration: none;
                    color: #f1f1f1;
                }

            .contact-details .fa {
                color: #f1f1f1;
                margin-right: 10px;
            }

        .sociallogos {
            padding: 20px 0;
        }

            .sociallogos .logobox a {
                padding: 0 10px;
                text-decoration: none;
                color: #ffffff;
                font-size: 22px;
            }

        .com ul li {
            padding: 5px 0;
        }

        @media only screen and (max-width: 749px) {
            .main-footer {
                padding: 20px;
                display: grid;
                grid-template-columns: 1fr 1fr;
            }

            .info {
                padding: 20px 0;
            }
        }

        @media (max-width: 480px) {
            .main-footer {
                grid-template-columns: 1fr;
            }

            .sociallogos {
                padding: 20px 0;
            }

            .com {
                padding: 20px 0;
            }
        }
        #Newadhardisplay{
            align-items:center;
            align-content: center;
            margin-left: 15%;
        }
        #QueryDisplay{
            align-items:center;
            align-content: center;
            margin-left: 40%;
        }
        .displayheading{
            align-content:center;
            align-items: center;
            margin-left: 40%;
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  
</head>
<body>
    <script>
        (function($) {
            $(function() {

              //  open and close nav
              $('#navbar-toggle').click(function() {
                $('nav ul').slideToggle();
              });


              // Hamburger toggle
              $('#navbar-toggle').on('click', function() {
                this.classList.toggle('active');
              });


              // If a link has a dropdown, add sub menu toggle.
              $('nav ul li a:not(:only-child)').click(function(e) {
                $(this).siblings('.navbar-dropdown').slideToggle("slow");

                // Close dropdown when select another dropdown
                $('.navbar-dropdown').not($(this).siblings()).hide("slow");
                e.stopPropagation();
              });


              // Click outside the dropdown will remove the dropdown class
              $('html').click(function() {
                $('.navbar-dropdown').hide();
              });
            });
          })(jQuery);
    </script>
     <section class="navigation">
        <div class="nav-container">
            <div class="brand">
                <img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/Aadhaar_Logo.svg/1200px-Aadhaar_Logo.svg.png" alt="logo" height="55px" width="55px" />
            </div>
            <nav>
                <div class="nav-mobile"><a id="navbar-toggle" href="#!"><span></span></a></div>
                <ul class="nav-list">
                    <li>
                        <a href="home.html">Home</a>
                    </li>
                    <li>
                        <a href="about.html">About</a>
                    </li>

                    <li>
                        <a href="DisplayAdhar.aspx">Your Adhar</a>
                    </li>
                    <li>
                        <a href="Login.aspx">Logout</a>
                    </li>
                    <li>
                        <a href="Contact.aspx">Contact</a>
                    </li>
                </ul>
            </nav>
        </div>
    </section>
    <form id="form1" runat="server">
        </br></br>
        <h2 class="displayheading">Personal Info</h2>
        </br>
        
        <asp:GridView ID="Newadhardisplay" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
         </br>
        <h2 class="displayheading">Query Asked</h2>
        </br>
      <asp:GridView ID="QueryDisplay" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        
    </form>
</body>
</html>
