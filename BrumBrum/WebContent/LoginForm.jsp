<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>


<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="633207582129-raaqpsm1476l5sthlnt8ld3g60tvi4p5.apps.googleusercontent.com">


</head>


<body>
	<form method="get" action="FaiLogin">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url('img/sfondoLogin.jpg');">
				<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
					<form class="login100-form validate-form">
						<span class="login100-form-title p-b-49"> Login </span>

						<div class="wrap-input100 validate-input m-b-23"
							data-validate="email is reauired">
							<span class="label-input100">Email</span> <input class="input100"
								type="text" name="email" placeholder="Inserisci la tua email"
								required id="insEmail"> <span class="focus-input100"
								data-symbol="&#xf206;"></span>
						</div>

						<div class="wrap-input100 validate-input"
							data-validate="Password is required">
							<span class="label-input100">Password</span> <input
								class="input100" type="password" name="pass"
								placeholder="Inserisci la tua password" required id="insPass">
							<span class="focus-input100" data-symbol="&#xf190;"></span>
						</div>

						<div class="text-right p-t-8 p-b-31">
							<a href="contact.jsp"> Password Dimenticata? </a>
						</div>



						<div class="container-login100-formF-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn" onClick="checkbox()">
									Login</button>
							</div>
						</div>

						<div class="form-row"></div>
						<p align="center">oppure esegui il login tramite</p>
						<div class="form-row"></div>

						<div class="flex-c-m">

							<button class="g-signin2" data-onsuccess="onSignIn"></button>
						</div>

						<div class="form-row"></div>

						<p align="center">
							<span class="txt1 p-b-17"> Sei nuovo su brumbrum? </span> <a
								href="RegForm.jsp" class="txt2"> Registrati </a>
						</p>
					</form>

				</div>
			</div>
		</div>



		<script>
      function onSignIn(googleUser) {
    	  var profile = googleUser.getBasicProfile();    		
      var imagurl=profile.getImageUrl();
      var name=profile.getName();
      var email=profile.getEmail();
     
    
      window.location.assign("LogGoogle?email="+email+"&nome="+name);
   }
   </script>

		<script>
      function myFunction() {
      gapi.auth2.getAuthInstance().disconnect();
      location.reload();
   }
   </script>



		<div id="dropDownSelect1"></div>


		<script src="js/cookie.js"></script>

		<!--/end:Site wrapper -->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<%@ include file="include/script.jsp"%>
		<script src="js/cookie.js"></script>
		<script src="js/googleLogin.js"></script>
		<script src="js/fbLogin.js"></script>
		<script
			src="https://apis.google.com/js/platform.js?onload=renderButton"
			async defer></script>
		<script src="https://apis.google.com/js/platform.js?onload=onLoad"
			async defer></script>
		<script src="https://apis.google.com/js/api.js"></script>

		<script src='http://connect.facebook.net/en_US/all.js'></script>


		<!--===============================================================================================-->
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/bootstrap/js/popper.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/select2/select2.min.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/daterangepicker/moment.min.js"></script>
		<script src="vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
		<script src="vendor/countdowntime/countdowntime.js"></script>
		<!--===============================================================================================-->
		<script src="js/main.js"></script>
	</form>
</body>


<footer>

	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>

</footer>
