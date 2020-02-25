<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<style>
li {
	display: inline; ul { list-style-type : none;
	margin: 0;
	padding: 0;
}
}
</style>
<script src="//code.jquery.com/jquery-1.8.3.js"></script>
<script src="SphericalView/jquery.pano.js"></script>


<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>
</head>

<body>
	<div class="form-row"></div>

	<table class="table table-striped">
		<tr align="center">
			<th></th>
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
			<th>Totale</th>
		</tr>

			<c:forEach items="${storicoOrdini}" var="automobile">
				<tr align="center">
					<td><a href="RilasciaFeedback?modello=${automobile.modello}&loggedUser=${utente.getEmail()}&targa=${automobile.targa}">Lascia feedback</a></td>
					<td>${automobile.getData()}</td>
					<td>${automobile.getTarga()}</td>
					<td>${automobile.marca}</td>
					<td>${automobile.modello}</td>
					<td>${automobile.categoria}</td>
					<td>${automobile.colore}</td>
					<td>${automobile.km}</td>
					<td>${automobile.alimentazione}</td>
					<td>${automobile.cambio}</td>
					
					<c:if test="${automobile.disponibilita == 'VENDUTA'}">
						<td>Acquisto</td>
						<td>${automobile.prezzovendita}</td>
					</c:if>
					<c:if test="${automobile.disponibilita == 'NOLEGGIATA'}">
						<td>Noleggio</td>
						<td>${automobile.prezzonoleggio}</td>
					</c:if>
				
				</tr>
				
			</c:forEach>
	</table>
	<div class="form-row"></div>
</body>
<footer>
	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>
</footer>

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