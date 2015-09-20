<!DOCTYPE html>

<head>
	<meta charset="utf-8" />
	<title>Administra los choferes</title>
	<link href="login-soft.css" rel="stylesheet" type="text/css"/>
</head>

<body class="login" >
<!--div class="logo">
</div-->

	<div class="main">
		<div id="navbar">
		<span class="inbar">
			<ul>
				<li  id="home"><a href="principal.jsp"><span>Administrador</span></a></li>
				<li><a href="buses.jsp" id="buses"><span>Buses</span></a></li>
                                <li><a href="estacion.jsp" id="estacion"><span>Estacion clave</span></a></li>
				<li><a href="reportes.jsp" id="estacion2"><span>Reportes</span></a></li>
                                 <li class="navhome"><a href="chofer.jsp" id="estacion2"><span>Chofer</span></a></li>
			</ul>
		</span>
	</div>
	<div class="content">
		<H2><font color="#fff">Agregar/Modificar Choferes</font></H2>
		<form class="contact_form" action="chofer" method="post">
                    <ul>
                            <li>
                                     <span class="required_notification">* Todos los campos son obligatorios</span>
                            </li>
                            <li>
                                    <label for="name">id</label>
                                    <input type="text" name="idChofer" placeholder="aWnRe31" required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">Nombre</label>
                                    <input type="text" name="nombre" placeholder=" Juan Perez "  required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">Correo</label>
                                    <input type="text" name="correo" placeholder="chofer@chofer.com"  required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">Contraseña </label>
                                    <input type="password" name="contrasena" placeholder="***********"  required />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <button class="submit" type="submit" name="guardar">Guardar Usuario</button>
                                    <button class="submit" type="submit" name="modificar">Modificar Chofer</button>
                            </li>
                            <li>
                                    <button class="submit" type="submit" name="graficar">Graficar Choferes</button>
                            </li>
                    </ul>
                    
                    

		
		</form>

	</div>

	<div class="copyright">
		2015 &copy; Alex Javier Fuentes Ramos 201212840
	</div>

</body>
<!-- END BODY -->
</html>