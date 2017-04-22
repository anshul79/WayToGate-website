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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class loginservlet1 extends HttpServlet {

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
             
             String u=request.getParameter("t1");
             String p=request.getParameter("t2");
             String q="select password from login where uname='"+u+"'";
             Class.forName("com.mysql.jdbc.Driver");
             Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdatabase","root","password");
           Statement stmt=con.createStatement();
             //PreparedStatement pst= con.prepareStatement(q);
            
             
             ResultSet rs=stmt.executeQuery(q);
             rs.next();
             String a=rs.getString("password");
  if(a.equals(p))
  {
      HttpSession ses=request.getSession(true);
      ses.setAttribute("Uname",u);
      //out.print("heloooo "+u);
      RequestDispatcher disp=null;
      disp=getServletContext().getRequestDispatcher("/home.jsp");
      disp.forward(request, response);
                 
  }
  else 
  {
      
       RequestDispatcher disp=null;
                disp=getServletContext().getRequestDispatcher("/home.jsp");
                 disp.forward(request, response);
     
  }
 
        }
        catch(Exception e)
        {
            out.println(e);
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
