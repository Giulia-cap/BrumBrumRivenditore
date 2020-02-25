<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

<head>
<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>
</head>
<body>
	<form id="regForm" action="AddCar" method="post">
		<div class="page-wrapper badge-pill p-t-45 p-b-50">
			<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">Aggiungi un'automobile</h2>
					</div>

					<div class="card-body">


						<!-- One "tab" for each step in the form: -->

						<div class="tab">
							<div class="form-row row-space">
								<div class="name">
									<div class="name">&nbsp; &nbsp; &nbsp;Generali</div>
								</div>
								<div class="value">
									<div class="row row-space">
										<div class="col-2 col-lg-5 offset-lg-0">
											<div class="input-group-desc">
												<label
													class="label--desc align-content-center align-items-md-center"></label>
												<input class="input--style-5" type="text" name="marca"
													value="Marca" onfocus="this.value=''" placeholder="marca"><label
											class="label--desc">Marca</label>
											</div>
										</div>
										<div class="col-2 col-lg-5 offset-lg-0">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="modello"
													value="Modello" onfocus="this.value=''" placeholder="modello"><label
											class="label--desc">Modello</label>
											</div>
										</div>
									</div>
								</div>
							</div>



							<div class="row row-space">
								<div class="input-group-desc col-lg-12">
									<div class="form-row m-b-55">
										<div class="name">&nbsp; &nbsp; Specifiche</div>
										<div class="value">

											<div
												class="rs-select2 js-select-simple select--no-search col-lg-12">
												<select name="alimentazione">
													<option disabled="disabled" selected="selected">Alimentazione</option>
													<option>Benzina</option>
													<option>Diesel</option>
												</select> <select name="categoria">
													<option disabled="disabled" selected="selected">Categoria</option>
													<option>Suv</option>
													<option>Cross-Over</option>
													<option>Sportiva</option>
													<option>Utilitaria</option>
												</select> <select name="cambio">
													<option disabled="disabled" selected="selected">Cambio</option>
													<option>Automatico</option>
													<option>Manuale</option>

												</select>

											</div>
										</div>
									</div>
								</div>
							</div>
							<label> Carica un'immagine dell'automobile.</label> <input
								name="immagine" type="file" size="20">
						</div>
						<!--  fine primo tab -->



						<div class="tab">
							<div class="form-row m-b-55">
								<div class="name">&nbsp; Storia</div>
								<div class="value">
									<div class="row">
										<div class="col-2 col-lg-5">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="date" name="anno"
													onfocus="this.value=''" value="anno" ><label
											class="label--desc">Data di immatricolazione</label>
											</div>
										</div>
										<div class="col-2 col-lg-5 offset-lg-1">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="chilometri"
													onfocus="this.value=''" value="km percorsi" placeholder="km percorsi"><label
											class="label--desc">Chilometri percorsi</label>
											</div>
										</div>
									</div>
								</div>

							</div>
							<div class="form-row m-b-55">
								<div class="name">&nbsp; &nbsp;Altri dati</div>
								<div class="value">
									<div class="row">
										<div class="col-2 col-lg-4">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="colore"
													onfocus="this.value=''" value="Colore" placeholder="colore"><label
											class="label--desc">Colore</label>
											</div>
										</div>
										<div class="col-2 col-lg-4">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="targa"
													onfocus="this.value=''" value="Targa" placeholder="targa"><label
											class="label--desc">Targa</label>
											</div>
										</div>
										<div class="col-2 col-lg-4">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="colore"
													onfocus="this.value=''" value="Tagliandi" placeholder="tagliandi"><label
											class="label--desc">Numero tagliandi</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- fine secondo tab -->

						<div class="tab">
							<div class="form-row m-b-55">
								<div class="name">&nbsp; &nbsp; &nbsp;Prezzi</div>
								<div class="value">
									<div class="row row-space">
										<div class="col-2 col-lg-6 offset-lg-0">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="prezzovendita"
													onfocus="this.value=''" value="Prezzo vendita" placeholder="prezzo vendita"><label
											class="label--desc">Prezzo vendita</label>
											</div>
										</div>
										<div class="col-2 col-lg-6 offset-lg-0">
											<div class="input-group-desc">
												<label class="label--desc"></label> <input
													class="input--style-5" type="text" name="prezzonoleggio"
													onfocus="this.value=''" value="Prezzo noleggio" placeholder="prezzo noleggio"><label
											class="label--desc">Prezzo noleggio</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- fine terzo tab -->

						<!-- Circles which indicates the steps of the form: -->


						<div style="text-align: center; margin-top: 40px;">
							<span class="step"></span> <span class="step"></span> <span
								class="step"></span>
						</div>
						<div style="overflow: auto;">
							<div style="float: right;">
								<button class="btn btn--radius-2 btn--red" type="button"
									id="prevBtn" onclick="nextPrev(-1)">Indietro</button>
								<button class="btn btn--radius-2 btn--red" type="button"
									id="nextBtn" onclick="nextPrev(1)">Avanti</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script src="js/addCarScript.js"></script>
	</form>

	
	<!-- FOOTER -->
	<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
	</footer>
	
</body>
</html>