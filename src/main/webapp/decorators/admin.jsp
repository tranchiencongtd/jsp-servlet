<%@ include file="/common/listLib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>
<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="<c:url value='/templates/admin/assets/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/templates/admin/assets/font-awesome/4.2.0/css/font-awesome.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/templates/admin/assets/fonts/fonts.googleapis.com.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/templates/admin/assets/css/ace.min.css'/>"
	class="ace-main-stylesheet" id="main-ace-style" />
<script
	src="<c:url value='/templates/admin/assets/js/ace-extra.min.js'/>"></script>
</head>
<body>
	<!-- Header-->
	<%@include file="/common/admin/Header.jsp"%>
	<!-- EndHeader-->

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<%@include file="/common/admin/Menu.jsp"%>

		<!-- Body -->
		<dec:body />
		<!-- EndBody -->

		<!-- Footer -->
		<%@include file="/common/admin/Footer.jsp"%>
		<!-- EndFooter -->
	</div>

	<!-- basic scripts -->
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.2.1.1.min.js'/>"></script>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='/templates/admin/assets/js/jquery.min.js'>"
								+ "<"+"/script>");
	</script>
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='/templates/admin/assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script
		src="<c:url value='/templates/admin/assets/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery-ui.custom.min.js'/>"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.ui.touch-punch.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.easypiechart.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.sparkline.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.flot.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.flot.pie.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/jquery.flot.resize.min.js' />"></script>
	<script
		src="<c:url value='/templates/admin/assets/js/ace-elements.min.js' />"></script>
	<script src="<c:url value='/templates/admin/assets/js/ace.min.js' />"></script>
</body>
</html>
