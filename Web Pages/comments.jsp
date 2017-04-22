<%@page import="java.sql.*"%>

<%
    Connection con=null;
    ResultSet rs=null;
    Statement s=null;
    String comment="",Posted_By="";
    int votes=0,id=0;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
    s=con.createStatement();
    rs=s.executeQuery("select * from comments");
   
    %>
     
<table>    
        
    <%
    
    while(rs.next()){
         comment=rs.getString("comment");
    Posted_By=rs.getString("Posted_By");
      id=rs.getInt("cid");
          votes=rs.getInt("votes");
      %>
      <center>
      <table border ="1" >
          <tr>
          <td>
         Comment: <%=comment%>
          </td></tr><br><br>
          <tr><td>
          Posted By:<%=Posted_By%>
          </td>
          </tr>
  
      </table>
      </center>
    
   


<%}%>