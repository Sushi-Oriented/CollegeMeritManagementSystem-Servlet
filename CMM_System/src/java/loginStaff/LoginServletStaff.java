/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginStaff;

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
public class LoginServletStaff extends HttpServlet {

    private LoginDaoStaff loginDao;
    
    public void init(){
        loginDao = new LoginDaoStaff();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstemail = request.getParameter("firstemail");
        String password = request.getParameter("password");
        LoginBeanStaff loginBean = new LoginBeanStaff();
        loginBean.setFirstemail(firstemail);
        loginBean.setPassword(password);
        
        HttpSession session = request.getSession(true);
        
        session.setAttribute("firstemail", firstemail);
           
        try {
            if (loginDao.validate(loginBean)) {
                PrintWriter out = response.getWriter();
                response.sendRedirect("staff_index.jsp");
            } 
            
            else {
                PrintWriter out = response.getWriter();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Wrong email or password');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }
        } 
        
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
