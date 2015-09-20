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

/**
 *
 * @author AJF
 */
public class bus extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //String description = request.getParameter("description"); // Retrieves <input type="text" name="description">
    /*Part filePart = request.getPart("archivo"); // Retrieves <input type="file" name="file">
    String filename = getFilename(filePart);
    InputStream filecontent = filePart.getInputStream();*/
        
}
     private boolean ServletRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            boolean flag = false;
            try {
                // Utiliza Part para accesar al objeto que viene de parametro
                Part p1 = request.getPart("archivo");
                InputStream is = p1.getInputStream();

                // Crear un archivo tmp en el server que guarda la info del archivo que subes
                //File outputfle = File.createTempFile("prueba", "txt");
                File outputfle =new File("C:\\Users\\AJF\\Documents\\prueba","txt");
                //outputfle.deleteOnExit();            
                FileOutputStream os = new FileOutputStream(outputfle);
                // Escribir en el archivo temporal, los bytes del objeto que viene de parametro.
                int ch = is.read();
                while (ch != -1) {
                    os.write(ch);
                    ch = is.read();
                }
                is.close();
                os.close();
            } catch (Exception ex) {           
               ex.printStackTrace();
            }
        return false;
        }
	//protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	//		throws ServletException, IOException {
            /***el doPost****/
            /*String rutaArchivo= req.getParameter("archivo");
            leerArchivo(rutaArchivo);*/
            
        //}
        
        public void leerArchivo(String a) throws FileNotFoundException, IOException
        {
            String cadena;
            FileReader f=new FileReader(a);
            BufferedReader b=new BufferedReader(f);
            while(null!=(cadena=b.readLine()))
            {
                //cadena es la linea leida
                System.out.println(cadena);
            }
            b.close();
        }
}
