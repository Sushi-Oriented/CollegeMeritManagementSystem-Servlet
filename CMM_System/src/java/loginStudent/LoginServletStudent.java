/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loginStudent;

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
public class LoginServletStudent extends HttpServlet {

    private LoginDaoStudent loginDao;

    public void init() {
        loginDao = new LoginDaoStudent();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstemail = request.getParameter("firstemail");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();
        LoginBeanStudent loginBean = new LoginBeanStudent();
        loginBean.setFirstemail(firstemail);
        loginBean.setPassword(password);
        
        HttpSession session = request.getSession(true);
        
        session.setAttribute("firstemail", firstemail);
  
        try {
            
            if (loginDao.validate(loginBean)) {
        
                response.sendRedirect("stud_index.jsp");
            } 
            
            else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Wrong email or password');");
                out.println("location='login.jsp';");
                out.println("</script>");
            }
        } 
        
        catch (ClassNotFoundException e) {
            out.println(e);
            e.printStackTrace();
        }
    }
}