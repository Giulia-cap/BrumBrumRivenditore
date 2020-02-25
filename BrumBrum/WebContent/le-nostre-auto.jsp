
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">


<head>
<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>



<!-- STILE DEL BOTTONE BIANCO - UTILITARIA SUV ECC -->
<style>
.button {
	background-color: #fff;
	border: solid;
	border-color: #000000;
	color: black;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}
</style>


<!-- STILE VISUALIZZAZIONE AUTOMOBILI SOTTO I FILTRI -->

<style>
.galleryy {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-template-rows: repeat(4, 4vw);
	grid-gap: 300px;
}
</style>

<!-- FUNZIONE FILTRA -->


</head>


<body>


	<!--  <input name="stoCercandoTramiteParola" id=stoCercandoTramiteParola
		value='${stoCercandoTramiteParola}' type="hidden">
		<input name="automobiliDisponibili" id=automobiliDisponibili
		value='${automobiliDisponibili}' type="hidden">
		
		<input name="appoggio" id=appoggio
		value='${appoggio}' type="hidden">-->


	<!-- INTESTAZIONE E FOTO -->
	<section class="page-add">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="page-breadcrumb">
						<h2>
							Automobili<span>.</span>
						</h2>

						<a href="index.jsp">Home</a> <a href="le-nostre-auto.jsp">Automobili</a>
						<a class="active" href="#">Vendita</a> <input name="autoDaCercare"
							id=autoDaCercare value='${autoDaCercare}'>

					</div>
				</div>
				<div class="col-lg-8">
					<img src="img/cart/autosaloon.jpg" alt="">
				</div>
			</div>
		</div>
	</section>

	<!-- FINE INTESTAZIONE E FOTO -->

	<!-- INIZIO FILTRI -->
	<div class="container">
		<div class="row">
			<div class="row m-t-25">
				<div class="col-sm-6 col-lg-4">

					<!-- PRIMO BLOCCO DI CHECKBOX -->
					<p class="name">
					<h1>Categoria</h1>
					<div class="btn-group" data-toggle="buttons">
						<label class="btn button"> <input type="checkbox"
							value="2" name="utilitaria"> Utilitaria
						</label> <label class="btn button"> <input type="checkbox"
							value="3" name="suv"> Suv
						</label> <label class="btn button"> <input type="checkbox"
							value="4" name="sportiva"> Sportiva
						</label>
					</div>
				</div>

				<!-- SECONDO BLOCCO DI CHECKBOX -->
				<div class="col-sm-6 col-lg-3">
					<h1>Alimentazione</h1>
					<div class="btn-group" data-toggle="buttons">
						<label class="btn button"> <input type="checkbox"
							value="5" name="benzina"> Benzina
						</label> <label class="btn button"> <input type="checkbox"
							value="6" name="diesel"> Diesel
						</label>
					</div>
				</div>
				
				<!-- TERZO BLOCCO DI CHECKBOX -->
				<div class="col-sm-6 col-lg-3">
					<h1>Cambio</h1>
					<div class="btn-group" data-toggle="buttons">
						<label class="btn button"> <input type="checkbox"
							value="7" name="automatico"> Automatico
						</label> <label class="btn button"> <input type="checkbox"
							value="8" name="manuale"> Manuale
						</label>
					</div>
				</div>

				<!-- BOTTONE FILTRA -->
				<div class="col-sm-6 col-lg-4">
					<div>
						<div class="btn-group" data-toggle="buttons"></div>
						<button class="btn button" value="Filtra"
							onclick="ricercaConFiltri();">Filtra</button>
					</div>
				</div>
			</div>

		</div>


		<div class="form-row"></div>
		<div class="form-row"></div>
		<!-- FINE CHECKBOX FILTRI -->



		<!-- INIZIO LISTA AUTO -->
		<div class="container">
			<div class="galleryy">
	 	<!-- 	<c:if test="${stoCercandoTramiteParola == null}">  -->
					<c:forEach items="${automobiliDisponibili}" var="autom">
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
																	<div class="col-lg-12 col-sm-6">
																		<div class="single-product-item">
																			<figure>

																				<a
																					href="VisAutoSelezionata?targa=${autom.getTarga()}"><img
																					src="${autom.immagine}" alt=""></a>


																			</figure>

																			<div class="product-text">
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


					</c:forEach>
	 		<!-- 	</c:if>  -->


		<!--  		<c:if test="${stoCercandoTramiteParola != null}">
					<c:forEach items="${automoDisponibiliConParolaChiave}"
						var="autoConParolaChiave">
						<input class="listaTutteLeAuto" ${autoConParolaChiave}
							type="hidden">
						<div class="${autoConParolaChiave.getCategoria()}">
							<div class="bg-gray " id="${autoConParolaChiave.getCategoria()}">


								<div class="${autoConParolaChiave.getAlimentazione()}">
									<div class="bg-gray "
										id="${autoConParolaChiave.getAlimentazione()}">

										<div class="${autoConParolaChiave.getCambio()}">
											<div class="bg-gray " id="${autoConParolaChiave.getCambio()}">

												<div class="${autoConParolaChiave.getMarca()}">
													<div class="bg-gray "
														id="${autoConParolaChiave.getMarca()}">

														<div class="${autoConParolaChiave.getModello()}">
															<div class="bg-gray "
																id="${autoConParolaChiave.getModello()}">

																<div class="row">
																	<div class="col-lg-6 col-sm-3">
																		<div class="single-product-item">
																			<figure>

																				<a
																					href="VisAutoSelezionata?targa=${autoConParolaChiave.getTarga()}"><img
																					src="${autoConParolaChiave.immagine}" alt=""
																					height=100% width=150%></a>

																				<div class="p-status">new</div>
																			</figure>

																			<div class="product-text">
																				<p class="cate">${autoConParolaChiave.getCategoria()}</p>
																				<p class="alime">${autoConParolaChiave.getAlimentazione()}</p>
																				<p class="cambi">${autoConParolaChiave.getCambio()}</p>
																				<p class="marca">${autoConParolaChiave.getMarca()}</p>
																				<p class="mode">${autoConParolaChiave.getModello()}</p>
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
				</c:if>-->
			</div>
		</div>
	</div>


	<!-- FINE LISTA AUTO -->






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




<div class="form-row"></div>
<div class="form-row"></div>
<div class="form-row"></div>
<div class="form-row"></div>
<div class="form-row"></div>
<div class="form-row"></div>
<div class="form-row"></div>


<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>


</html>