<%-- 
    Document   : blog.jsp
    Created on : 23 Nov, 2014, 7:55:11 PM
    Author     : india
--%>

<%@page import="java.sql.*" %>
<% 
    HttpSession ses=request.getSession(false);
    if(ses==null||ses.getAttribute("Uname")==null){
        out.println("Session expired.Retry.");
        out.println("<a href=home.jsp>Home</a><br><br>");
        out.println("<a href=DisplayBlogs.jsp>See all blogs</a>");
    }
    else{
     out.println("Hello "+(String)ses.getAttribute("Uname")+"!");
     
%>
<form action ="SaveBlogServlet1">
    <table border="1">
        <tr>
            <td ><font size=3 color="red"><b>Please post your ideas</b></font></td>
        </tr>
        <tr>
            <td>
        <textarea rows='20' cols='50' name="blog">
   </textarea>    
    </td>
 
                 </table>
    <input type="submit" value="Post">
   
</form>

<%
    }
%>

