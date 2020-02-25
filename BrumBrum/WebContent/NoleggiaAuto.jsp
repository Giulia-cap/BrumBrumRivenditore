
<!doctype html>
<html>


<meta charset="UTF-8">
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />



<head>
<script type="text/javascript">
	function CheckColors(val) {
		var element = document.getElementById('selezionesede');
		if (val == 'others')
			element.style.display = 'block';
		else
			element.style.display = 'none';
	}
</script>
<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>
</head>

<body>
	<form id="regForm" action="NoleggiaAuto" method="post">
		<div class="card card-5">
			<div class="card-heading">
				<h2 class="title">Noleggio auto</h2>
			</div>

			<div class="card-body">


				<!-- One "tab" for each step in the form: -->
<c:if test= "${SonoUnRivenditore==false}" >
				<div class="tab">
					<div class="form-row row-space">
						<div class="name">
							<div class="name" align="center">&nbsp;Spedizione</div>
						</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-5 offset-lg-0">
									<div class="input-group-desc">
										<select name="spedizione" onchange='CheckColors(this.value);'>
											<option>Seleziona una modalit‡† di ritiro</option>
											<option value="sede">Ritiro in sede BRUMBRUM</option>
											<option value="others">Ritiro in una sede affiliata</option>
										</select>
									</div>
								</div>
								<div class="col-2 col-lg-5 offset-lg-0">
									<select type="text" name="selezionesede" id="selezionesede"
										style='display: none;'>
										<option>Seleziona una sede</option>
										<option value="roma">Roma</option>
										<option value="cosenza">Cosenza</option>
									</select>
								</div>
							</div>
						</div>
					</div>

					<div class="row row-space"></div>
				</div>
				<!--  fine primo tab -->
				
</c:if>

				<!-- fine secondo tab -->

				<div class="tab">
					<div class="form-row m-b-55">
						<div class="name">Dati Anagrafici</div>
						<div class="value">
							<div class="row row-space">
								<div class="col-2 col-lg-6 offset-lg-0">
									<div class="input-group-desc">
										<label class="label--desc"></label> <input
											class="input--style-5" type="text" name="nome"
											onfocus="this.value=''" value="${utente.getNome()}">
									</div>
								</div>
								<div class="col-2 col-lg-6 offset-lg-0">
									<div class="input-group-desc">
										<label class="label--desc"></label> <input
											class="input--style-5" type="text" name="cognome"
											onfocus="this.value=''" value="${utente.getCognome()}">
									</div>
								</div>

							</div>

						</div>

					</div>


					<div class="form-row">
						<div class="name">Codice F.</div>
						<div class="value">
							<input class="input--style-5" type="text" name="codice_fiscale"
								value="${utente.getCodice_fiscale()}">
							<div class="input-group">

								<div class="rs-select2 js-select-simple select--no-search">
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>




					</div>
					<div class="form-row">
						<div class="name">Email</div>
						<div class="value">
							<div class="input-group">
								<input class="input--style-5" type="email" name="email"
									value="${utente.getEmail()}">
								<div class="input-group">

									<div class="rs-select2 js-select-simple select--no-search">
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="name">IBAN</div>
						<div class="value">
							<div class="input-group">
								<input class="input--style-5" type="text" name="iban">

							</div>
						</div>
					</div>
					<div>
						<label>Carica un file con le informazioni riguardo
							l'affidabilit√† creditizia . </label> <input name="immagine"
							type="file" size="20">
					</div>
				</div>

			</div>
			<!-- fine terzo tab -->

			<!-- Circles which indicates the steps of the form: -->


			<div style="text-align: center; margin-top: 40px;">
				<span class="step"></span> <span
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




		<script src="js/addCarScript.js"></script>








		<!-- FOOTER -->
		
	</form>
</body>
<footer>
			<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
		</footer>
</html>
