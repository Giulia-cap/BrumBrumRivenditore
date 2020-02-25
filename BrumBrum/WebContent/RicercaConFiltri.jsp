
<!DOCTYPE html>
<html lang="zxx">

<head>

<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Header Info End -->
	<!-- Header End -->

	<!-- Page Add Section Begin -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Automobili<span>.</span>
						</h2>
						<a href="index.jsp">Home</a> <a href="le-nostre-auto.jsp">Automobili</a>
						<a class="active" href="#">Vendita</a>
					</div>
				</div>
				<div class="col-lg-8">
					<img src="img/cart/autosalon.jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Categories Page Section Begin -->
	<section class="categories-page spad">
		<div class="container">
			<div class="categories-controls">
				<div class="row">
					<div class="col-lg-12">
						<div class="categories-filter">
							<div class="cf-left">

								<form>
									<p class="name">
									<h4>Cerca per categoria</h4>

									<br>

									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary"> <input type="checkbox"
											value="2" name="utilitaria"> Utilitaria
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="3" name="cityCar"> CityCar
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="4" name="sportiva"> Sportiva
										</label>

										<div>
											<div class="btn-group" data-toggle="buttons"></div>
											<button class="btn btn--pill btn--red text-md-center"
												value="Filtra" onclick="Xcategoria();">Filtra</button>
										</div>
									</div>


									<br>

									<p class="name">
									<h4>Cerca per tipo di alimentazione</h4>

									<br>
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary"> <input type="checkbox"
											value="5" name="benzina"> Benzina
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="6" name="diesel"> Diesel
										</label>

										<div>
											<button class="btn btn--pill btn--red text-md-center"
												value="Filtra" onclick="Xalimentazione();">Filtra</button>
										</div>
										<div class="btn-group" data-toggle="buttons"></div>
									</div>
									<br>

									<p class="name">
									<h4>Cerca per tipo di cambio</h4>
									</p>
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary"> <input type="checkbox"
											value="7" name="automatico"> Automatico
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="8" name="manuale"> Manuale
										</label>


										<div>
											<button class="btn btn--pill btn--red text-md-center"
												value="Filtra" onclick="Xcambio();">Filtra</button>
										</div>

										<div class="btn-group" data-toggle="buttons"></div>
									</div>
									<br>

									<p class="name">
									<h4>Cerca per marca</h4>
									</p>


									<br>
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary"> <input type="checkbox"
											value="9" name="fiat"> Fiat
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="10" name="marcedes"> Marcedes
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="11" name="nissan"> Nissan
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="12" name="volkswagen"> Volkswagen
										</label>
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="13" name="renault"> Renault
										</label>


										<div>
											<button class="btn btn--pill btn--red text-md-center"
												value="Filtra" onclick="Xmarca();">Filtra</button>
										</div>

										<div class="btn-group" data-toggle="buttons"></div>
									</div>
									<p class="name">
									<h4>Cerca per modello</h4>
									</p>
									<br>
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary"> <input type="checkbox"
											value="14" name="sls"> Sls
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="15" name="t-roc"> TRoc
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="16" name="cinquecento"> Cinquecento
										</label> <label class="btn btn-primary"> <input
											type="checkbox" value="17" name="capture"> Capture
										</label>
										<div>
											<button class="btn btn--pill btn--red text-md-center"
												value="Filtra" onclick="Xmodello();">Filtra</button>
										</div>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="form-row"></div>
			<div class="form-row"></div>
			<div class="more-product">
				<div class="row">
					<div class="col-lg-12 text-center">


						<!-- INIZIO FOR -->

						<c:forEach items="${automobili}" var="autom">
							<div class="${autom.getCategoria()}">
								<!-- serve per il controllo -->
								<div class="bg-gray restaurant-entry"
									id="${autom.getCategoria()}">

									<div class="${autom.getAlimentazione()}">
										<div class="bg-gray restaurant-entry"
											id="${autom.getAlimentazione()}">

											<div class="${autom.getCambio()}">
												<div class="bg-gray restaurant-entry"
													id="${autom.getCambio()}">

													<div class="${autom.getMarca()}">
														<div class="bg-gray restaurant-entry"
															id="${autom.getMarca()}">

															<div class="${autom.getModello()}">
																<div class="bg-gray restaurant-entry"
																	id="${autom.getModello()}">

																	<div class="row">
																		<div class="col-lg-3 col-sm-6">
																			<div class="single-product-item">
																				<figure>

																					<a
																						href="VisAutoSelezionata?targa=${autom.getTarga()}"><img
																						src="${autom.immagine}" alt=""></a>

																					<div class="p-status">new</div>
																				</figure>

																				<div class="product-text">
																					<a
																						href="VisAutoSelezionata?targa=${autom.getTarga()}"><h6>${autom.marca}${autom.modello}</h6></a>
																					<p>vendita: ${autom.prezzovendita}</p>
																					<p>noleggio: ${autom.prezzonoleggio}</p>
																					<p class="cat">${autom.getCategoria()}</p>
																					<!-- visualizza -->
																					<p class="alim">${autom.getAlimentazione()}</p>
																					<p class="camb">${autom.getCambio()}</p>
																					<p class="marc">${autom.getMarca()}</p>
																					<p class="mod">${autom.getModello()}</p>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<!-- CHIUSURA FOR -->
						
						
						<div id="demo"></div>
						
						<button onclick="mostraMessaggio()">Clicca</button>
						

<script>
function mostraMessaggio(){
	
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("demo").innerHTML = this.responseText;
	    }
	  };
	  xhttp.open("GET", "NewFile.html", true);
	  xhttp.send();
}	
	
	//console.log(JSON.stringif(obj));


</script>

						<!-- QUESTI SONO I NUMERI DELLE PAGINE DA SFOGLIARE -->

						<div class="cf-right">
							<span>20 or more products</span> <span> - </span> <a href="#">2</a>
							<span> - </span> <a href="#" class="active">4</a> <span> -
							</span> <a href="#">6</a>
						</div>

						<!-- QUESTI SONO I NUMERI DELLE PAGINE DA SFOGLIARE -->
						<div class="form-row"></div>
						<div class="form-row"></div>
						<a href="#" class="primary-btn">Load More</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/main.js"></script>



	<script src="js/Filtri.js"></script>
</body>

<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>

</html>