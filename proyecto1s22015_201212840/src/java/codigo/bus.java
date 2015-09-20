/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.xml.ws.WebServiceRef;
import servicio.AdministradorBuses_Service;
import servicio.AsignacionBuses_Service;

/**
 *
 * @author AJF
 */
public class bus extends HttpServlet{
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/administradorBuses.wsdl")
    private AdministradorBuses_Service service;
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/192.168.0.116_8080/Servidor/asignacionBuses.wsdl")
    private AsignacionBuses_Service service_1;

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idBus = req.getParameter("idBus");
        String idBus2 = req.getParameter("idBus2");
        String ruta= req.getParameter("ruta");
                String claveChofer= req.getParameter("claveChofer");
                String horaI= req.getParameter("HoraInicio");
                String horaF= req.getParameter("HoraFin");
                String fecha= req.getParameter("fecha");
        if(req.getParameter("guardarBus")!=null)
        {
                
                insertarId(idBus);
                req.getRequestDispatcher("buses.jsp").forward(req, resp);       
        }if(req.getParameter("guardarAsignacion")!=null)
        {
                
                
                insertarBus(idBus2,ruta,claveChofer,horaI,horaF,fecha);
                req.getRequestDispatcher("buses.jsp").forward(req, resp);       
        } if(req.getParameter("graficarListaA")!=null)
        {
            graficarAsignacionBus();
        } if(req.getParameter("graficarListaB")!=null)
        {
            graficarListaBuses();
        }
        req.getRequestDispatcher("buses.jsp").forward(req, resp);       
        
}
 

    
    private boolean insertarBus(java.lang.String arg0, java.lang.String arg1, java.lang.String arg2, java.lang.String arg3, java.lang.String arg4, java.lang.String arg5) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AsignacionBuses port = service_1.getAsignacionBusesPort();
        return port.insertarBus(arg0, arg1, arg2, arg3, arg4, arg5);
    }

    private boolean graficarAsignacionBus() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AsignacionBuses port = service_1.getAsignacionBusesPort();
        return port.graficarAsignacionBus();
    }

    private boolean insertarId(java.lang.String arg0) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AdministradorBuses port = service.getAdministradorBusesPort();
        return port.insertarId(arg0);
    }

    private boolean graficarListaBuses() {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicio.AdministradorBuses port = service.getAdministradorBusesPort();
        return port.graficarListaBuses();
    }

    

   

   
}
