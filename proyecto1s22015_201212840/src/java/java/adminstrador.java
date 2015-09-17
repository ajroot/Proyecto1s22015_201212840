/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package java;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AJF
 */
public class adminstrador extends HttpServlet{
    @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
            PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>asdfasdf" + "</t1>");
		out.println("</body>");
		out.println("</html>");
		//String user = req.getParameter("correo");
		//String pass = req.getParameter("contrasena");
		
               // resp.sendRedirect("login.html");
            /*if(req.getParameter("button1") != null)
            {
                otro(resp);
            }*/
	}

    
    
}
