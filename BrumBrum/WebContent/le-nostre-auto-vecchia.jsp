
<!DOCTYPE html>
<html lang="zxx">

<head>

<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>



</head>




<body>

		<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Automobili<span>.</span>
						</h2>
						<a href="index.jsp">Home</a> <a href="le-nostre-auto.jsp">Automobili</a> <a class="active"
							href="#">Vendita</a>
					</div>
				</div>
				<div class="col-lg-8">
					<img src="img/cart/autosaloon.jpg" alt="">
				</div>
			</div>
		</div>
	</section>
	<!-- Page Add Section End -->

	<!-- Categories Page Section Begin -->
	<div class="container">
		<div class="row">

<!-- colonna dei filtri -->
			<div class="col-sm">
				<form>
					<p class="name">
					<h4>Categoria</h4>


					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary"> <input type="checkbox"
							value="2" name="utilitaria"> Utilitaria
						</label> <label class="btn btn-primary"> <input type="checkbox"
							value="3" name="cityCar"> CityCar
						</label> <label class="btn btn-primary"> <input type="checkbox"
							value="4" name="sportiva"> Sportiva
						</label>
					</div>
					
					<h4>Alimentazione</h4>
					<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary"> <input type="checkbox"
							value="5" name="benzina"> Benzina
						</label> <label class="btn btn-primary"> <input type="checkbox"
							value="6" name="diesel"> Diesel
						</label>
					</div>

					<div>
						<div class="btn-group" data-toggle="buttons"></div>
						<button class="btn btn--pill btn--red text-md-center"
							value="Filtra" onclick="  prova(); ">Filtra</button>
					</div>

				</form>
			</div>

			

			<!--    fine colonna filtri  -->
			
			
			<!--     inizio colonna lista auto -->
			<div class="col-sm">
			
			
			<c:if test="${autoDaCercare == null}">
			<c:forEach items="${automobiliDisponibili}" var="autom">
						<!--  	<input type="hidden" name="listaTutteLeAuto" id=listaTutteLeAuto
								value='${autom}'> -->
						<input class="listaTutteLeAuto" ${autom} type="hidden">
						<div class="${autom.getCategoria()}">
							<!-- serve per il controllo -->
							<div class="bg-gray " id="${autom.getCategoria()}">


								<div class="${autom.getAlimentazione()}">
									<div class="bg-gray " id="${autom.getAlimentazione()}">

										<div class="${autom.getCambio()}">
											<div class="bg-gray " id="${autom.getCambio()}">

												<div class="${autom.getMarca()}">
													<div class="bg-gray " id="${autom.getMarca()}">

														<div class="${autom.getModello()}">
															<div class="bg-gray " id="${autom.getModello()}">

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
																				<!--  	<a
																						href="VisAutoSelezionata?targa=${autom.getTarga()}"><h6>${autom.marca}${autom.modello}</h6></a>
																					<p>vendita: ${autom.prezzovendita}</p>
																					<p>noleggio: ${autom.prezzonoleggio}</p>
																					<p class="cat">${autom.getCategoria()}</p>
																					<!-- visualizza -->
																				<p class="cat">${autom.getCategoria()}</p>
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


					</c:forEach> </c:if>
					
					
					<c:if test="${autoDaCercare != null}">
			<c:forEach items="${automoDisponibiliConParolaChiave}" var="autom">
						<!--  	<input type="hidden" name="listaTutteLeAuto" id=listaTutteLeAuto
								value='${autom}'> -->
						<input class="listaTutteLeAuto" ${autom} type="hidden">
						<div class="${autom.getCategoria()}">
							<!-- serve per il controllo -->
							<div class="bg-gray " id="${autom.getCategoria()}">


								<div class="${autom.getAlimentazione()}">
									<div class="bg-gray " id="${autom.getAlimentazione()}">

										<div class="${autom.getCambio()}">
											<div class="bg-gray " id="${autom.getCambio()}">

												<div class="${autom.getMarca()}">
													<div class="bg-gray " id="${autom.getMarca()}">

														<div class="${autom.getModello()}">
															<div class="bg-gray " id="${autom.getModello()}">

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
																				<!--  	<a
																						href="VisAutoSelezionata?targa=${autom.getTarga()}"><h6>${autom.marca}${autom.modello}</h6></a>
																					<p>vendita: ${autom.prezzovendita}</p>
																					<p>noleggio: ${autom.prezzonoleggio}</p>
																					<p class="cat">${autom.getCategoria()}</p>
																					<!-- visualizza -->
																				<p class="cat">${autom.getCategoria()}</p>
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


					</c:forEach> </c:if>
			
			
			
			</div>
			
			<!--  fine colonna lista auto -->
		</div>

	</div>


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