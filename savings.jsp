<%@page import="java.sql.*"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import= "java.util.Date"%>


<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "savings";
String userid = "root";
String password = "";

int status=0;
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>

<head>
    <title>Savings</title>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Indie Flower' rel='stylesheet'>
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/x-icon" href="icon.ico">

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
  <a onclick="openAbout()">About Fadzai</a>
  <a href="#">Settings</a>
  <a href="#">Me</a>
  <a href="login.jsp">Log out</a>
</div>

<div class="div1">
  <div class="div2"><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span></div>
  <div class="div2"><a href="#">Home</a></div>
  <div class="div2"><a href="checker.jsp">Lessons</a></div>
  <div class="div2"><a href="savings.jsp">Savings</a></div>
  <div class="div2"><a href="accounts.jsp">Accounts</a></div>
  <div class="div2"><a href="notifications.jsp">Notifications</a></div>
  <div class="div2"><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script></div>

</div>

<div id="about" class="myabout">
  <a href="javascript:void(0)" class="closebtn" onclick="closeAbout()">&times;</a>

  <div  style="line-height: 2; text-align: center;margin-left: 100px;padding-top: 20px;border-radius: 50px;">
    <center>
      <img src="icone.png" style="max-width:300px;max-height:600px; border-radius: 100%; ">
      
      <h4 style="color: brown;text-decoration: underline;text-transform: uppercase; font-family: Indie Flower; font-size: 25px;" >our mission</h4> 
    </center>
    <h4>Our mission is to simplify lifes through the provision of accessible online services.</h4>
    <br>
    <center><h4 style="color: brown;text-decoration: underline;text-transform: uppercase; font-family: Indie Flower; font-size: 25px;" >our vision</h4> </center>
    <h4>Our vision is to become everyone's number online service provider.</h4>
    <br><br>
  </div>

  <div id="listed" style="text-align: center; padding-left:10px;margin-bottom: 10px; margin-top:20px;">who are we?</div>
  <div id="bodyS">
    <div id="imag"><img src="icone2.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>    
    <div id="text">
      <p>
        Fadzai is a company focused on helping you automate your life. 
        Wheather it is developing an application or website for your company or giving you a domain and a server, 
        we have everything required to make your business flourish. 
        We focus on your needs and create goals and milestones to make sure that you achieve your dreams.
        <br><br><strong style="background-color: rgb(195,121,250); font-family:'Indie Flower';font-size: larger; padding-left: 5px;padding-right: 5px;">
          Created in 2022,</strong> we are fresh and ready to take on challenges head-on with no fear of facing and solving problems.
        <br>The company was created by our founder and CEO Penelope S. Machafa, the a university student, 
        while she developed programs for her peers and her mother's agric company Beulah
        <br><strong style="background-color: rgb(195,121,250); font-family:'Indie Flower';font-size: larger; padding-left: 5px;padding-right: 5px;">
          Fadzai mean to be happy
        </strong>. We believe that our company is based on solving problems making our clients happy.
        We are curretly located in Mozambique, Maputo with the possibility of working remotely from the comfort of our homes. 
      </p>
    </div>
  </div>

  <div id="listed" style="text-align: center; padding-left:10px;">what do we do?</div>
  <div id="bodyS">
    <div id="imag"><img src="icone1.png" style="max-width:300px;max-height:600px; border-radius: 20px;"></div>    
    <div id="text">
      
      <p>
        Fadzai is a company focused on helping you automate your life. 
        Wheather it is developing an application or website for your company or giving you a domain and a server, 
        we have everything required to make your business flourish. 
      </p>
    </div>
  </div>
</div>

  <table class="tabela" id="tabela"> 	
	       	<tr>
	    		  <th>Id</th>
	        	<th>Username</th>
	        	<th>Amount</th>
	        	<th>Description</th>
	        </tr>
		  <%
		 
			try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String sql ="SELECT * FROM `money_details`";
			resultSet = statement.executeQuery(sql);
			int i=0;
			while(resultSet.next()){
			%>
			<tr> 
					<td><%=resultSet.getInt("id_saving")%>guyhu</td>
				  <td><%=resultSet.getString("username")%></td>
				  <td><%=resultSet.getInt("amount")%></td>
				  <td><%=resultSet.getString("name_saving")%></td>
			</tr>
		<%
			i++;
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
  </table>
<div id="main"></div>
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
<script>
  function openAbout() {
    closeNav();
    document.getElementById("about").style.width = "75%";
    document.getElementById("about").style.marginLeft = "10%";
    document.getElementById("about").style.paddingRight = "8%";
    document.getElementById("about").style.alignContent = "center";
    document.body.style.backgroundColor="rgba(0,0,0,0.4)";
    
  }
  
  function closeAbout() {
    document.getElementById("about").style.width = "0%";
    document.getElementById("main").style.marginLeft= "0%";
    document.getElementById("about").style.paddingRight = "0%";
    document.body.style.backgroundColor = "white";
  }
  </script>
</body>  
</body>
</html> 

