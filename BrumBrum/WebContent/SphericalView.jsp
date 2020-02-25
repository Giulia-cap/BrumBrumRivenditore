<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<body>
		<div id="myPano" class="pano">
			<div class="controls">
				<a href="#" class="left">&laquo;</a>
				<a href="#" class="right">&raquo;</a>
			</div>
		</div>
		<script src="//code.jquery.com/jquery-1.8.3.js"></script>
		<script src="SphericalView/jquery.pano.js"></script>
		<script>
		/* jshint jquery: true */
		jQuery(document).ready(function($){
			$("#myPano").pano({
				img: "./SphericalView/sphere2.jpg"
			});
		});
		</script>
	</body>