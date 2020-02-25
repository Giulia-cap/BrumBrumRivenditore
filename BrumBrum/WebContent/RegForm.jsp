<%@ page language="java" contentType="text/html; charset=UTF-8"%>    <!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>


<!DOCTYPE html>

	

	
<head>
	<%@ include file="include/headindex.jsp"%>

			<!--  SERVE A FAR COMPARIRE O MENO IL CAMPO PARTITA IVA -->
<script type="text/javascript">
function CheckReseller(val){
 var element=document.getElementById("partita_iva");
 if(val=="si")
   element.style.display='block';
 else  
   element.style.display='none';
}
</script>
			<!--  SERVE A FAR COMPARIRE O MENO IL CAMPO PARTITA IVA -->

<%@ include file="include/NewHEADER.jsp"%>


</head>

	
	
<body>
	

	<!-- LA FORM INIZIA DA QUI -->


	<form method="post" action="RegistrazioneUtente">
		<div class="page-wrapper bg-white p-t-45 p-b-50" style="background-image: url('img/azzurro.png');">
			<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">Registrati</h2>
					</div>
					<div class="card-body">
						<form method="POST">
							<div class="form-row m-b-55">
								<div class="name">Generali</div>
								<div class="value">
									<div class="row row-space">
										<div class="col-2 col-lg-5">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="nome">
												<label class="label--desc">Nome</label>
											</div>
										</div>
										<div class="col-5">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="cognome">
												<label class="label--desc">Cognome</label>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="form-row">
								<div class="name">Codice F.</div>
								<div class="value">
									<input class="input--style-5" type="text" name="codice_fiscale">
									<div class="input-group">

										<div class="rs-select2 js-select-simple select--no-search">
											<div class="select-dropdown"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row m-b-55">
								<div class="name">Login info</div>
								<div class="value">
									<div class="row row-space">
										<div class="col-5">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="username">
												<label class="label--desc">Username</label>
											</div>
										</div>
										<div class="col-5">
											<div class="input-group-desc">
												<input class="input--style-5" type="password"
													name="password"> <label class="label--desc">Password</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="name">Email</div>
								<div class="value">
									<div class="input-group">
										<input class="input--style-5" type="email" name="email">
									</div>
								</div>
							</div>


							
							
							<div class="form-row">
								<div class="name"></div>
								
									<input placeholder="INSERISCI LA PARTITA IVA"
										class="input--style-5" type="text" name="partita_iva"
										id="partita_iva"/>

								
							</div>
							
							
							<div>
								<p align="center">
									<button class="btn btn--radius-2 btn--red" type="submit">Registrati</button>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Jquery JS-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<!-- Vendor JS-->
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/datepicker/moment.min.js"></script>
		<script src="vendor/datepicker/daterangepicker.js"></script>
		
		
		<!-- Main JS-->
		<script src="js/global.js"></script>
	</form>
	
</body>
<footer>
<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>

<!-- end document-->
