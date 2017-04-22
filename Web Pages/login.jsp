<%-- 
    Document   : login
    Created on : 2 Aug, 2014, 3:33:31 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body><br><br><br><br><br><br>
        <form action ="loginservlet1">
        <table align="center" border="1" width="300"><tr><td>
        <table border ="0">
            
            <tr>
                <td>
                Username: <input type="text" name="t1"/>
                
                </td>
            </tr><br>
                    <tr><td>
                Password: <input type="password" name="t2"/>
                        </td></tr><br>
                    <tr><td><center>
                        <input type ="submit" value="Login"/>
                    </center></td></tr>
                   <tr><td><center>
                        <a href="UserSignUp.html"><input type="button" value="SignUp User"></a>
  <!--                      <a href="SignUpExpert.html"><input type="button" value="SignUp User"></a>-->
                    </center></td></tr>
        </table></td></tr></table></form>
    </body>
</html>
