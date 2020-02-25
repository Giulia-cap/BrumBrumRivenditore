<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<script src="//code.jquery.com/jquery-1.8.3.js"></script>
<script src="SphericalView/jquery.pano.js"></script>


<!-- SCRIPT VISIONE 3D -->
<script>
	/* jshint jquery: true */
	jQuery(document).ready(function($) {
		$("#myPano").pano({
			img : "./SphericalView/sphere2.jpg"
		});
	});
</script>


<!-- SCRIPT VISIONE 3D, ANCHE QUESTO -->

<script type="text/javascript">
	function CheckColors(val) {
		var immagine = document.getElementById('preview');
		var immagine3d = document.getElementById('myPano');
		if (val == 'esterni') {
			immagine.style.display = 'block';
			immagine3d.style.display = 'none';
		} else {
			immagine.style.display = 'none';
			immagine3d.style.display = 'block';
		}
	}
</script>

<!-- SCRIPT CHE ABILITA I PULSANTI PER L'ELIMINAZIONE DELL'AUTO -->
<script>
	function enableButton2() {
		document.getElementById("button2").style.display = 'block';
		document.getElementById("button3").style.display = 'block';
	}
</script>


<!-- SCRIPT CHE FA IL REDIRECT DOPO L'EMINAZIONE DELL'AUTOMOBILE -->


<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>
</head>

<body>
	<div class="form-row"></div>
	<div class="container">

		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="section-title">
					<h2>Caratteristiche Auto</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="form-row"></div>
	<div class="form-row"></div>
	<div id="myPano" class="pano" style="display: none">
		<div class="controls">
			<a href="#" class="left">&laquo;</a> <a href="#" class="right">&raquo;</a>
		</div>
	</div>
	<!-- Sessione per visualizzare le auto -->
	<div class="value" align="center">
		<img width=50% height=50% src="${automobile.immagine}" alt=""
			name="preview" style="display: block" id="preview">
	</div>
	<!--   <%@ include file="SphericalView.jsp"%>-->


	<div class="form-row"></div>
	<div align="center">
		<h1>Scegli cosa visualizzare</h1>
	</div>


	<div class="value" align="center">
		<div class="form-row p-t-20"></div>
		<select type="text" name="selettoreImmagine" id="selettoreImmagine "
			onchange="CheckColors(this.value);">
			<option value="esterni">Esterni</option>
			<option value="interni">Interni</option>
		</select>
	</div>

	<div>

		<div>&nbsp;</div>
	</div>
	<div class="form-row"></div>
	<!-- carattetteristiche auto -->

	<table class="table table-striped">
		<tr align="center">
			<th>Specifiche</th>
			<th>Descrizione</th>
		</tr>

		<tr align="center">
			<td>marca</td>
			<td>${automobile.marca}</td>
		</tr>
		<tr align="center">
			<td>modello</td>
			<td>${automobile.modello}</td>
		</tr>
		<tr align="center">
			<td>categoria</td>
			<td>${automobile.categoria}</td>
		</tr>
		<tr align="center">
			<td>colore</td>
			<td>${automobile.colore}</td>
		</tr>
		<tr align="center">
			<td>km</td>
			<td>${automobile.km}</td>
		</tr>

		<tr align="center">
			<td>alimentazione</td>
			<td>${automobile.alimentazione}</td>
		</tr>
		<tr align="center">
			<td>cambio</td>
			<td>${automobile.cambio}</td>
		</tr>
		<tr align="center">
			<td>prezzo Vendita</td>
			<td>${automobile.prezzovendita}</td>
		</tr>
		<tr align="center">
			<td>prezzo Noleggio</td>
			<td>${automobile.prezzonoleggio}</td>
		</tr>
	</table>



	<section>&nbsp;</section>

	<!-- bottoni acquisto o nolegggio -->
	<section>
		<div align="center">
			<c:if test="${utente.getEmail() != 'admin@admin.it'}">

				<c:if test="${utente.getEmail()==null}">
					<a href="LoginForm.jsp">
						<button class="btn btn--radius-2 btn--red" type="button">Effettua
							login per proseguire</button>
					</a>
				</c:if>

				<c:if test="${utente.getEmail()!=null}">
					<a href="CompraAuto?targa=${automobile.getTarga()}">
						<button class="btn btn--radius-2 btn--red" type="button">Acquista</button>
					</a>
				</c:if>

				<c:if test="${utente.getEmail()!=null}">
					<c:if test="${utente.getTipo()=='rivenditore'}">
						<a
							href="AggiungiAlCarrello?targa=${targa}&email=${utente.getEmail()}">
							<button class="btn btn--radius-2 btn--red" type="button">Aggiungi
								al Carrello</button>
						</a>
					</c:if>
				</c:if>
			</c:if>

			<c:if test="${utente.getEmail() == 'admin@admin.it'}">
				<p>
					<button class="btn btn--radius-2 btn--red text-md-center"
						id="button1" value="Elimina automobile!" onclick="enableButton2()">Elimina
						automobile</button>

					<a href="ModificaAuto">
						<button class="btn btn--radius-2 btn--red" type="button">Modifica</button>
					</a>
				</p>
				<div class="form-row"></div>


				<!--  	<a href="EliminaAutomobile?targa=${automobile.targa}"><button class="btn btn--radius-2 btn--red text-md-center"
					id="button2" value="Si" style='display: none;'>Si, confermo</button>
					</a> -->


				<p align="center">
					<a href="le-nostre-auto.jsp"><button
							class="btn btn--radius-2 btn--blue text-md-center" id="button2"
							value="No" style='display: none;'>No, ho sbagliato</button> </a>
				<div class="form-row"></div>
				<div id="button3" style='display: none;'>
					<a class="btn btn--radius-2 btn--red" data-toggle="modal"
						href="#ignismyModal">Confermi l'eliminazione?</a>
				</div>

			</c:if>

			<div class="modal fade" id="ignismyModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header"></div>

						<div class="modal-body">

							<div class="EliminazioneAuto" align="center">
								<img
									src="http://goactionstations.co.uk/wp-content/uploads/2017/03/Green-Round-Tick.png"
									alt="">
								<h1>Fatto!</h1>
								<p>Eliminazione avvenuta con successo</p>

								<h3 class="cupon-pop">
									Your Id: <span>${utente.getNome()}</span>
								</h3>
								<a href="EliminaAutomobile?targa=${automobile.targa}"><button
										class="btn btn--radius-2 btn--green text-md-center">Torna
										al profilo</button></a> 
							</div>
							<h3 class="cupon-pop">
								Your Id: <span>${utente.getNome()}</span>
							</h3>
							<a href="EliminaAutomobile?targa=${automobile.targa}">
								<button class="btn btn--radius-2 btn--green text-md-center">Torna
									al profilo</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>





		<!-- ********************************************************************************************* -->
<div class="form-row"></div>

</body>
<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/main.js"></script>






</html>