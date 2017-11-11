<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <title>Home doctor</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/doctor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/chat-advice.css">
    
    
</head>
<body>
    <header class="topnav nav nav-tabs" id="myTopnav">
        <a href="?bs=home-doctor" class="active">Home</a>
        <a href="?bs=doctor-profile">Tài khoản</a>
        <div class="dropdown">
		    <button class="dropbtn">Quản lý bệnh án
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		      <a href="?bs=new-health-record">Thêm bệnh án</a>
		      <a href="?bs=health-records">Danh sách bệnh án</a>
		    </div>
		</div>
		<a href="?bs=chat-advice">Tư vấn sức khỏe</a>
        <a style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        <a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng
			xuất</a>
    </header>
    
    <div class="container">
        <div class="tab-content">
        	<%if (request.getParameter("bs")!=null){ %>
		        <%if (request.getParameter("bs").equals("home-doctor")){ %>
		        	<jsp:include page="home-doctor.jsp"></jsp:include>
		        <%} else if (request.getParameter("bs").equals("doctor-profile")){%>
		        	<jsp:include page="doctor-profile.jsp"></jsp:include>
		        <%} else if (request.getParameter("bs").equals("health-record-management")){%>
		        	<jsp:include page="health-record-management.jsp"></jsp:include>
		        <%} else if (request.getParameter("bs").equals("chat-advice")){%>
		        	<jsp:include page="../tuVan/chat-advice.jsp"></jsp:include>
		        <%} }%>
        </div>
    </div>
    <footer class="footer-1" id="footer">      
        <div class="vd_bottom ">
            <div class="container">
                <div class="row">
                <div class=" col-xs-12">
                    <div class="copyright">
                        Project 3 QLBA
                    </div>
                </div>
                </div><!-- row -->
            </div><!-- container -->
        </div>
    </footer>

    
    <script  src="${pageContext.request.contextPath}/resources/js/header.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/search.js"></script>
    
    <script src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="${pageContext.request.contextPath}/resources/js/chat-advice.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</body>
</html>
