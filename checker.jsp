<%@page import="java.sql.*"%>

<%@ page import="java.time.LocalDate"%>

<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import= "java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>fadzi saves</title>
    <link rel="icon" type="image/png" href="01.png">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        body{
            
            background-repeat: no-repeat;
            font-family: 'Montserrat';font-size: 29px;
        }
        .div1{
            align-items: center;
            margin-top: 100px;
            border-radius: 20px;
            width: 500px;
            padding: 20px 2px;
            background-image: url('tiny-people-saving-money-piggy-bank-isolated-flat-illustration_74855-11124.jpeg');
            background-repeat: no-repeat;
        }
        input[type=text]{
            font-family: 'Montserrat';font-size: 15px;
            border-radius: 20px;
            border-color: pink;
            text-align: center;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;

        }      
         input[type=password]{
            font-family: 'Montserrat';font-size: 15px;
            border-radius: 20px;
            border-color:pink;
            text-align: center;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;

        }
        fieldset{
            border-radius: 20px;
        }
        input[type=submit]{
            border-radius: 20px;
            text-align: center;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            background-color: #70B26C;

        }
        input[type=submit]:hover{
            background-color: transparent;
        }
    </style>
</head>
<body>
    <center>
    <div class="div1">
        <fieldset>    
            <legend>USER LOGIN</legend>
            <form action="checker.jsp" method="post">
                <input type="text" placeholder="Username" maxlength="10" name="username" required/><br><br>
                <input type="password" placeholder="Password" maxlength="10" name="password" quired/><br><br>
                <input type="submit" value="LOGIN" id="lgBtn"/>
                <input type="submit" value="SIGN UP" id="sgBtn"/>
            </form>
        </fieldset>
    </div>
    <center> 

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "savings"; 
String userid = "root";
String password = "";

String username=request.getParameter("username");
String pass=request.getParameter("password");
int status=0;
String str=username+" "+pass;
if(str!=null){

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        LocalDate data=LocalDate.now();
                 
        try{
            Class.forName(driver);
            connection = DriverManager.getConnection(connectionUrl+database,userid,password);
            statement=connection.createStatement();
            String sql ="select username, password from login_details";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
               String userData=resultSet.getString("id_login");
               String passData=resultSet.getString("password");
                if(username==userData && pass==passData){
                    %>
                        <script>
                            alert("WELCOME "+userData);
                            var win=window.open("index.html","_self");
                        </script>
                    <%
                }else{
                    %>
                    <script>
                        alert("Please make sure that your are signed into our system.");
                        var win=window.open("index.html","_self");
                    </script>
                    <%
                }
                i++;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }           
}
%>
</body>
</html>