/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicio.AdministrarChofer_Service;

/**
 *
 * @author AJF
 */
public class administrarChofer extends HttpServlet 
{
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/administrarChofer.wsdl")
    private AdministrarChofer_Service service;
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
        
        String idChofer=req.getParameter("idChofer");
        String nombre=req.getParameter("nombre");
        String correo = req.getParameter("correo");
	String pass = req.getParameter("contrasena");
        
        if(req.getParameter("guardar")!=null)
                {
                    insertarChofer(idChofer,nombre,correo,pass);
                }else if(req.getParameter("guardar")!=null)
                {
                    
                }
    }

    private boolean insertarChofer(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AdministrarChofer port = service.getAdministrarChoferPort();
        return port.insertarChofer(arg0, arg1, arg2, arg3);
    }
    
}
