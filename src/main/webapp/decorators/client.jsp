<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/listLib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ"/></title>
<link
	href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css' /> "
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<c:url value='/templates/client/css/styles.css'/>" rel="stylesheet" />
</head>
<body>
	<!-- Header-->
	<%@include file="/common/client/Header.jsp"%>
	<!-- Header-->
	
	
	<!-- Body-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<dec:body/>
		</div>
	</section>
	<!-- Body-->
	
	<!-- Footer-->
	<%@include file="/common/client/Footer.jsp"%>
	<!-- Footer-->
	
	<!-- Bootstrap core JS-->
	<script
		src="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' />"></script>
	<!-- Core theme JS-->
	<script src="<c:url value='/templates/client/js/scripts.js' />"></script>
</body>
</html>