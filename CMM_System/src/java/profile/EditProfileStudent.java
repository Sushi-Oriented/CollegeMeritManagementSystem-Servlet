/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alifah Ilyana binti Soharto B19EC0003
 */
public class EditProfileStudent extends HttpServlet {
    
    String driver = "com.mysql.jdbc.Driver";
    String dbName = "cmmsdb";
    String url = "jdbc:mysql://localhost/" + dbName + "?";
    String username = "root";
    String password = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            String firstemail = (String)session.getAttribute("firstemail");
            
            String nickname = request.getParameter("nickname");
            String secondemail = request.getParameter("secondemail");
            String studphoneno = request.getParameter("studphoneno");
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, password);
            String updateQry = "update user set nickname = ? , secondemail = ?, studphoneno = ? where firstemail = ?";
            PreparedStatement ps = con.prepareStatement(updateQry);
            ps.setString(1, nickname);
            ps.setString(2, secondemail);
            ps.setString(3, studphoneno);
            ps.setString(4, firstemail);
            ps.executeUpdate();
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Successfully updated!');");
            out.println("location='ProfileStudent';");
            out.println("</script>");
        }
        catch(Exception e){
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