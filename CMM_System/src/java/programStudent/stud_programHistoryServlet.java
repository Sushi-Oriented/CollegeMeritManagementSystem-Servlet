/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programStudent;

import bean.Program;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.console;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author User
 */
public class stud_programHistoryServlet extends HttpServlet {

    private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() throws ServletException
    {
        jdbcUtility = new JDBCUtility();
        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession session = request.getSession();
            String firstemail = (String)session.getAttribute("firstemail");
            
            String sql = "select * from program where firstemail = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstemail);
            ResultSet rs = ps.executeQuery();
            
            Vector progList = new Vector();
            
            while (rs.next()) 
            {   
                Program pro = new Program();

                pro.setProgID(rs.getInt("progID"));
                pro.setFirstEmail(rs.getString("firstemail"));
                pro.setProgName(rs.getString("progName"));
                pro.setProgLocation(rs.getString("progLocation"));
                pro.setProgStartDate(rs.getDate("progStartDate"));
                pro.setProgEndDate(rs.getDate("progEndDate"));
                pro.setProgOrganizer(rs.getString("progOrganizer"));
                pro.setProgCategory(rs.getString("progCategory"));
                pro.setProgDescription(rs.getString("progDescription"));
                pro.setProgStatus(rs.getString("progStatus"));
                
                progList.addElement(pro);
            }
            
            session.setAttribute("progList", progList);
            response.sendRedirect("stud_history.jsp");
        }
        catch (SQLException | IOException e){
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
