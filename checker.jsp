<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Indie Flower' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="icon.ico">
<style>
body {
  font-family: 'Montserrat'; 
  background-color: beige;
  transition: background-color .5s;
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
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

#main {
  transition: margin-left .5s;
  padding: 16px;
  margin-left: 10%;
  margin-right: 10%;
}
#bodyS{
  display: flex;
  margin-left: 15%;
  
  width: 85%;
}
@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
#imag{
  max-width:250px;
  max-height:450px;
  border-radius: 20px;
  margin-right: 100px;
}
#text{
  display: flex;
  line-height: 2;
  text-align: justify;
}
#guide{
  display: flexbox;
  line-height: 2;
  text-align: justify;
}
#colado{
            background-color: rgb(245,115,89);
            color: #111;
            text-transform: uppercase;
            text-align: center;
           padding: 10px 0px;
           margin-bottom: 10px;
        }
         
        .start {
            height: 100px;
        }
         
        .end {
            height: 500px;
        }
        #listed{
          align-items: center;
          color: red;
          text-decoration: underline;
          text-transform: uppercase;
          font-family:'Indie Flower';
          font-size: 29px;
        }

        .div1 {
  list-style-type: none;
  position: sticky;
  width:100%;
  top:0;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: rgb(1,201,192);
 
}

.div2 {
  float: left;
   padding-left: 15px;
}

.div2 a{
  display: block;
  color: rgb(43,10,86);
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
  font-weight: bold;
}
.div2 a:hover {
  background-color: rgb(0, 217, 255);
  color: white;
}
</style>

<div id="google_translate_element"></div>

<script type="text/javascript">
  function googleTranslateElementInit() {
    new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
  }
</script>


</head>
<body>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#"><img src="iconnn_low.png" style="max-width:70px;max-height: 70px; border-radius: 50%;"><br>My account</a>
  <a href="#">About Fadzai</a>
  <a href="#">Settings</a>
  <a href="#">Me</a>
  <a href="#">Log out</a>
</div>

<div class="div1">
  <div class="div2"><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></div>
  <div class="div2"><a href="#">Home</a></div>
  <div class="div2"><a href="checker.jsp">Lessons</a></div>
  <div class="div2"><a href="#">Savings</a></div>
  <div class="div2"><a href="#">Accounts</a></div>
  <div class="div2"><a href="#">Notifications</a></div>
  <div class="div2"><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script></div>

</div>
<div id="main">  
  <div ><center><img src="same_low.png"></center></div>
  <div id="bodyS">
    <div id="imag"><img src="realpiggy.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
    <div id="text">
      <p>
        Sometimes the hardest thing about saving money is just getting started. 
        Here you will have a step-by-step guide that can help you develop a simple and realistic strategy, 
        so that you can save for all your short- and long-term goals.
        This websites provides tools to assist you in your process of creating a better and greater future for yourself.
        First of all <strong>Eliminate Your Debt</strong>.<br>
      </p>
    </div>
    
  </div >
  <br>
  <div id="guide">
    If you're trying to save money through budgeting but still carrying a large debt burden,
           start with the debt. Not convinced? Add up how much you spend servicing your debt each month,
            and you'll quickly see. Once you're free from paying interest on your debt,
            that money can easily be put into savings. 
            A personal line of credit is just one option for consolidating debt so you can better pay it off.<br><br>
            <div id="colado"><strong>Here are the some steps and tips on how to save money</strong></div>
    
            <ol>
      <li id="listed">Record your expenses</li><br>
      <div id="bodyS">
        
        <div id="imag"><img src="5deab09575405.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
        
        <div id="text">
          
          <p>
            The first step to start saving money is figuring out how much you spend. 
            Keep track of all your expenses - that means every coffee, household item and 
            cash tip as well as regular monthly bills. 
            </p>
        </div>
      </div>
        <p>
        <strong style="background-color: rgb(195,121,250); font-family:'Indie Flower';font-size: larger; padding-left: 5px;padding-right: 5px;">Record your expenses however is easiest for you</strong> - pencil and paper, a simple spreadsheet or
        a free online spending tracker or app. 
        Once you have your data, organize the numbers by categories, such as gas, groceries and mortgage, 
        and total each amount. Use your credit card and bank statements to make sure you have included everything.
        </p>

        <li id="listed">Set Savings Goals</li><br>
      <div id="bodyS">
        
        <div id="imag"><img src="goals_low.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
        
        <div id="text">
          
          <p>
            One of the best ways to save money is by visualizing what you are saving for. If you need motivation, 
            <strong style="background-color: rgb(195,121,250); font-family:'Indie Flower';font-size: larger; padding-left: 5px;padding-right: 5px;">set saving targets along with a timeline</strong> to make it easier to save. Want to buy a house in three years 
            with a 20% down payment? 
            </p>
        </div>
      </div>
          <p>
            Now you have a target and know what you will need to save each month to achieve your goal. 
            Use Regions savings calculators to make your goal!
          </p>

          <li id="listed">Take a "Staycation"</li><br>
      <div id="bodyS">
        
        <div id="imag"><img src="stay_low.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
        
        <div id="text">
          
          <p>
            Though the term may be trendy, the thought behind it is solid: 
            <strong style="background-color: rgb(195,121,250); font-family:'Indie Flower';font-size: larger; padding-left: 5px;padding-right: 5px;">instead of dropping several thousand on airline tickets</strong> overseas, look in your own backyard 
            for fun vacations close to home. If you can't drive the distance, look for cheap flights in your region.
            </p>
        </div>
      </div>
      
      <li id="listed">Pack your Lunch</li><br>
      <div id="bodyS">
        
        <div id="imag"><img src="lunch_low.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
        
        <div id="text">
          
          <p>
            An obvious money-saving tip is finding everyday savings. If buying lunch at work costs 250mts,
             but bringing lunch from home costs only 50mts, then over the course of a year, you can create a 3000mts
              emergency fund or make a significant contribution to a college plan or retirement fund.
          </p>
        </div>
      </div>
      <li id="listed">Determine your financial priorities</li><br>
      <div id="bodyS">
        <div id="imag"><img src="priorities_low.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>
        <div id="text">
          <p>
            After your expenses and income, your goals are likely to have the biggest 
            impact on how you allocate your savings. For example, if you know you are going to need to 
            replace your car in the near future, you could start putting away money for one now. 
            
            </p>
        </div>
      </div>
          <p>
            But be sure to remember long-term goals-it is important that planning for retirement does not
             take a back seat to shorter-term needs. Learning how to prioritize your savings goals can 
             give you a clear idea of how to allocate your savings.
          </p>
    </ol>
    
  </div>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  //document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
   
</body>
</html> 

