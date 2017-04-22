<%-- 
    Document   : DisplayBlogs
    Created on : 24 Nov, 2014, 2:18:03 PM
    Author     : india
--%>
<%@page import="java.sql.*"%>
<div style="width:800px; background:#fff; color:#000; font-size:104%; margin:0 auto;">

<%
    Connection con=null;
    ResultSet rs=null;
    Statement s=null;
    String blogs="",Posted_By="";
    int likes=0;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
    s=con.createStatement();
    rs=s.executeQuery("select * from blogs");
   
    %>
   
    <table>    
        
    <%
    
    while(rs.next()){
         blogs=rs.getString("post");
    Posted_By=rs.getString("postedby");
      likes=rs.getInt("likes");
          
      %>
      
      <table border ="0" >
          <tr>
          <td>
         Blog: <%=blogs%>
          </td></tr><br><br>
          <tr><td>
          Posted By:<%=Posted_By%>
          </td>
          </tr>
  
      </table><hr>

<%}%>
<form action="blog.jsp">
<input type="submit" value="Post your blog" />
</form>
</div>