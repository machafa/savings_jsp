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
    <title>Page Title</title>
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
    </style>
</head>
<body>
    <center>
    <div class="div1">
        <fieldset>    
            <legend>USER LOGIN</legend>
            <form>
                <input type="text" placeholder="Username" maxlength="10"required/><br><br>
                <input type="password" placeholder="Password" maxlength="10" required/><br><br>
                <input type="submit" value="LOGIN" id="lgBtn" onclick="checkLgn()"/>
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

String username="";
String pass="";
int status=0;
String getIndex=request.getParameter("fn");
if(getIndex!=null){

    String[] sliced=getIndex.split(";");

    
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        
        LocalDate data=LocalDate.now();
                 
        try{
            Class.forName(driver);
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from login_details";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
                username=resultSet.getString("id_login");
                pass=resultSet.getString("password");
                if(username==sliced[1]){
                    
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