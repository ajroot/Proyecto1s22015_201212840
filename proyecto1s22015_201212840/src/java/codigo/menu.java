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

/**
 *
 * @author AJF
 */
public class menu extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
        String user = req.getParameter("correo");
        String pass = req.getParameter("contrasena");
        if(req.getParameter("admin")!=null)
        {
           // insertar(user,pass);
        }
        else if(req.getParameter("estacion")!=null)
        {
            //graficar();
        }else if(req.getParameter("estacionGeneral")!=null)
        {
            //graficar();
        }else if(req.getParameter("bus")!=null)
        {
            //graficar();
        }
    }
    
}
