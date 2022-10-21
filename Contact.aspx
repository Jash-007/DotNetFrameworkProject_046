<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Addhar_management.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- to give permission -->
    <script src="https://kit.fontawesome.com/3da7ad9bd6.js" crossorigin="anonymous"></script>

    <title>Contact Us</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style>
    * {
        margin: 0rem;
        padding: 0rem;
    }

    html {
        /* border: .2rem solid rgb(0, 0, 0); */
        height: 100vh !important;

        /* background: url(./contact.webp) no-repeat center center fixed !important; */
        background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaoWvdJHvy89eWtWY4GMPHuI75cxoH1mhyzw&usqp=CAU') no-repeat center center fixed !important;
        -webkit-background-size: cover !important;
        -moz-background-size: cover !important;
        -o-background-size: cover !important;
        background-size: inherit !important;
        
    }

    body {
        background: none;
        height: 100% !important;
        display: flex;
        width: 100%;
       
        flex-direction: column;
    }

    #main {
        /* border: .2rem solid red; */
        margin-block: auto !important;
        background: rgba(0, 0, 0, .7) !important;
        color: #fff;
        border-radius: 0.5rem;
        box-shadow: rgb(17 17 26 / 10%) 0px 4px 16px, rgb(17 17 26 / 10%) 0px 8px 24px, rgb(17 17 26 / 10%) 0px 16px 56px;
        height: 120% !important;
        display: flex;
        flex-direction: column;
        /* align-items: center; */
    }

    .headingDiv {
        text-align: center;
    }

    .formDiv {
        /* border: .2rem solid rgb(48, 185, 24); */
        margin-block: auto !important;
        height: 50% !important;
    }

    .conInput {
        border: none !important;
        outline: none !important;
        box-shadow: none !important;
        border-radius: .5rem !important;
        color: #ffffff !important;
        border: 0.1rem solid #ffffff !important;
        background: none !important;
        letter-spacing: .21rem !important;
    }

    .conInput:focus {
        /* box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px !important; */
        box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0,
                0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px !important;
    }

    .conInput::placeholder {
        font-weight: initial !important;
        color: rgba(227, 227, 227, 0.692) !important;
    }

    #btnDiv {
        /* border: 2px solid yellow; */
        width: 100%;
        text-align: center;
    }

    #submit {
        outline: none !important;
        box-shadow: none !important;
        border: none !important;
        color: #000;
        background: #ffffff !important;
        font-weight: 600;
        cursor: pointer;
        letter-spacing: 0.15rem;
    }

    #submit:hover {
        background: rgb(212, 212, 212) !important;
        color: #000000 !important;
        /* border: 1px solid #000000 !important; */
    }

    /* icons */
    .iconDiv {
        /* border: .2rem solid greenyellow; */
        margin-block: auto !important;
        display: flex !important;
        justify-content: center;
    }

    .icon {
        /* font-size: 1.2rem !important; */
        background: white;
        border-radius: 50%;
        height: 2.5rem;
        width: 2.5rem;
        max-width: 2.5rem;
        position: relative;
        margin-top: .2rem;
        cursor: pointer;
    }

    .btnIcon {
        border: none !important;
        box-shadow: none !important;
        outline: none !important;
    }

    .icon i {
        color: #ffffff;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }

    #facebook {
        background: rgb(69, 69, 255);
    }

    #tweeter {
        background: rgb(85, 171, 205);
    }

    #instragram {
        background: #d6249f;
        background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%, #d6249f 60%, #285AEB 90%);
    }

    #linkedIn {
        background: rgb(23, 23, 255);
    }
    .navigation {
        height: 55px;
        background: linear-gradient(45deg, #4199fe, #74b4fe);
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
    nav ul li a,nav ul li a:visited {
        display: block;
        padding: 0 20px;
        line-height: 55px;
        color: #fff;
        background: #262626 ;
        text-decoration: none;
   }
    nav ul li a{
        background: transparent;
        color: #FFF;
   }
    nav ul li a:hover, nav ul li a:visited:hover {
        background: #2581DC;
        color: #ffffff;
   }
    .navbar-dropdown li a{
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
</style>
</head>
<body>
       <section class="navigation">
        <div class="nav-container">
          <div class="brand">
            <img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/Aadhaar_Logo.svg/1200px-Aadhaar_Logo.svg.png" alt="logo" height="55px" width="55px"/>
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
                <a href="contact.aspx">Contact</a>
              </li>
            </ul>
          </nav>
        </div>
      </section>
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
    <form id="form1" runat="server">
        <div class=" container col-11 col-md-5 px-3" id="main">
        <div class="headingDiv my-4">
            <h3>Contact Us</h3>
            <hr>
        </div>
        <div class="formDiv px-md-2">
            
                <div class="input-group my-2">
                    <input type="email" class="form-control my-2 conInput" runat="server" ID="CEmail" placeholder="Email"
                        aria-describedby="emailHelp">
                </div>
                <div class="input-group my-2">
                    <textarea class="form-control my-2 conInput" ID="query" runat="server" aria-label="With textarea" rows="6"
                        placeholder="Ask Your Query .."></textarea>
                </div>
                <div class="input-group my-2" id="btnDiv">
                    <asp:Button class="btn btn-primary col-6" ID="CButton" runat="server" OnClick="Cbutton_btn" Text="Submit Query" />
                </div>
           
        </div>
           <div class="iconDiv col-12 mt-2">
            <div class="icon mx-2" id="facebook">
                <button class="btn btnIcon"><i class="fa-brands fa-facebook-f"></i></button>
            </div>
            <div class="icon mx-2" id="linkedIn">
                <button class="btn btnIcon"><i class="fa-brands fa-linkedin-in"></i></button>
            </div>
            <div class="icon mx-2" id="tweeter">
                <button class="btn btnIcon"><i class="fa-brands fa-twitter"></i></button>
            </div>
            <div class="icon mx-2" id="instragram">
                <button class="btn btnIcon">
                    <i class="fa-brands fa-instagram"></i>
                    <!-- <i class="fa-brands fa-instagram-square"></i> -->
                </button>
            </div>

        </div>
    </div>
    <!-- Option 1: Bootstrap Bundle with Popper -->

    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
