<%@page import="java.sql.*"%>

<%@ page import="java.time.LocalDate"%>

<%@ page import="java.text.ParseException"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import= "java.util.Date"%>

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "savings"; 
String userid = "root";
String password = "";

String username="";
String pass="";
int status=0;
String getIndex=request.getParameter("fn");
if(getIndex=!null){

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
                if(username="")
                i++;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }           
}
