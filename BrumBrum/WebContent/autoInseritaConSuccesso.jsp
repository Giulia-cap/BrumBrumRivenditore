<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<head>


<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>


</head>

<body>
	<form method="get" action="FaiLogin">
		<div class="limiter">
			<div class="container-login100"
				style="background-image: url('img/azzurro.png');">

				<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
					<form class="login100-form validate-form">
						<p class="login100-form-title p-b-49">La tua auto è stata inserita con successo!</p>
						<p class="txt1 text-center p-t-54 p-b-20">
							<a href="AdminProfilo.jsp" class="txt2"> Torta indietro. </a>
						</p>

						<div class="flex-c-m">
							</span>
					</form>

				</div>
			</div>
		</div>



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
