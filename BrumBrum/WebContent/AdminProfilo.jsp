<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html>

<head>
<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>
</head>

<body onload="checkCookie()">

	

		<div class="page-wrapper badge-pill p-t-45 p-b-50">
			<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">WELCOME ADMIN</h2>
					</div>
					<div class="card-body">
						<div class="form-row m-b-55">
							<div class="name">Generali</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2 col-lg-6">
										<div class="input-group-desc">
											<input readonly="text" class="input--style-5" type="text"
												name="nome" value="${utente.getNome()}"> <label
												class="label--desc">Nome</label>
										</div>
									</div>
									<div class="col-4 col-lg-6">
										<div class="input-group-desc">
											<input readonly="text" class="input--style-5" type="text"
												name="cognome" value="${utente.getCognome()}"> <label
												class="label--desc">Cognome</label>
										</div>
									</div>
								</div>
							</div>

						</div>

						<div class="form-row m-b-55">
							<div class="name">Login info</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-2 col-lg-6">
										<div class="input-group-desc">
											<input readonly="text" class="input--style-5" type="text"
												name="username" value="${utente.getUsername()}"> <label
												class="label--desc">Username</label>
										</div>
									</div>
									<div class="col-2 col-lg-6">
										<div class="input-group-desc">
											<input readonly="text" class="input--style-5" type="Tipo"
												name="tipo" value="**********" value="${utente.getTipo()}">
											<label class="label--desc">Password</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<input readonly="text" class="input--style-5" type="email"
										name="email" value="${utente.getEmail()}">
									<div class="input-group">

										<div class="rs-select2 js-select-simple select--no-search">
											<div class="select-dropdown"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- PULSANTE AGGIUNGI AUTO -->

						<div class="form-row">
							<a href="AddCar"> <img src="img/icons/add2.png" alt="">
							</a>
							<p class="font-weight-bold">Aggiungi un automobile al sistema
							</p>
						</div>


						<!-- FINE CARD BODY -->
					</div>
	
	<div class="form-row"></div>
	<!-- SERVE PER LASCIARE UNA RIGA DI SPAZIO -->


	</div>
	</div>
	</div>
	</div>


	<footer>
		<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
	</footer>
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
</html>
