<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>

<%@ include file="include/headindex.jsp"%>
<%@ include file="include/NewHEADER.jsp"%>

</head>

<body>
<c:if test="${utente.getEmail() == null}">
<a href="deleteCookie()"></a>
</c:if>

	<section class="page-add">
		<div class="container" align="center">
			<div class="row" align="left">
				<div class="col-lg-4">
					<div class="page-breadcrumb" align="center">
						<div class="form-row"></div>
						<div class="form-row"></div>
						<h2>
							Ci spiace che tu sia andato via, a presto<span>.</span>
						</h2>
					</div>

				</div>
				<div class="col-lg-6" align="right">
					<img src="img/byebye2.png"></img>
				</div>
			</div>
		</div>
	</section>




</body>

<footer>

	<%@ include file="include/TEMPLATE-FOOTER.jsp"%>

</footer>
