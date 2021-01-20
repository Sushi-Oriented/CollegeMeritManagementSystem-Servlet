
package programStudent;

import bean.Program;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author mhafizkn
 */
public class stud_programDetail extends HttpServlet {
    
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            HttpSession session = request.getSession();
            String progID = request.getParameter("progID");
            
            String seql = "select * from program where progID = ?";
            PreparedStatement ps = con.prepareStatement(seql);
            ps.setString(1, progID);
            ResultSet rs = ps.executeQuery();

            Program pro = new Program();         
            while (rs.next()) {   
                pro.setFirstEmail(rs.getString(1));
                pro.setProgID(rs.getInt(2));
                pro.setProgName(rs.getString(3));
                pro.setProgLocation(rs.getString(4));
                pro.setProgStartDate(rs.getDate(5));
                pro.setProgEndDate(rs.getDate(6));
                pro.setProgOrganizer(rs.getString(7));
                pro.setProgCategory(rs.getString(8));
                pro.setProgDescription(rs.getString(9));
                pro.setProgStatus(rs.getString(10));
            }
            
            session.setAttribute("pro", pro);
            response.sendRedirect("stud_history_details.jsp");
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
