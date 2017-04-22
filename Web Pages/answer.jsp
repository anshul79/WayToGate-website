<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="robots" content="noindex, nofollow">
        <title>Test Results</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

    <%
        try{
    %>
            
   <%!     float marks=0.00f;   %>
   <%       /*String ans[]=new String[20];
            for(int i=0;i<20;i++){
                ans[i]=new String();
            }*/
            String ans1=request.getParameter("question-1-answers");
            if(ans1!=null){
              if(ans1.equals("C"))
                marks+=1.00;
              else if(ans1.equals("U"))
                  marks+=0.00;
              else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans2=request.getParameter("question-2-answers");
            if(ans2!=null){
            if(ans2.equals("C"))
                marks+=1.00;
            else if(ans2.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
          
            String ans3=request.getParameter("question-3-answers");
            if(ans3!=null){
            if(ans3.equals("B"))
                marks+=1.00;
            else if(ans3.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans4=request.getParameter("question-4-answers");
            if(ans4!=null){
            if(ans4.equals("A"))
                marks+=1.00;
            else if(ans4.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans5=request.getParameter("question-5-answers");
            if(ans5!=null){
            if(ans5.equals("C"))
                marks+=1.00;
            else if(ans5.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans6=request.getParameter("question-6-answers");
            if(ans6!=null){
            if(ans6.equals("B"))
                marks+=1.00;
            else if(ans6.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans7=request.getParameter("question-7-answers");
            if(ans7!=null){
            if(ans7.equals("C"))
                marks+=1.00;
            else if(ans7.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans8=request.getParameter("question-8-answers");
            if(ans8!=null){
            if(ans8.equals("C"))
                marks+=1.00;
            else if(ans8.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans9=request.getParameter("question-9-answers");
            if(ans9!=null){
            if(ans9.equals("B"))
                marks+=1.00;
            else if(ans9.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans10=request.getParameter("question-10-answers");
            if(ans10!=null){
            if(ans10.equals("C"))
                marks+=1.00;
            else if(ans10.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans11=request.getParameter("question-11-answers");
            if(ans11!=null){
            if(ans11.equals("B"))
                marks+=1.00;
            else if(ans11.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans12=request.getParameter("question-12-answers");
            if(ans12!=null){
            if(ans12.equals("B"))
                marks+=1.00;
            else if(ans12.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans13=request.getParameter("question-13-answers");
            if(ans13!=null){
            if(ans13.equals("B"))
                marks+=1.00;
            else if(ans13.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans14=request.getParameter("question-14-answers");
            if(ans14!=null){
            if(ans14.equals("D"))
                marks+=1.00;
            else if(ans14.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans15=request.getParameter("question-15-answers");
            if(ans15!=null){
            if(ans15.equals("C"))
                marks+=1.00;
            else if(ans15.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans16=request.getParameter("question-16-answers");
            if(ans16!=null){
            if(ans16.equals("B"))
                marks+=1.00;
            else if(ans16.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans17=request.getParameter("question-17-answers");
            if(ans17!=null){
            if(ans17.equals("D"))
                marks+=1.00;
            else if(ans17.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans18=request.getParameter("question-18-answers");
            if(ans18!=null){
            if(ans18.equals("D"))
                marks+=1.00;
            else if(ans18.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans19=request.getParameter("question-19-answers");
            if(ans19!=null){
            if(ans19.equals("D"))
                marks+=1.00;
            else if(ans19.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }
            else
                marks+=0.00;
            
            String ans20=request.getParameter("question-20-answers");
            if(ans20!=null){
            if(ans20.equals("C"))
                marks+=1.00;
            else if(ans20.equals("U"))
                  marks+=0.00;
            else
                marks-=0.25;
            }  
            else
                marks+=0.00;
               
               HttpSession ses=request.getSession(false);
               String u=(String)ses.getAttribute("Uname");
               
               Class.forName("com.mysql.jdbc.Driver");
               Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
               String q="insert into mocktest(duration,total,result,taken_by) values (?,?,?,?)";
               PreparedStatement pst=con.prepareStatement(q);
               pst.setString(1,"20");
               pst.setString(2,"20");
               pst.setFloat(3,marks);
               pst.setString(4,u);
               int status=pst.executeUpdate();
               if(status==1)
                   out.println("Marks are saved successfully, "+u+".");
        }
        catch(Exception e){
            
        }
        
    
    
    %>
	<div id="page-wrap">
           

            <center> <h4><font color="blue">GATE ONLINE PRACTICE - COMPUTER SCIENCE</font></h4></center>
                
                <div id='results' style="width:800px; background:#eef; color:#000; font-size:204%; margin:0 auto;">
		
        <center><u>YOUR MARKS: <%=marks%> / 20 </u></center></div><br/>
<br/>
<br/>
<%
marks=0.00f;
%>
<center><b>Answer key</b></center>
<center><table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border: none; margin-left: 0pt; ">
 <tbody>
<tr style="height: 138.8pt; ">
  <td style="border: solid black 1.0pt; height: 138.8pt; padding: 0in 5.4pt 0in 5.4pt; width: 121.5pt;" valign="top" width="194">
      <div style="margin-bottom: 0.0001pt;">
<br /></div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 1 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 2 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 3 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 4 &nbsp;- &nbsp;"A"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 5 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 6 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 7 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 8 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 9 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 10 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
<br /></div>
</td>
  <td style="border-left: none; border: solid black 1.0pt; height: 138.8pt; padding: 0in 5.4pt 0in 5.4pt;
      width: 1.5in;" valign="top" width="173"><div style="margin-bottom: 0.0001pt;">
<br /></div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 11 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 12 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 13 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 14 &nbsp;- &nbsp;"D"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 15 &nbsp;- &nbsp;"C"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 16 &nbsp;- &nbsp;"B"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 17 &nbsp;- &nbsp;"D"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 18 &nbsp;- &nbsp;"D"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 19 &nbsp;- &nbsp;"D"</div>
<div style="margin-bottom: 0.0001pt;">
&nbsp;Answer 20 &nbsp;- &nbsp;"C"</div>
</td>
 </tr>
</tbody></table></center>
	</div>
	
	

</body>
</html>
