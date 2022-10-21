<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uploaddocs.aspx.cs" Inherits="Addhar_management.Uploaddocs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Document</title>
    <style>
    :root {
        --main-blue: #71b7e6;
        --main-purple: #9b59b6;
        --main-grey: #ccc;
        --sub-grey: #d9d9d9;
      }
    body {
        display: flex;
        height: 80vh;
        justify-content: center; /*center vertically */
        align-items: center; /* center horizontally */
        background: linear-gradient(135deg, var(--main-blue), var(--main-purple));
        padding: 10px;
      }
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
      
      
    input[type="file"] {
        display: block;
      }
      .imageThumb {
        max-height: 75px;
        border: 2px solid;
        padding: 1px;
        cursor: pointer;
      }
      .pip {
        display: inline-block;
        margin: 10px 10px 0 0;
      }
      .remove {
        display: block;
        background: #444;
        border: 1px solid black;
        color: white;
        text-align: center;
        cursor: pointer;
      }
      .remove:hover {
        background: white;
        color: black;
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
    
    <script>
        $(document).ready(function() {
            if (window.File && window.FileList && window.FileReader) {
              $("#files").on("change", function(e) {
                var files = e.target.files,
                  filesLength = files.length;
                for (var i = 0; i < filesLength; i++) {
                  var f = files[i]
                  var fileReader = new FileReader();
                  fileReader.onload = (function(e) {
                    var file = e.target;
                    $("<span class=\"pip\">" +
                      "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
                      "<br/><span class=\"remove\">Remove image</span>" +
                      "</span>").insertAfter("#files");
                    $(".remove").click(function(){
                      $(this).parent(".pip").remove();
                    });
                    
                    // Old code here
                    /*$("<img></img>", {
                      class: "imageThumb",
                      src: e.target.result,
                      title: file.name + " | Click to remove"
                    }).insertAfter("#files").click(function(){$(this).remove();});*/
                    
                  });
                  fileReader.readAsDataURL(f);
                }
                console.log(files);
              });
            } else {
              alert("Your browser doesn't support to File API")
            }
          });
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
        <div class="title">Upload Docs For Adhar</div>
      
          <div class="user__details">
              <input ID="Email" runat="server" type="email" placeholder="enter your email"/>
    <div class="field" align="left">
      <h3>Upload your birth certificate</h3>
      <input type="file" runat="server" ID="birthcertificate" name="files[]" single required/>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<div class="field" align="left">
  <h3>Upload your Leaving Certificate</h3>
  <input type="file" runat="server" ID="leavingcertificate" name="files[]" single />
</div>
<div class="field" align="left">
    <h3>Upload your passport size photo</h3>
    <input type="file" runat="server" ID="passportsize" name="files[]" single required/>
  </div>
  <div class="field" align="left">
    <h3>Upload your caste certificate</h3>
    <input type="file" runat="server" ID="castecertificate" name="files[]" single required/>
  </div>
</div><br><br>
<div class="form-group">
    <input type="checkbox" id="declare">
    <label for="html">I hereby declare that the information provided here is completely true based upon my knowledge.</label>
  </div>
  <br>
  <div class="button">
    &nbsp;<asp:Button ID="uploadbtn" runat="server" OnClick="uploadbtn_Click" Text="Submit Document" />
  </div>
</div>
    </form>
</body>
</html>
