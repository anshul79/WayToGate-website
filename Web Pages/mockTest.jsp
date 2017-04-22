<%-- 
    Document   : mockTest
    Created on : 25 Nov, 2014, 12:05:33 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Mock Test</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
   <body bgcolor="#fbb">
        <div style="width:800px; background:#fff; color:#000; font-size:104%; margin:0 auto;">
            
     <center>      <h2>Online GATE Mock Exam</h2></center><br><hr>


     <p>
GATE 2013 for some papers will be conducted online  Candidates can make themselves familiar and get used to the interface
in a simulated web based test. This web based interface is nearly identical in format, look, and feel to the actual exam 
to be conducted on 20 January, 2013. Candidates are encouraged to practice with this interface as many times as they wish, 
and become familiar with it so that they spend less time on the day of the exam on understanding the interface, and concentrate
more on answering the questions.</p>

     <ol>
         <li>Please read the instructions given after you login as Guest, and familiarize with it thoroughly, you may also 
             take a screenshot print out of it to read it at leisure.
<li>The mock test is only representative.  The actual questions that appear in the exam can be very different.
<li>The marks scheme for each paper will be displayed in the Instructions section of that paper under “Other Instructions”.
<li>The “Candidate” and Photograph Image that appears on the top right corner of the screen in the Mock Test will be replaced 
    by the name of the candidate, and their photograph submitted during the application process.
     </ol>
     For taking a Mock Test, click on a link given below.<br><br>
     
    <% 
    HttpSession ses=request.getSession(false);
    if(ses==null||ses.getAttribute("Uname")==null){
        out.println("Session expired.Retry.");
        out.println("<a href=home.jsp>Home</a>");
    }
    else{
     //out.println("HELLO "+(String)ses.getAttribute("Uname"));
     
%>
     
     <a href="Test.jsp">CS- Computer Science and Information Technology</a>
     <%
         }
      %>
     <br><br>
     <center>
     <form action="seeYourMarks.jsp">
<input type="submit" value="See your marks" />
</form>
     </center>
     
     <br><br><br>
        </div>
    </body>
</html>
