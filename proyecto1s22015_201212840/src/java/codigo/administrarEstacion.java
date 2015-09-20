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
import servicio.AdministrarEstacionClave_Service;

/**
 *
 * @author AJF
 */
public class administrarEstacion extends HttpServlet{
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/administrarEstacionClave.wsdl")
    private AdministrarEstacionClave_Service service;
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        int horallegada= Integer.parseInt(req.getParameter("horaLlegada"));
        int cantPersonas= Integer.parseInt(req.getParameter("cantPer"));
        boolean need=Boolean.parseBoolean(req.getParameter("nBus"));
        int restantes= Integer.parseInt(req.getParameter("cantPerenBus"));
        if(req.getParameter("guardar")!=null)
        {
            this.insertarEstacionClave(id, horallegada, cantPersonas, need, restantes);
            req.getRequestDispatcher("estacion.jsp").forward(req, resp);
        }else if(req.getParameter("graficar")!=null)
        {
            this.graficarEstacionClave();
            req.getRequestDispatcher("estacion.jsp").forward(req, resp);
        }
        
    }

    private boolean insertarEstacionClave(int arg0, int arg1, int arg2, boolean arg3, int arg4) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AdministrarEstacionClave port = service.getAdministrarEstacionClavePort();
        return port.insertarEstacionClave(arg0, arg1, arg2, arg3, arg4);
    }

    private boolean graficarEstacionClave() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AdministrarEstacionClave port = service.getAdministrarEstacionClavePort();
        return port.graficarEstacionClave();
    }
    
    
    
    
}
