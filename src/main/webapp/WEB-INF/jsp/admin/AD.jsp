<html lang="en">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>
<head>
    <title>Home admin</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.1.3/css/bootstrap-datetimepicker.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    
    
</head>
<body>
    <header class="topnav nav nav-tabs" id="myTopnav">
        <a href="?task=home-admin">Home</a>
        <a href="?task=doctor-management">Bác sĩ</a>
        <a href="?task=patient-management">Bệnh nhân</a>
        <a style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        <a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng xuất</a>
    </header>
    
    <div class="container content">
        <div class="tab-content" id="tab">
        <%if (request.getParameter("task")!=null){ %>
        <%if (request.getParameter("task").equals("home-admin")){ %>
        	<jsp:include page="home-admin.jsp"></jsp:include>
        <%} else if (request.getParameter("task").equals("doctor-management")){%>
        	<jsp:include page="doctor-management.jsp"></jsp:include>
        <%} else if (request.getParameter("task").equals("patient-management")){%>
        	<jsp:include page="patient-management.jsp"></jsp:include>
        <%} }%>
        </div>
    </div>
            
            
            
    <footer class="footer-1" id="footer">      
        <div class="container">
            <div class="row">
                <div class=" col-xs-12">
                    <div class="copyright">
                        Copyright ©2014 Venmond Inc. All Rights Reserved 
                    </div>
                </div>
           </div><!-- row -->
        </div><!-- container -->
    </footer>

    
    <script  src="${pageContext.request.contextPath}/resources/js/header.js"></script>
    <script  src="${pageContext.request.contextPath}/resources/js/search.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.min.js'></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
        	console.log("oke");
        	           
        });
    </script>
 
</body>
</html>
