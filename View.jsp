<%-- 
    Document   : View
    Created on : 15 Apr, 2021, 12:30:28 PM
    Author     : jiten
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Fetch</title>
    </head>
    <body>
       
    <center>
        <table border ="1">
            <tr style="background-color:#11ec36; color: #ff0 ">
            <td>Account Name </td>
            <td>Account No </td>
            <td>Amount </td>
              <td>Email </td>
            </tr>
       
        
        <%
            
           
                    
        Connection con= null;
        Statement st= null;
        ResultSet rs=null;
         

try
{
    Class.forName("com.mysql.jdbc.Driver");
   con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/Banking","root","Star@123");    
   con.createStatement();
   
   
   String qry="select * from bank";
   rs=st.executeQuery(qry);
   while(rs.next())
   {
       %>
       <tr>
           <td><%= rs.getString(1) %></td>
           <td><%= rs.getString(2) %></td>
           <td><%= rs.getString(3) %></td>
                   
           
           </tr>
           <%
   }
   
}
catch(Exception ex){}
 %>
            
        
    </center>
        
       
       
        
    </body>
</html>
