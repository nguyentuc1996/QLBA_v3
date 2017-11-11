<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>Home patient</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/patient.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/chat-advice.css">
</head>

<body>
	<header class="topnav nav nav-tabs" id="myTopnav">
		<a href="?bn=home-patient" class="active">Home</a> 
		<a href="?bn=patient-profile">Tài khoản</a> 
		<a href="?bn=daily-health-report">Báo cáo sức khỏe</a> 
		<a href="?bn=health-record-view">Bệnh án</a> 
		<a href="?bn=chat-advice">Tư vấn sức khỏe</a> 
		<a style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a> 
		<a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng xuất</a>
	</header>

	<div class="container">
		<div class="tab-content">
			<%if (request.getParameter("bn")!=null){ %>
		        <%if (request.getParameter("bn").equals("home-patient")){ %>
		        	<jsp:include page="home-patient.jsp"></jsp:include>
		        <%} else if (request.getParameter("bn").equals("patient-profile")){%>
		        	<jsp:include page="patient-profile.jsp"></jsp:include>
		        <%} else if (request.getParameter("bn").equals("daily-health-report")){%>
		        	<jsp:include page="daily-health-report.jsp"></jsp:include>
		        <%} else if (request.getParameter("bn").equals("health-record-view")){%>
		        	<jsp:include page="health-record-view.jsp"></jsp:include>
		        <%} else if (request.getParameter("bn").equals("chat-advice")){%>
		        	<jsp:include page="../tuVan/chat-advice.jsp"></jsp:include>
		        <%} }%>
		</div>
	</div>
	<footer class="footer-1" id="footer">
		<div class="vd_bottom ">
			<div class="container">
				<div class="row">
					<div class=" col-xs-12">
						<div class="copyright">Project 3 - Bệnh án điện tử</div>
					</div>
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
	</footer>


	<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	
	<script src="${pageContext.request.contextPath}/resources/js/search.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/tab-daily-health.js"></script>
	
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="${pageContext.request.contextPath}/resources/js/chat-advice.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</body>
</html>
