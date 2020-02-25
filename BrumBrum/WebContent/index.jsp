<%@ page language="java" contentType="text/html; charset=UTF-8"%>    <!-- Serve a cambiare in jsp -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
prefix="c" %>



<head>
    <%@ include file="include/headindex.jsp"%>
   <%@ include file="include/NewHEADER.jsp"%>  
	<% request.getSession().setAttribute("acq", false); %>
	<% request.getSession().setAttribute("acqCarrello", false); %>
	<% request.getSession().setAttribute("stoCercandoTramiteParola", null); %>
	
</head>

<body class="home" onload="checkCookie();">
  

    <!-- Features Section Begin -->	
    <section class="features-section spad">
		<div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg"  data-setbg="img/slider-1.png" >
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            
                            <h2>C'È L'AUTO PER TE, FIDATI.</h2>
                            <a href="LeNostreAuto" class="primary-btn">TUTTE LE AUTO</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		
		
      <div class="form-row">
      </div>
      
      
      
      <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src="img/icons/f-delivery.png" alt="">
                          <h4>Consegna facile e veloce</h4>
                            <p>Puoi scegliere se ritirare la tua automobile direttamente nella sede principale, o se ritirarla presso una nostra sede convenzionata.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src="img/icons/coin.png" alt="">
                            <h4>100% Money back </h4>
                            <p>Entro 14 giorni potrai restituire la tua automobile senza specificare alcuna motivazione, e ti restituiremo l'intero importo.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
<div class="single-features-ads">
              <img src="img/icons/chat.png" alt="">
              <h4>Servizio clienti</h4>
              <p>Il nostro servizio clienti è attivo dal lunedì al venerdi dalle ore 8.00 alle ore 20.00, e il sabato dalle ore 9.00 alle ore 18.00.</p>
</div>
                    </div>
</div>
            </div>
        </div>
        <!-- Features Box -->
    </section>
<!-- Features Section End -->

    <!-- Latest Product Begin -->    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->    <!-- Lookbok Section End -->

    <!-- Logo Section Begin -->
    <div class="logo-section spad">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="img/logos/bmw.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/mercedes.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/volkswagen.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/ford.png" alt="">
            </div>
            <div class="logo-item">
                <img src="img/logos/fiat.png" alt="">
            </div>
        </div>
    </div>
    <!-- Logo Section End -->

    <!-- Footer Section Begin -->
    
 
   
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
    
   


