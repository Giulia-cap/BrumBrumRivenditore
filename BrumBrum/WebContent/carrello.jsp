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
	<div class="page-wrapper bg-white p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Carrello</h2>
				</div>
				<table class="table table-striped">
					<tr align="center">
						<th>Targa</th>
						<th>Marca</th>
						<th>Modello</th>
						<th>Prezzo</th>

						<c:forEach items="${autoNelCarrello}" var="automobile">
							<tr align="center">
								<td>${automobile.getTarga()}</td>
								<td>${automobile.marca}</td>
								<td>${automobile.modello}</td>
								<td>${automobile.prezzovendita}</td>

							</tr>

						</c:forEach>
				</table>

				<div class="form-row"></div>
				
					<textarea class="form-control" rows = "1" style="text-align:right;">TOTALE: ${totaleCarrello}</textarea>
				
				<div class="form-row"></div>
				<div align="right">
					<a href="SvuotaCarrello">
						<button class="btn btn--radius-2 btn--blue text-md-center">Svuota</button>
					</a>
					<a href="CompraAuto" <% request.getSession().setAttribute("acqCarrello", true); %>>
						<button class="btn btn--radius-2 btn--blue text-md-center">Procedi
							al checkout</button>
					</a>
					<a href="index.jsp">
						<button class="btn btn--radius-2 btn--blue text-md-center">Continua i tuoi acquisti</button>
					</a>

				</div>

				<div class="form-row"></div>

			</div>
		</div>
	</div>
</body>

<div class="form-row"></div>
<div class="form-row"></div>
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