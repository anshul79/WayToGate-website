<%-- 
    Document   : savequestions.jsp
    Created on : Aug 12, 2014, 10:05:25 PM
    Author     : india
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>       
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%
     Class.forName("com.mysql.jdbc.Driver");
            String s1,s2 = null;
            HttpSession ses=request.getSession(false);
            s1=(String)ses.getAttribute("Username");
            s2=request.getParameter("question");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/record","root","password");
            PreparedStatement   pst= con.prepareStatement("INSERT INTO question VALUES(?,?,?,?)");
            pst.setString(1,s1);
            pst.setString(2,s2);
            pst.setInt(3,0);
               pst.setInt(4,0);
            int i= pst.executeUpdate();
            if(i>0){
               RequestDispatcher disp=null;
      disp=getServletContext().getRequestDispatcher("/viewcomments1.jsp");
      disp.include(request, response);
    
            }
%>    