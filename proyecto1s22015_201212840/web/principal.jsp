<!DOCTYPE html>

<head>
	<meta charset="utf-8" />
	<title>Administradores</title>
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
				<li><a href="reportes.jsp" id="estacion2"><span>Reportes</span></a></li>
                                 <li><a href="chofer.jsp" id="estacion2"><span>Chofer</span></a></li>
			</ul>
		</span>
	</div>
	<div class="content">
		<H2><font color="#fff">Agregar administrador</font></H2>
		<form class="contact_form" action="admin" method="post">
                    <ul>
                            <li>
                                     <span class="required_notification">* Todos los campos son obligatorios</span>
                            </li>
                            <li>
                                    <label for="name">Correo</label>
                                    <input type="text" name="correo" placeholder="Algun puto nombre :v" required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">Contraseña</label>
                                    <input type="password" name="contrasena" placeholder="*********"  required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <button class="submit" type="submit" name="guardar">Guardar Usuario</button>
                                    <button class="submit" type="submit" name="graficar">Graficar arbol</button>
                            </li>
                    </ul>
                     
<%
        //String ax=(String)request.getAttribute("Texto");
        if(request.getAttribute("Texto")!=null)
        {%>
            <textarea name="Texto" rows="4" cols="50">
            <%=request.getAttribute("Texto")%>
                    </textarea> 
       <% }%>

                    

		
		</form>

	</div>

	<div class="copyright">
		2015 &copy; Alex Javier Fuentes Ramos 201212840
	</div>

</body>
<!-- END BODY -->
</html>