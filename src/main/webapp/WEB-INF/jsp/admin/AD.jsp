<!DOCTYPE html>
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
        <a href="#home-admin" class="active">Home</a>
        <a href="#doctor-management">Bác sĩ</a>
        <a href="#patient-management">Bệnh nhân</a>
        <a style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        <a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng xuất</a>
    </header>
    
    <div class="container content">
        <div class="tab-content">
            <div id="home-admin" class="tab-pane fade in active">
                <h3>HOME ADMIN</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div id="doctor-management" class="tab-pane fade">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4 well well-sm">
                        <legend>Tạo tài khoản bác sĩ</legend>
                        <form action="${pageContext.request.contextPath}/admin/dangkybs.html" method="POST" class="form" role="form">
<!--                             <div class="row"> -->
<!--                                 <div class="col-xs-6 col-md-6"> -->
                                    <input class="form-control" name="taiKhoan" placeholder="Tên tài khoản" type="text" required autofocus/> 
<!--                                 </div> -->
<!--                                 <div class="col-xs-6 col-md-6"> -->
<!--                                     <input class="form-control" name="matKhau" placeholder="Mật khẩu" type="text" required />  -->
<!--                                 </div> -->
<!--                             </div> -->
                            <input class="form-control" name="hoTen" placeholder="Họ và tên" type="text" required/>
                            <label class="radio-inline">
                                <input type="radio" name="gioiTinh" id="inlineCheckbox1" value="Nam" />
                                Nam
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gioiTinh" id="inlineCheckbox2" value="Nữ" />
                                Nữ
                            </label>
                            </br>
                            </br>
                            <input class="form-control" name="ngaySinh" placeholder="Ngày sinh" type="date" required/>
                            
                            <div class="row">
                                <div class="col-xs-6 col-md-6">
                                    <input class="form-control" name="email" placeholder="Địa chỉ email" type="email" required/> 
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <input class="form-control" name="soDienThoai" placeholder="Điện thoại" type="text" required /> 
                                </div>
                            </div>
                            <input class="form-control" name="quocTich" placeholder="Quốc tịch" type="text" required/>
                            <textarea class="form-control" name="noiOHienTai" placeholder="Nơi ở hiện tại" required></textarea>
                            <textarea class="form-control" name="queQuan" placeholder="Quê quán" required></textarea>
                            <input class="form-control" name="soCMND" placeholder="Số CMND" type="text" required/>
                            <input class="form-control" name="namKinhNghiem" placeholder="Năm kinh nghiệm" type="text" required/>
                            
                            
                            
                            <button class="button button-block" type="submit">
                                Tạo tài khoản</button>    

                        </form>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 well well-sm">
                        <div class="panel panel-default panel-table">
                            <div class="panel-heading">
                                <div class="row">
                                    <legend>Danh sách tài khoản bác sĩ</legend>
                                    <input type="text" id="search_text" onkeyup="search()" placeholder="Gõ tên hoặc mã bác sĩ">  
                                </div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-bordered table-list" id="doctor-table">
                                <thead>
                                    <tr>
                                        <th class="hidden-xs">Mã bác sĩ</th>
                                        <th>Tài khoản</th>
                                        <th>Họ và tên</th>
                                        <th><em class="fa fa-cog"></em>&nbsp;&nbsp;&nbsp;Xóa tài khoản</th>
                                    </tr> 
                                </thead>
                               
                                <tbody>
                                <% ArrayList<BacSi> arr = (ArrayList<BacSi>) request.getAttribute("danhSachBS"); %>
                                 <% if(arr != null) {%>
                                 <% 
                                 for(BacSi bacSi: arr){ 
                                 %>
                                        <tr>
                                            <td class="hidden-xs"><%=bacSi.getMaBacSi() %></td>
                                            <td><%=bacSi.getTaiKhoan() %></td>
                                            <td><%=bacSi.getEmail() %></td>
                                            <td align="center">
                                            <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                                            </td>
                                        </tr>
                                   <%} %> 
                                   <%} %>    
                                        </tbody>
                                </table>
                            
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                <div class="col col-xs-4">Page 1 of 5
                                </div>
                                <div class="col col-xs-8">
                                    <ul class="pagination hidden-xs pull-right">
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    </ul>
                                    <ul class="pagination visible-xs pull-right">
                                        <li><a href="#">«</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="patient-management" class="tab-pane fade">
                <div class="row">
<!--                     <div class="col-xs-12 col-sm-12 col-md-4 well well-sm"> -->
<!--                         <legend>Hồ sơ bệnh nhân</legend> -->
<!--                         <div class="well well-sm"> -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-sm-6 col-md-4"> -->
<!--                                     <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" /> -->
<!--                                 </div> -->
<!--                                 <div class="col-sm-6 col-md-8"> -->
<!--                                     <h4> -->
<!--                                         Bhaumik Patel</h4> -->
<%--                                     <small><cite title="San Francisco, USA">San Francisco, USA <i class="glyphicon glyphicon-map-marker"> --%>
<%--                                     </i></cite></small> --%>
<!--                                     <p> -->
<!--                                         <i class="glyphicon glyphicon-envelope"></i>email@example.com -->
<!--                                         <br /> -->
<!--                                         <i class="glyphicon glyphicon-globe"></i><a href="#">www.jquery2dotnet.com</a> -->
<!--                                         <br /> -->
<!--                                         <i class="glyphicon glyphicon-gift"></i>June 02, 1988</p> -->
                                    
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="col-xs-12 col-sm-12 col-md-12 well well-sm">
                        <div class="panel panel-default panel-table">
                            <div class="panel-heading">
                                <div class="row">
                                    <legend>Danh sách tài khoản bệnh nhân</legend>
                                    <input type="text" id="search_text" onkeyup="search()" placeholder="Gõ tên hoặc mã bác sĩ">  
                                </div>
                            </div>
                            <div class="panel-body">
                                <table class="table table-striped table-bordered table-list" id="search-table">
                                <thead>
                                    <tr>
                                        <th class="hidden-xs">Mã bệnh nhân</th>
                                        <th>Tài khoản</th>
                                        <th>Họ và tên</th>
                                        <th>Email</th>
                                        <th>Số CMND</th>
                                        <th><em class="fa fa-cog">&nbsp;&nbsp;&nbsp;Xóa tài khoản</em></th>
                                    </tr> 
                                </thead>
                                <tbody>
                                <% ArrayList<BenhNhan> arr1 = (ArrayList<BenhNhan>) request.getAttribute("danhSachBN"); %>
                                 <%if(arr1 != null){ %>
                                 <% for(BenhNhan bn: arr1){ %>
                                        <tr>
                                            <td class="hidden-xs"><%=bn.getMaBenhNhan() %></td>
                                            <td><%=bn.getTaiKhoan() %></td>
                                            <td><%=bn.getHoTen() %></td>
                                            <td><%=bn.getEmail() %></td>
                                            <td><%=bn.getSoCMND() %></td>
                                            <td align="center">
                                            
                                            <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                                            </td>
                                        </tr>
                                       <%} %>
                                       <%} %>
                                        </tbody>
                                </table>
                            
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                <div class="col col-xs-4">Page 1 of 5
                                </div>
                                <div class="col col-xs-8">
                                    <ul class="pagination hidden-xs pull-right">
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    </ul>
                                    <ul class="pagination visible-xs pull-right">
                                        <li><a href="#">«</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
            $(".nav-tabs a").click(function(){
                $(this).siblings().removeClass('active');
                $(this).addClass('active');
                $(this).tab('show');
            });
        });
    </script>
</body>
</html>
