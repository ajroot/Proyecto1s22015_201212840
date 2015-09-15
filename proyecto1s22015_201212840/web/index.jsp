<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->    

<head>
	<meta charset="utf-8" />
	<title>Ingresa a TSite</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="assets/plugins/select2/select2_metro.css" />
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<body class="login">
	<div class="logo">
	</div>
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="form-vertical login-form" action="login" method="post">
			<h3 class="form-title">Ingresa a tu cuenta</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Ingresa un Usuario y Contraseña valido.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Correo</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="correo"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Contrasena</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="contrasena"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button name="button1"  class="btn blue pull-right" type="submit" >
				Iniciar sesion :c <i class="m-icon-swapright m-icon-white"></i>
				</button>  
                            
			</div>    
    
			<div class="create-account">
				<p>
					Aun no tienes usuario, Registrate aqui&nbsp; 
					<a href="javascript:;" id="register-btn" >Crear una cuenta</a>
				</p>
			</div>
		</form>
                 

		<form class="form-vertical register-form"  action="index.html" method="post">
			<h3 >Ingresa</h3>
			<p>Registra tus datos:</p>
			
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email"/>
					</div>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Contrasena</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Vuelve a ingresar tu contraseña</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-ok"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword"/>
					</div>
				</div>
			</div>
			
			<div class="form-actions">
				<button id="register-back-btn" type="button" class="btn">
				<i class="m-icon-swapleft"></i>  Back
				</button>
				<button type="submit" id="register-submit-btn" class="btn green pull-right">
				Sign Up <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
	</div>
	<div class="copyright">
		2014 &copy; Alex Javier Fuentes Ramos 201212840
	</div>
	<script src="assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>  
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
	<script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
	<script src="assets/scripts/app.js" type="text/javascript"></script>
	<script src="assets/scripts/login-soft.js" type="text/javascript"></script>      
	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>

</body>
</html>