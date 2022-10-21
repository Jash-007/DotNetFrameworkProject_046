<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Updateadhar.aspx.cs" Inherits="Addhar_management.Updateadhar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Aadhar</title>
    <style>
        /* all */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

:root {
  --main-blue: #71b7e6;
  --main-purple: #9b59b6;
  --main-grey: #ccc;
  --sub-grey: #d9d9d9;
}

body {
  display: flex;
  height: 250vh;
  justify-content: center; /*center vertically */
  align-items: center; /* center horizontally */
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  padding: 10px;
}
/* container and form */
.container {
  max-width: 700px;
  width: 100%;
  background: #fff;
  padding: 25px 30px;
  border-radius: 5px;
}
.container .title {
  font-size: 25px;
  font-weight: 500;
  position: relative;
}

.container .title::before {
  content: "";
  position: absolute;
  height: 3.5px;
  width: 30px;
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  left: 0;
  bottom: 0;
}

.container form .user__details {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
/* inside the form user details */
form .user__details .input__box {
  width: calc(100% / 2 - 20px);
  margin-bottom: 15px;
}

.user__details .input__box .details {
  font-weight: 500;
  margin-bottom: 5px;
  display: block;
}
.user__details .input__box input {
  height: 45px;
  width: 100%;
  outline: none;
  border-radius: 5px;
  border: 1px solid var(--main-grey);
  padding-left: 15px;
  font-size: 16px;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}

.user__details .input__box input:focus,
.user__details .input__box input:valid {
  border-color: var(--main-purple);
}

/* inside the form gender details */

form .gender__details .gender__title {
  font-size: 20px;
  font-weight: 500;
}

form .gender__details .category {
  display: flex;
  width: 80%;
  margin: 15px 0;
  justify-content: space-between;
}

.gender__details .category label {
  display: flex;
  align-items: center;
}

.gender__details .category .dot {
  height: 18px;
  width: 18px;
  background: var(--sub-grey);
  border-radius: 50%;
  margin: 10px;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}

#dot-1:checked ~ .category .one,
#dot-2:checked ~ .category .two,
#dot-3:checked ~ .category .three {
  border-color: var(--sub-grey);
  background: var(--main-purple);
}

form input[type="radio"] {
  display: none;
}

/* submit button */
form .button {
  height: 45px;
  margin: 45px 0;
}

form .button input {
  height: 100%;
  width: 100%;
  outline: none;
  color: #fff;
  border: none;
  font-size: 18px;
  font-weight: 500;
  border-radius: 5px;
  background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
  transition: all 0.3s ease;
}

form .button input:hover {
  background: linear-gradient(-135deg, var(--main-blue), var(--main-purple));
}

@media only screen and (max-width: 584px) {
  .container {
    max-width: 100%;
  }

  form .user__details .input__box {
    margin-bottom: 15px;
    width: 100%;
  }

  form .gender__details .category {
    width: 100%;
  }

  .container form .user__details {
    max-height: 300px;
    overflow-y: scroll;
  }

  .user__details::-webkit-scrollbar {
    width: 0;
  }
}
.form-group {
    display: block;
    margin-bottom: 15px;
  }
  
  .form-group input {
    padding: 0;
    height: initial;
    width: initial;
    margin-bottom: 0;
    display: none;
    cursor: pointer;
  }
  
  .form-group label {
    position: relative;
    cursor: pointer;
  }
  
  .form-group label:before {
    content:'';
    -webkit-appearance: none;
    background-color: transparent;
    border: 2px solid #0079bf;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px rgba(0, 0, 0, 0.05);
    padding: 10px;
    display: inline-block;
    position: relative;
    vertical-align: middle;
    cursor: pointer;
    margin-right: 5px;
  }
  
  .form-group input:checked + label:after {
    content: '';
    display: block;
    position: absolute;
    top: 2px;
    left: 9px;
    width: 6px;
    height: 14px;
    border: solid #0079bf;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
  } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="title">Update Adhar</div>
        
          <div class="user__details">
            <div class="input__box">
              <span class="details">Old Name</span>
              <input type="text" placeholder="Shiva" required runat="server" ID="Oname">
            </div>
            <div class="input__box">
              <span class="details">New Name</span>
              <input type="text" placeholder="Krishna" required runat="server" ID="Nname">
            </div>
            <div class="input__box">
                <span class="details">Old Email</span>
                <input type="email" placeholder="jash@hotmail.com" required runat="server" ID="Oemail">
              </div>
            <div class="input__box">
              <span class="details">New Email</span>
              <input type="email" placeholder="ram@hotmail.com" required runat="server" ID="Nemail">
            </div>
            <div class="input__box">
                <span class="details">Old Phone Number</span>
                <input type="tel" runat="server" placeholder="012-345-6789" required ID="Ophnno">
              </div>
            <div class="input__box">
              <span class="details">New Phone Number</span>
              <input type="tel"  placeholder="098-345-6789" required runat="server" ID="Nphnno">
            </div>
            <div class="input__box">
                <span class="details">Old Catagory/Caste</span>
                <input type="text" runat="server" ID="Ocaste" placeholder="General" required>
              </div>
            <div class="input__box">
              <span class="details">New Catagory/Caste</span>
              <input type="text" runat="server" ID="Ncaste" placeholder="OBC" required>
            </div>
              <!-- <div class="input__box">
                <span class="details">State</span>
                 <input type="text" id="state" placeholder="Gujrat" required>
              </div> -->
              <div class="input__box">
                <span class="details">Old City</span>
                 <input type="text" runat="server" ID="Ocity" placeholder="Diu" required>
              </div>
              <div class="input__box">
                <span class="details">New City</span>
                 <input type="text" runat="server" ID="Ncity" placeholder="Daman" required>
              </div>
              <div class="input__box">
                <span class="details">Old District</span>
                 <input type="text" runat="server" ID="Odistrict" placeholder="Anand" required>
              </div>
              <div class="input__box">
                <span class="details">New District</span>
                 <input type="text" runat="server" ID="Ndistrict" placeholder="Kheda" required>
              </div>
              <div>
                <span class="details">Old Address</span>
                <textarea type="textbox" runat="server" ID="Oaddress" placeholder="Flat No. /Society /Area" rows="4" cols="33" required></textarea>
              </div>
              <div>
                <span class="details">New Address</span>
                <textarea type="textbox" runat="server" ID="Naddress" placeholder="Flat No. /Society /Area" rows="4" cols="33" required></textarea>
              </div>
          </div>
          <div class="form-group">
            <input type="checkbox" id="declare">
            <label for="html">I hereby declare that the information provided here is completely true based upon my knowledge.</label>
          </div>
         
          <div class="button">
            &nbsp;<asp:Button ID="Updatebtn" runat="server" OnClick="UpdateSubmit_btn" Text="Update" />
          </div>
       
      </div>
    </form>
</body>
</html>
