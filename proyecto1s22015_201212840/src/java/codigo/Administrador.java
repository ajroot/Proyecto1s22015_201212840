/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicio.AdministradorService;

/**
 *
 * @author AJF
 */
public class Administrador extends HttpServlet {
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/administradorService.wsdl")
    private AdministradorService service;
   
   
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String user = req.getParameter("correo");
		String pass = req.getParameter("contrasena");
                
                if(req.getParameter("guardar")!=null)
                {
                    req.setAttribute("Texto", "Se ha creado un nuevo Usuario Administrador");
                    if(!ingreso(user,pass))
                    {
                        if(insertar(user,pass))
                        {
                            req.setAttribute("Texto", "Se ha creado un nuevo Usuario Administrador");
                            
                        }else{
                            req.setAttribute("Texto", "Imposible crear nuevo Usuario, Consulte webManager");
                        }
                    }else{
                        req.setAttribute("Texto", "Imposible crear, usuario existente");
                    }
                    req.getRequestDispatcher("principal.jsp").forward(req, resp);
                }
                else if(req.getParameter("graficar")!=null)
                {
                    graficar();
                    req.setAttribute("Texto", "Se ha creado la grafica de administradores.");
                    req.getRequestDispatcher("principal.jsp").forward(req, resp);
                }
                    
		
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

    private boolean insertar(java.lang.String arg0, java.lang.String arg1) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.Administrador port = service.getAdministradorPort();
        return port.insertar(arg0, arg1);
    }

    private boolean graficar() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.Administrador port = service.getAdministradorPort();
        return port.graficar();
    }

    private boolean ingreso(java.lang.String arg0, java.lang.String arg1) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.Administrador port = service.getAdministradorPort();
        return port.ingreso(arg0, arg1);
    }


    
}
