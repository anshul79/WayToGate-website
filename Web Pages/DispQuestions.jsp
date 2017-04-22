<%@page import="java.sql.*"%>
<div style="width:800px; background:#fff; color:#000; font-size:104%; margin:0 auto;">

<%
    Connection con=null;
    ResultSet rs=null;
    Statement s=null;
    String question="",Posted_By="";
    String votes;
    int id=0;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
    s=con.createStatement();
    rs=s.executeQuery("select * from question");
   
    %>
    
    <table>    
        
    <%
    
    while(rs.next()){
         question=rs.getString("Questions");
    Posted_By=rs.getString("Posted_by");
      id=rs.getInt("PID");
          votes=rs.getString("Votes");
      %>
      
      <table border ="0" >
          <tr>
          <td>
         Question: <%=question%>
          </td></tr><br><br>
          <tr><td>
          Posted By:<%=Posted_By%>
          </td>
          </tr>
  
      </table><hr>
      <form action="VoteServlet">
          <input type="hidden" name ="t1" value=id>
          <input type="hidden" name="t2" value=votes>
      <input type ="submit" value='<%=votes%> votes'>
      
      </form>
  
    
   


<%}%>
</div>