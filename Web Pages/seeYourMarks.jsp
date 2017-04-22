<%-- 
    Document   : seeYourMarks
    Created on : 25 Nov, 2014, 2:18:03 PM
    Author     : india
--%>
<%@page import="java.sql.*"%>
<div style="width:800px; background:#fff; color:#000; font-size:104%; margin:0 auto;">

<%
    Connection con=null;
    ResultSet rs=null;
    Statement s=null;
    String duration="";
    String total="";
    float result=00f;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
    s=con.createStatement();
    HttpSession ses=request.getSession(false);
    if(ses==null||ses.getAttribute("Uname")==null){
        out.println("Session expired.Retry.");
        out.println("<a href=home.jsp>Home</a>");
        out.println("<form action=login.jsp><br><input type=submit value=Login /></form>");
    }
    else{
        String u=(String)ses.getAttribute("Uname");
        out.println("Hello "+u+"!");
    rs=s.executeQuery("select * from mocktest where taken_by='"+u+"'");
   
    %>
   
    <table>    
        
    <%
    
    while(rs.next()){
         duration=rs.getString("duration");
         total=rs.getString("total");
         result=rs.getFloat("result");
          
      %>
      
      <table border ="0" >
          <tr>
          <td>
         Result: <%=result%>/ <%=total%>
          </td></tr><br><br>
          <tr><td>
          Duration: <%=duration%> minutes 
          </td>
          </tr>
  
      </table><hr>

<%}%>

<%}%>
</div>