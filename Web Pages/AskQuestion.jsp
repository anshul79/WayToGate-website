<%-- 
    Document   : AskQuestion.jsp
    Created on : 27 Aug, 2014, 2:35:33 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ask a question</title>
    </head>
    <body bgcolor="#ffb">
        <div style="width:800px; background:#fff; color:#000; font-size:104%; margin:0 auto">
        <br>
        <% 
    HttpSession ses=request.getSession(false);
    if(ses==null||ses.getAttribute("Uname")==null){
        out.println("Session expired.Retry.");
        out.println("<a href=home.jsp>Home</a>");
    }
    else{
     out.println("Hello!");
     
%>
        
        <br><br>
        <form action="QuestionServlet" >
        <table>
             <tr>
                 <td><font color="dark green">
                Enter your name : <input type="text" name="Posted_by"/>
                
                </td>
            </tr><br>
            <tr><td><font size="5" color="dark blue">
                Type your Question:-
                </font></td></tr>
            <tr><td>
             <textarea name="t1" rows="10" cols="80">
             </textarea>
                </td></tr>
            <tr><td>
                            <input size="8" type="submit" value="Votes">
                
                
            
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                      
                    <input size="8" type="submit" value="Submit">
                </td>
                
            </tr>
        </table>
        </form>
        
        <%
    }
%>

        </div>
    </body>
</html>
<%@page import="java.sql.*"%>

<%
    Connection con=null;
    ResultSet rs=null;
    Statement s=null;
    String question="",Posted_by="";
    int votes=0,id=0;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
    s=con.createStatement();
    rs=s.executeQuery("select * from question");
   
    %>
    <table>    
        
    <%
    
    while(rs.next()){
         question=rs.getString("Questions");
    Posted_by=rs.getString("Posted_by");
      id=rs.getInt("pid");
          votes=rs.getInt("votes");
      %>
      
      <table border ="1" >
          <tr>
          <td>
         Question: <%=question%>
          </td></tr><br><br>
          <tr><td>
          Posted_By:<%=Posted_by%>
          </td>
          </tr>
  
      </table>
      
   
   


<%}%>
   
