<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>







<head>

<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>

<script>
        function enableButton2() {
            document.getElementById("button2").style.display='block';
            document.getElementById("button3").style.display='block';
        }
    </script>

</head>

<body onload="checkCookie()">

	

		<div class="page-wrapper badge-pill p-t-45 p-b-50">
			<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">Il tuo profilo</h2>
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
						<div class="form-row">
							<div class="name">Codice F.</div>
							<div class="value">
								<input readonly="text" class="input--style-5" type="text"
									name="codice_fiscale" value="${utente.getCodice_fiscale()}">
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

						<div class="form-row">
							<div class="name">Partita IVA</div>
							<div class="value">
								<input readonly="text" class="input--style-5" type="number"
									name="partita_iva" value="${utente.getPartita_iva()}">

							</div>
						</div>


						<!-- QUA RICHIAMO LA SERVLET CHE ELIMINA IL PROFILO -->
						<div>
							
								<p align="center">

									<!--  	<button class="btn btn--radius-2 btn--red text-md-center"
										type="submit" onclick="form.action='EliminaProfilo';">Elimina Profilo</button> -->

				<!--   	<button class="btn btn--radius-2 btn--red text-md-center" onchange="CheckReseller(this.value);" value="si">
						Elimina Profilo
					</button>-->
					
					
					
					<!-- <select name="color" onchange='CheckReseller(this.value);'> 
									    <option>pick a color</option>  
									    <option value="si">SI</option>
									    <option value="no">NO</option>
									    
									  </select> -->
									  
					<button class="btn btn--radius-2 btn--red text-md-center" id="button1" value="Vuoi Eliminare?" onclick="enableButton2()"  > Vuoi eliminare</button>
					
					<div class="form-row"></div>
					
	<div class="row row-space" align="center">
    <a href="EliminaProfilo?email=${utente.getEmail()}"> <button class="btn btn--radius-2 btn--red text-md-center"id="button2"  value="Si" style='display:none;'>Si, confermo</button></a>
    <a href="Profilo.jsp"><button class="btn btn--radius-2 btn--blue text-md-center"id="button3"  value="No" style='display:none;'>No, ho sbagliato</button></a>
			</div>
			
						
								
									
								<!--  	<select name="color" onchange='CheckColors(this.value);'> 
									    <option>pick a color</option>  
									    <option value="red">RED</option>
									    <option value="blue">BLUE</option>
									    <option value="others">others</option>
									  </select> 
									
										<div class="btn-group" style="display: none;" id="conferma"/>
											<button>Apple</button>
											<button>Samsung</button>
											<button>Sony</button>
										</div> -->
									
						</div>


				<div class="form-row"></div>
						<!-- SERVE PER LASCIARE UNA RIGA DI SPAZIO -->
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

		<script> 
									
							function myFunction() {
							  var txt;
							  var r = confirm("Sei sicuro di voler eliminare il tuo profilo");
							  if (r == true) {
								txt = "Ci dispiace che tu sia andato via..";
								  onclick="form.action='EliminaProfilo';"
							  } else {
								txt = "Sei ancora tra di noi :)";
								  
							  }
							  document.getElementById("demo").innerHTML = txt;
							}
</script>
	


		

	

</body>

