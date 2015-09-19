<!DOCTYPE html>

<head>
	<meta charset="utf-8" />
	<title>Administra los buses</title>
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
				<li class="navhome"><a href="buses.jsp" id="buses"><span>Buses</span></a></li>
                                <li><a href="estacion.jsp" id="estacion"><span>Estacion clave</span></a></li>
				<li><a href="reportes.jsp" id="estacion2"><span>Reportes</span></a></li>
                                 <li><a href="chofer.jsp" id="estacion2"><span>Chofer</span></a></li>
			</ul>
		</span>
	</div>
	<div class="content">
		<H2><font color="#fff">Agregar Buses</font></H2>
		<form class="contact_form" action="Bus" enctype="multipart/form-data" method="post">
                    <ul>
                            <li>
                                     <span class="required_notification">* Todos los campos son obligatorios</span>
                            </li>
                            <li>
                                    <label for="name">idBus</label>
                                    <input type="text" name="idBus" placeholder="Nombre de un puto bus :v" />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="name">Bus</label>
                                    <input type="text" name="bus" placeholder="Bus"/>
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <label for="name">archivo de carga</label>
                                    <input type="file" name="archivo" placeholder="C://tuPutoArchivo.csv"  />
                                    <span class="form_hint">* Este campo es obligatorio</span>
                            </li>
                            <li>
                                    <button class="submit" type="submit" name="guardar">Guardar Bus</button>
                                    <button class="submit" type="submit" name="graficar">Graficar Buses</button>
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