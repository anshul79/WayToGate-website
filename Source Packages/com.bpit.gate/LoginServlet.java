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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class LoginServlet extends HttpServlet {

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
        try  {
           

           String u =request.getParameter("uname");
           String p= request.getParameter("password");
           String q = "Select *from login where uname=? AND password=?";
           Class.forName("com.mysql.jdbc.Driver");
           Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
           PreparedStatement pst =con.prepareStatement(q);
           pst.setString(1,u);
           pst.setString(2,p);
           ResultSet rs = pst.executeQuery();
           RequestDispatcher disp =null;
           if(rs!=null && rs.next())
               {
               out.print("login authentication success");
               String r=rs.getString("role");
               
               if(r.equalsIgnoreCase("ADMIN"))
               {
                 disp=getServletContext().getRequestDispatcher("/AdminServlet");
               }
               else if(r.equalsIgnoreCase("USER"))
                        {
                   disp=getServletContext().getRequestDispatcher("/UserServlet");
                        }
               //else if (r.equalsIgnoreCase("EXPERT"))
               else
                       {
                           disp=getServletContext().getRequestDispatcher("/ExpertServlet");
                       }
               }
               else
               {
                out.print ("login authentication failed");
                        out.print("<a href=login.html>RElogin</a>");
               }

           disp.forward(request,response);
        }
        catch(Exception e)
        {
            out.print(e);   
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
