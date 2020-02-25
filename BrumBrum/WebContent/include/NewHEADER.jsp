<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name = "google-signin-client_id" content = "633207582129-raaqpsm1476l5sthlnt8ld3g60tvi4p5.apps.googleusercontent.com">

 

<!-- *****************  INIZIO HEADER  **********************-->
<body onload="checkCookie()">

<script>
function Cerca() {
	

    $.ajax({
        url: 'le-nostre-auto.jsp',
        success: function(data,myChart) {
        	console.log("le nostre auto");
  	    	
  	     }
    });
	

}

</script>


	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 text-center text-lg-left">
						<!-- logo -->
						<a href="./index.jsp" class="site-logo"> <img
							src="img/logo.png" alt="">
						</a>
					</div>


					<div class="col-xl-6 col-lg-5">
						<form class="header-search-form" action="Cerca" id="cerca">
							<input class="inner-header" name="ricerca"
								placeholder="Cerca la tua auto..." type="text"> <a
								href="Cerca"><button type="submit" form="cerca">
									<i class="flaticon-search"></i>
								</button></a>
						</form>
					</div> 


					<div class="col-xl-4 col-lg-6">
						<div class="user-panel">

							<!--  ********************** COOKIE  ************************** -->
							<c:if test="${utente.getEmail() != null}">

								<c:if test="${utente.getEmail() == 'admin@admin.it'}">
									<em class="flaticon-profile"></em>
									<a href="AdminProfilo.jsp">SUPER-USER</a>
								</c:if>
								
									<c:if test="${utente.getTipo() == 'privato'}">
									<div class="up-item" align="right">

										<em class="flaticon-profile"></em> <a href="Profilo.jsp">Ciao,
											${utente.getNome()} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
										
										
									</div>
								</c:if>


								<c:if test="${utente.getTipo() == 'rivenditore'}">
									<div class="up-item" align="right">

										<em class="flaticon-profile"></em> <a href="Profilo.jsp">Ciao,
											${utente.getNome()} &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
										<div class="shopping-card">
											<i class="flaticon-bag"></i> <span>0</span>
										</div>
										<a href="VisualizzaCarrello?email=${utente.getEmail()}">Carrello</a>
									</div>
								</c:if>

								<div>
									<a href="FaiLogin?logout=true" onClick="deleteCookie()"
										name=logout>Esci</a>

								</div>
						</div>
					</div>

					</c:if>
					
					


					<c:if test="${utente.getEmail() == null}">

						<div class="form-row">

							<div class="up-item">
								<em class="flaticon-profile"></em> 
								<button onclick="myFunction()">Sign</button>In or <a href="RegForm.jsp">Create Account</a>
							</div>
							<div class="up-item" align="right">
								<div class="shopping-card">
									<i class="flaticon-bag"></i> <span>0</span>
								</div>
								<a href="#">Carrello</a>
							</div>
							</div>
					</c:if>
				</div>


				<!--  ********************** FINE COOKIE  ************************** -->

			</div>
		</div>

		<!-- LISTA DA LOGGATO -->



	</header>

	<nav class="main-navbar" align="center">
		<div class="container">

			<!-- menu -->

			<ul class="main-menu">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="LeNostreAuto">Le nostre auto</a></li>
				<li><c:if test="${utente.getEmail() != null}">
						<li><c:if test="${utente.getEmail() != 'admin@admin.it'}">
								<a href="Profilo.jsp">Profilo Utente</a>
							</c:if>
					</c:if> <c:if test="${utente.getEmail() == 'admin@admin.it'}">
						<a href="AdminProfilo.jsp">Profilo Utente</a>
					</c:if> <c:if test="${utente.getEmail() == null}">
						<a href="LoginForm.jsp">Profilo Utente</a>
					</c:if></li>
				<li><a href="Come-funziona.jsp">Come Funziona</a></li>
				<li><a href="contact.jsp">Contatti</a></li>
				<li><c:if test="${utente.getTipo() == 'rivenditore'}">
						<a href="StoricoOrdini?emailLoggato=${utente.getEmail()}">Storico
							Ordini</a>
					</c:if></li>


			</ul>
		</div>




	</nav>


	<!-- *****************  FINE NAV-BAR  **********************-->




</body>

<script src="js/cookie.js"></script>

<script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>

<script>
    function signOut() {
      var auth2 = gapi.auth2.getAuthInstance();
      auth2.signOut().then(function () {
        console.log('User signed out.');
      });
    }

    function onLoad() {
      gapi.load('auth2', function() {
        gapi.auth2.init();
      });
    }

      function myFunction() {
    	  console.log("entro");
          gapi.auth2.getAuthInstance().disconnect();
      window.location.assign("LoginForm.jsp");
   }
   </script>


