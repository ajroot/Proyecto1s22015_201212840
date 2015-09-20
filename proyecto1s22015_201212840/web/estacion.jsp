<!DOCTYPE html>

<head>
	<meta charset="utf-8" />
	<title>Administra las Estaciones</title>
	<link href="login-soft.css" rel="stylesheet" type="text/css"/>
</head>

<body class="login" >
<!--div class="logo">
</div-->

	<div class="main">
		<div id="navbar">
		<span class="inbar">
			<ul>
				<li id="home"><a href="principal.jsp"><span>Administrador</span></a></li>
				<li  ><a href="buses.jsp" id="buses"><span>Buses</span></a></li>
                                <li class="navhome"><a href="estacion.jsp" id="estacion"><span>Estacion clave</span></a></li>
				<li><a href="reportes.jsp" id="estacion2"><span>Reportes</span></a></li>
                                <li><a href="chofer.jsp" id="estacion2"><span>Chofer</span></a></li>
			</ul>
		</span>
	</div>
	<div class="content">
		<H2><font color="#fff">Administra las estaciones</font></H2>
		<form class="contact_form" action="estacion" method="post">
                    <ul>
                        <H2><font color="#fff">Estacion General</font></H2>
                            <li>
                                     <span class="required_notification">* Todos los campos son obligatorios</span>
                            </li>
                            <li>
                                    <label for="name">id (entero)</label>
                                    <input type="text" name="id" placeholder="13265" required onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"/>
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">hora llegada</label>
                                    <input type="text" name="horaLlegada" placeholder="5511"  required onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"/>
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="email">Cantidad Personas</label>
                                    <input type="text" name="cantPer" placeholder="5511"  required onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"/>
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                <label for="name">Se necesita nuevo Bus</label>
                                 <input type="checkbox" name="nBus" value="Necesita Bus" checked>
                            </li>
                            <li>
                                    <label for="email">Cantidad Personas en Bus</label>
                                    <input type="text" name="cantPerenBus" placeholder="5511"  required onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;"/>
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <button class="submit" type="submit" name="guardar">Guardar Estacion General</button>
                                    <button class="submit" type="submit" name="graficar">Graficar</button>
                            </li>
                    </ul>
                    <ul>
                        <H2><font color="#fff">Estacion Clave</font></H2>
                            <li>
                                     <span class="required_notification">* Todos los campos son obligatorios</span>
                            </li>
                            <li>
                                    <label for="name">Correo</label>
                                    <input type="text" name="correo" placeholder="Bladimir Castellanos :v" required />
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
                    

		
		</form>

	</div>

	<div class="copyright">
		2015 &copy; Alex Javier Fuentes Ramos 201212840
	</div>

</body>
<!-- END BODY -->
</html>