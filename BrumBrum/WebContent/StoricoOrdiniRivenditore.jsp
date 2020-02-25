<%@ page language="java" contentType="text/html; charset=UTF-8"%>    <!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>


<head>
   
<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>

</head>

<!-- Main CSS-->
<link href="admin/css/theme.css" rel="stylesheet" media="all">



<body >

	<div class="page-wrapper">
		<!-- HEADER DESKTOP-->

		<!-- END HEADER DESKTOP -->

		<!-- WELCOME-->

		<!-- END WELCOME-->

		<!-- PAGE CONTENT-->
		<div class="page-container3">
<div class="form-row"></div>
			<section>
				<div class="container">
					<div class="row">
						<div class="col-xl-1">
							<!-- MENU SIDEBAR-->
							
							 <div class="rs-select2--dark rs-select2--sm rs-select2--border">
                                                    <select class="js-select2 au-select-dark" name="chartType" id="chartType" onchange="prova()">
                                                       <option selected value="PerMese">Per Mese</option>
                                                        <option value="PerAnno">Per Anno</option>
                                                    </select>
                                                    <div class="dropDownSelect2"></div>
                             </div>

							<!-- END MENU SIDEBAR-->
						</div>
						<div class="col-xl-12">
							<!-- PAGE CONTENT-->
							<div class="page-content">
								<div class="row">
									<div class="col-lg-8">
										<!-- RECENT REPORT-->
										<div class="recent-report3 m-b-40">
											<div class="title-wrap">
												<h3 class="title-3">Statistiche</h3>
												<div class="chart-info-wrap">
													
													<div class="chart-note mr-0">
														<span class="dot dot--green"></span> <span>Spese mensili</span>
													</div>
												</div>
											</div>
											<div></div>
											<div class="chart-wrap">
										
												
												<canvas id="canvas"></canvas>
												
											</div>
										</div>
										<!-- END RECENT REPORT-->
									</div>
									<div class="col-lg-4">
									
									
											 <div class="rs-select2--dark rs-select2--sm rs-select2--border">
                                                    <select class="js-select2 au-select-dark" name="chartType1" id="chartType1" onchange="cambiaDiagrammaTorta()" >
                                                       <option selected value="Fiat">Fiat</option>
                                                        <option value="Mercedes">Mercedes</option>
                                                        <option  value="Nissan">Nissan</option>
                                                        <option value="Volkswagen">Volkswagen</option>
                                                         <option value="Renault">Renault</option>
                                                    </select>
                                                    <div class="dropDownSelect2"></div>
                           						  </div>
									
									
										<!-- CHART PERCENT-->
										<div class="chart-percent-3 m-b-40">
											
											
											<h3 class="title-3 m-b-25">Auto acquistare </h3>
											<div class="chart-note m-b-5">
												<span class="dot dot--blue"></span> <span>Diesel</span>
											</div>
											<div class="chart-note">
												<span class="dot dot--red"></span> <span>Benzina</span>
											</div>
											<div class="chart-wrap m-t-60">
												<canvas id="torta"></canvas>
											</div>
										</div>
										
										<!-- END CHART PERCENT-->
									</div>
								</div>
								

							</div>
							<!-- END PAGE CONTENT-->
						</div>
					</div>
				</div>
			</section>
			
			
				<section>
		<div class="form-row"></div>

	<table class="table table-striped">
		<tr align="center">
			<th>Data Ordine</th>
			<th>Targa</th>
			<th>Marca</th>
			<th>Modello</th>
			<th>Categoria</th>
			<th>Colore</th>
			<th>Chilometri</th>
			<th>Alimentazione</th>
			<th>Cambio</th>
			<th>Tipo ordine</th>
			<th>Prezzo</th>
		</tr>

			<c:forEach items="${storicoOrdini}" var="automobile">
				<tr align="center">
					<td class="data">${automobile.getData()}</td>
					<td>${automobile.getTarga()}</td>
					<td class="marca">${automobile.marca}</td>
					<td>${automobile.modello}</td>
					<td>${automobile.categoria}</td>
					<td>${automobile.colore}</td>
					<td>${automobile.km}</td>
					<td class="alimentazione">${automobile.alimentazione}</td>
					<td>${automobile.cambio}</td>
					
					<c:if test="${automobile.disponibilita == 'VENDUTA'}">
						<td >Acquisto</td>
							<td class="prezzoAuto">${automobile.prezzovendita}</td>
						
					</c:if>
					<c:if test="${automobile.disponibilita == 'NOLEGGIATA'}">
						<td>Noleggio</td>
						<td>${automobile.prezzonoleggio}</td>
					</c:if>
				
				</tr>
				
			</c:forEach>
	</table>
	<div class="form-row"></div>
	</section>
		</div>
		<!-- END PAGE CONTENT  -->

	</div>

	<!-- Jquery JS-->
	<script src="//code.jquery.com/jquery-1.8.3.js"></script>
	<script src="admin/vendor/jquery-3.2.1.min.js"></script>
	<!-- Bootstrap JS-->
	<script src="admin/vendor/bootstrap-4.1/popper.min.js"></script>
	<script src="admin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
	<!-- Vendor JS       -->
	<script src="admin/vendor/slick/slick.min.js">
		
	</script>
	<script src="admin/vendor/wow/wow.min.js"></script>
	<script src="admin/vendor/animsition/animsition.min.js"></script>
	<script src="admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
		
	</script>
	<script src="admin/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="admin/vendor/counter-up/jquery.counterup.min.js">
		
	</script>
	<script src="admin/vendor/circle-progress/circle-progress.min.js"></script>
	<script src="admin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="admin/vendor/chartjs/Chart.bundle.min.js"></script>
	<script src="admin/vendor/select2/select2.min.js">
		
	</script>

	<!-- Main JS-->
	
	<script src="admin/js/main.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script>

</body>

<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>
<!-- Footer Section End -->

 

</html>