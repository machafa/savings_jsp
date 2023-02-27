<!DOCTYPE html>
<html>
<head>
    <title>Tester</title>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Indie Flower' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="icon.ico">

<div id="google_translate_element"></div>

<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
  }
</script>

<style>

.myabout {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: white;
    overflow-x: hidden;
    /*transition: 0.5s;*/
    padding-top: 60px;
    z-index: 1; /* Stay on top */
    top: 0; /* Stay at the top */
    left: 0;
   
  }
  
  .myabout a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
  }
  
  .myabout a:hover {
    color: #f1f1f1;
  }
  
  .myabout .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
  }
    .sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: hsl(51, 50%, 47%);
    overflow-x: hidden;
    /*transition: 0.5s;*/
    padding-top: 60px;
    z-index: 1; /* Stay on top */
    top: 0; /* Stay at the top */
    left: 0;
   
  }
  
  .sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
  }
  
  .sidenav a:hover {
    color: #f1f1f1;
  }
  
  .sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
  }
</style>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#"><img src="iconnn_low.png" style="max-width:70px;max-height: 70px; border-radius: 50%;"><br>My account</a>
  <a onclick="openAbout()" style="cursor:pointer;">About Fadzai</a>
  <a href="#">Settings</a>
  <a href="#">Me</a>
  <a href="#">Log out</a>
</div>
<div id="about" class="myabout">
    <a href="javascript:void(0)" class="closebtn" onclick="closeAbout()">&times;</a>
    
    <div id="bodyS" style="padding-left: 50px;padding-right: 50px;">
        
      <div id="imag"><img src="icone2.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
      
      <div id="text">
        
        <p>
          Fadzai is a group of companies focused on helping you automate your life. Wheather it is developing an application or site for your company or giving you a domain, we got y'all.  
        </p>
      </div>
    </div>
</div>

<div class="div1">
  <div class="div2"><span style="font-size:30px;cursor:pointer; " onclick="openNav()">&#9776;</span></div>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "25%";
  document.getElementById("main").style.marginBlock = "250px";
  document.body.style.backgroundColor = "rgb(0,208,187)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  //document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
<script>
    function openAbout() {
      closeNav();
      document.getElementById("about").style.width = "75%";
      document.getElementById("about").style.marginLeft = "10%";
      document.getElementById("about").style.paddingBlockEnd = "50%";
      document.getElementById("about").style.alignContent = "center";
      document.body.style.backgroundColor="rgba(0,0,0,0.4)";
      
    }
    
    function closeAbout() {
      document.getElementById("about").style.width = "0";
      //document.getElementById("main").style.marginLeft= "0";
      document.body.style.backgroundColor = "white";
    }
    </script>
</body>
</html> 

