/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bpit.gate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class UserValidateServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
           String u =request.getParameter("Uname");
           String p= request.getParameter("password");
           String p1= request.getParameter("password1");
           if(p.equals(p1))
           {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
            //String q = "Select * from login where uname='"+u+"'";
          
          Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select * from login where Uname='"+u+"'");
          // out.println(rs);
           
          if(rs!=null && rs.next())
           {
          
               out.println("This username already exists. Enter another username");
               out.println("sign-up again<a href=UserSignUp.html><input type=button value= Signup></a>");
               
           
           }
           else
        
           {
               out.println("You have signed up successfully.");
               String email = request.getParameter("Emailid");
               String phn = request.getParameter("phoneNo");
                String q="insert into userinfo values(?,?,?,?)";
               PreparedStatement pst=con.prepareStatement(q);
               pst.setString(1,u);
               pst.setString(2,p);
               pst.setString(3,email);
               pst.setString(4,phn);
               pst.executeUpdate();
               
               String z="insert into login(uname,password,role) values(?,?,?)";
               PreparedStatement pst1=con.prepareStatement(z);
               pst1.setString(1,u);
               pst1.setString(2,p);
               pst1.setString(3,"user");
               pst1.executeUpdate();
               out.println("<br><br><a href=home.jsp>Home</a>");
            }
           }
           
           else
           {
               out.println("passwords do not match");
              
               out.println("sign-up again<a href=UserSignUp.html><input type=button value= Signup></a>");   

           }
        
           
        }
        catch(Exception e)
        {
            out.println(e);
        }
        finally
        {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
