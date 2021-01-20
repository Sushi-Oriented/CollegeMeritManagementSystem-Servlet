/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import bean.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alifah Ilyana binti Soharto B19EC0003
 */
public class ProfileStudent extends HttpServlet {
    
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
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, password);
            String selectQry = "select * from user where firstemail = ?";
            PreparedStatement ps = con.prepareStatement(selectQry);
            ps.setString(1, firstemail);
            ResultSet rs = ps.executeQuery();
            User student = new User();
            
            while(rs.next()){                
                student.setFullname(rs.getString(1));
                student.setNickname(rs.getString(2));
                student.setFirstemail(rs.getString(3));
                student.setSecondemail(rs.getString(4));
                student.setStudentID(rs.getString(5));
                student.setStudphoneno(rs.getString(6));
            }
            
            session.setAttribute("student", student);
            response.sendRedirect("stud_profile.jsp");
        }
        catch(ClassNotFoundException | SQLException e){
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