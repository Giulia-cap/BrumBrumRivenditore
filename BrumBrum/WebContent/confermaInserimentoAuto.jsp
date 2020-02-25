<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>







<head>

<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>


</head>

<body onload="checkCookie()">
<div class="form-row"></div>

	<!-- INIZIO SCHEDA RIEPILOGATIVA -->

	<div class="page-wrapper badge-pill p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Riepilogo inserimento auto</h2>
				</div>
				<div class="card-body">
					<div class="form-row m-b-55">
						<div class="name">Generali</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-6">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="nome" value="${automobile.getMarca()}"> <label
											class="label--desc">Marca</label>
									</div>
								</div>
								<div class="col-4 col-lg-6">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="cognome" value="${automobile.getModello()}">
										<label class="label--desc">Modello</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-row m-b-65">
						<div class="name">Specifiche</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="alimentazione"
											value="${automobile.getAlimentazione()}"> <label
											class="label--desc">Alimentazione</label>
									</div>
								</div>
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="categoria" value="${automobile.getCategoria()}">
										<label class="label--desc">Categoria</label>
									</div>
								</div>
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="cambio" value="${automobile.getCambio()}">
										<label class="label--desc">Cambio</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-row m-b-55">
						<div class="name">Immagine auto</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-6">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="immagine" value="${automobile.getImmagine()}">
										<label class="label--desc">Immagine auto</label>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">Altri dati</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="chilometri" value="${automobile.getKm()}">
										<label class="label--desc">Chilometri percorsi</label>
									</div>
								</div>
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="colore" value="${automobile.getColore()}">
										<label class="label--desc">Colore</label>
									</div>
								</div>
								<div class="col-2 col-lg-4">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="targa" value="${automobile.getTarga()}"> <label
											class="label--desc">Targa</label>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-row m-b-55">
						<div class="name">Prezzi</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-6">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="nome" value="${automobile.getPrezzovendita()}">
										<label class="label--desc">Prezzo vendita</label>
									</div>
								</div>
								<div class="col-4 col-lg-6">
									<div class="input-group-desc">
										<input readonly="text" class="input--style-5" type="text"
											name="cognome" value="${automobile.getPrezzonoleggio()}">
										<label class="label--desc">Prezzo noleggio</label>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- FINE SCHEDA RIEPILOGATIVA -->



					<div>
						<p align="center">
							<textarea class="form-control" rows = "2" style="text-align:center;">L'automobile è stata aggiunta. Se vuoi modificare clicca sul tasto "Modifica", altrimenti conferma.</textarea>
						<div class="form-row"></div>

						<div class="row row-space" align="center">
							<a href="autoInseritaConSuccesso.jsp">
								<button class="btn btn--radius-2 btn--red text-md-center"
									 value="Si" style='display: block;'>Si confermo</button>
							</a> <a href="ModificaAuto.jsp"><button
									class="btn btn--radius-2 btn--blue text-md-center" id="button3"
									value="No" style='display: block;'>Modifica</button></a>
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

