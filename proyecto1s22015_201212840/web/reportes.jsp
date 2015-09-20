<!DOCTYPE html>

<head>
	<meta charset="utf-8" />
	<title>Genera tus Reportes</title>
	<link href="login-soft.css" rel="stylesheet" type="text/css"/>
        
</head>

<body class="login" >
<!--div class="logo">
</div-->

	<div class="main">
		<div id="navbar">
		<span class="inbar">
			<ul>
				<li class="navhome" id="home"><a href="principal.jsp"><span>Administrador</span></a></li>
				<li><a href="buses.jsp" id="buses"><span>Buses</span></a></li>
                                <li><a href="estacion.jsp" id="estacion"><span>Estacion clave</span></a></li>
				<li class="navhome"><a href="reportes.jsp" id="estacion2"><span>Reportes</span></a></li>
                                 <li><a href="chofer.jsp" id="estacion2"><span>Chofer</span></a></li>
			</ul>
		</span>
	</div>
	<div class="content">
		<H2><font color="#fff">Genera tus Reportes</font></H2>
		<form class="contact_form" action="" method="post">
               
                    <table>
                    
                        
                   <tr>
                      <td><strong>Bus</strong></td>
                      <td><strong>hora Inicio</strong></td>
                      <td><strong>Hora Fin</strong></td>
                      <td><strong>Fecha</strong></td>
                    </tr>
                    
                    
                        <%-- start web service invocation --%><hr/>
    <%
    try {
	servicio.AsignacionBuses_Service service = new servicio.AsignacionBuses_Service();
	servicio.AsignacionBuses port = service.getAsignacionBusesPort();
	 // TODO initialize WS operation arguments here
	java.lang.String arg0 = "nuevo";
	// TODO process result here
	java.lang.String result = port.datosAsignacinoBusHorario(arg0);
        String  [] texto=result.split("--");
        
        String []otro;
        
        for(int i=0;i<texto.length;i++)
        {
            otro=texto[i].split(",");
        
        
	%>
        <tr>
                      <td><strong><%=otro[0]%></strong></td>
                      <td><strong><%=otro[1]%></strong></td>
                      <td><strong><%=otro[2]%></strong></td>
                      <td><strong><%=otro[3]%></strong></td>
        </tr>
        
<%}
//out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

                    
          </table>          
                    
                    
		
		</form>

	</div>

	<div class="copyright">
		2015 &copy; Alex Javier Fuentes Ramos 201212840
	</div>

</body>
<!-- END BODY -->
</html>