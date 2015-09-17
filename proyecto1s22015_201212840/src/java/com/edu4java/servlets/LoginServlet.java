package com.edu4java.servlets;
//package java;
import java.administradorWebService;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicio.AdministradorService;


public class LoginServlet extends HttpServlet {
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/administradorService.wsdl")
    private AdministradorService service;
   
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String user = req.getParameter("correo");
		String pass = req.getParameter("contrasena");
		if (ingreso(user,pass)) {
			resp.sendRedirect("principal.jsp");
		} else {
			otro(resp);
		}
               // resp.sendRedirect("login.html");
            /*if(req.getParameter("button1") != null)
            {
                otro(resp);
            }*/
	}


    
    
    public void otro(HttpServletResponse resp)
			throws IOException {
        PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<t1>Invalido, Regresa"+ "</t1>");
		out.println("</body>");
		out.println("</html>");
    }

    private boolean ingreso(java.lang.String arg0, java.lang.String arg1) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.Administrador port = service.getAdministradorPort();
        return port.ingreso(arg0, arg1);
    }

    
}