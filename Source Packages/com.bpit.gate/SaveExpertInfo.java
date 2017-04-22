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
public class SaveExpertInfo extends HttpServlet {

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
        try 
        {
         
           String u =request.getParameter("uname");
           String p= request.getParameter("password");
           String p1= request.getParameter("password1");
           if(p.equals(p1))
           {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
           Statement stmt = con.createStatement();
           ResultSet rs = stmt.executeQuery("select * from expertinfo where Uname='"+u+"'");
           
          if(rs!=null && rs.next())
           {
          
               out.println("This username already exists. Enter another username");
               out.println("Sign-up again<a href=SignUpExpert.html><input type=button value= Signup></a>");
           }
           else
        
           {
               String phn=request.getParameter("ph");
               String qua=request.getParameter("qual");
               String email=request.getParameter("eid");
               
               String q="insert into expertinfo(uname,password,phone,email,qualifications) values (?,?,?,?,?)";
               PreparedStatement pst=con.prepareStatement(q);
               pst.setString(1,u);
               pst.setString(2,p);
               pst.setString(3,phn);
               pst.setString(4,email);
               pst.setString(5,qua);
               int status=pst.executeUpdate();
               if(status==1)
                   out.println("You have signed up successfully");
            }
           }
           
           else
           {
               out.println("passwords do not match");
              
               out.println("Sign-up again<a href=SignUpExpert.html><input type=button value= Signup></a>");   

           }
        
           
        }
        catch(Exception e)
        {
            out.println(e);
        }
        finally
        {
            out.println("<br><a href=home.jsp>Home</a>");
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
