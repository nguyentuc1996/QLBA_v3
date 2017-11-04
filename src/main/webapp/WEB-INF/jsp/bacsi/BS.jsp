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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/doctor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    
    
</head>
<body>
    <header class="topnav nav nav-tabs" id="myTopnav">
        <a href="#home-doctor" class="active">Home</a>
        <a href="#doctor-profile">Tài khoản</a>
        <a href="#health-report-management">Quản lý bệnh án</a>
        <a href="#chat-advice">Tư vấn sức khỏe</a>
        <a style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
        <a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng
			xuất</a>
    </header>
    
    <div class="container">
        <div class="tab-content">
            <div id="home-doctor" class="tab-pane fade in active">
                <h3>HOME DOCTOR</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div>
            <div id="doctor-profile" class="tab-pane fade">
                <h1>Doctor profile</h1>
                <div class="row">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <legend><a data-toggle="collapse" data-parent="#accordion" href="#profile">Hồ sơ cá nhân</a></legend>
                                </h4>
                            </div>
                            <div class="panel-collapse collapse" id="profile">
                                <div class="panel-body">
                                    <!--<legend>Hồ sơ bệnh nhân</legend>-->
                                    <div class="well well-sm">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-4">
                                                <img src="http://placehold.it/380x500" alt="" class="img-rounded img-responsive" />
                                            </div>
                                            <div class="col-sm-6 col-md-8">
                                                <h4>Tên: ${bs.hoTen}</h4>
												<small> 
												<cite title="San Francisco, USA">Quốc tịch: ${bs.quocTich} 
												<i class="glyphicon glyphicon-map-marker"> </i>
												</cite>
												</small>
												<p>
													
													<i class="glyphicon glyphicon-gift"></i> 
													Tên tài khoản: ${bs.taiKhoan}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Họ tên: ${bs.hoTen}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Ngày sinh: ${bs.ngaySinh}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Giới tính: ${bs.gioiTinh}
													
													
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Nơi ở hiện tại: ${bs.noiOHienTai}
													<br/>
													<i class="glyphicon glyphicon-envelope"></i> 
													Email: ${bs.email} 
													<br /> 
													<i class="glyphicon glyphicon-globe"></i>
													Số điện thoại: ${bs.soDienThoai}
													 
													<br /> 
											
													<i class="glyphicon glyphicon-gift"></i> 
													Quê quán: ${bs.queQuan}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Năm kinh nghiệm: ${bs.namKinhNghiem}
													
													
												</p>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <legend><a data-toggle="collapse" data-parent="#accordion" href="#update-profile">Cập nhật hồ sơ cá nhân</a></legend>
                                </h4>
                            </div>
                            <div class="panel-collapse collapse in" id="update-profile">
                                <div class="panel-body">
                                    <!--<legend>Cập nhật tài khoản</legend>-->
                                    <form action="${pageContext.request.contextPath}/bacsi/suathongtin.html?maBacSi=${bs.maBacSi}" method="POST" class="form" role="form">
<!--                                         <div class="row"> -->
<!--                                             <div class="col-xs-6 col-md-6"> -->
                                                <label>Tài khoản:</label>
                                                <input class="form-control" value="${bs.taiKhoan}" name="taiKhoan" placeholder="Tên tài khoản" type="text" required autofocus/> 
<!--                                             </div> -->
<!--                                             <div class="col-xs-6 col-md-6"> -->
<!--                                                 <label>Mật khẩu:</label> -->
<%--                                                 <input class="form-control" value="${bs.matKhau}"name="matKhau" placeholder="Mật khẩu" type="text" required />  --%>
<!--                                             </div> -->
<!--                                         </div> -->

                                        <label>Họ và tên:</label>
                                        <input class="form-control" value="${bs.hoTen}" name="hoTen" placeholder="Họ và tên" type="text" required/>
                                        
                                        </br>

                                        <label>Giới tính:</label>
                                        </br>
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

                                        <label>Ngày sinh:</label>
                                        <input class="form-control" value="${bs.ngaySinh}" name="ngaySinh" placeholder="Ngày sinh" type="date" required/>
                                        
                                        </br>

                                        <div class="row">
                                            <div class="col-xs-6 col-md-6">
                                                <label>Email</label>
                                                <input class="form-control" value="${bs.email}" name="email" placeholder="Địa chỉ email" type="email" required/> 
                                            </div>
                                            <div class="col-xs-6 col-md-6">
                                                <label>ĐTDĐ:</label>
                                                <input class="form-control" value="${bs.soDienThoai}" name="soDienThoai" placeholder="Điện thoại" type="text" required /> 
                                            </div>
                                        </div>
                                        </br>

                                        <label>Quốc tịch:</label>
                                        <input class="form-control" value="${bs.quocTich}" name="quocTich" placeholder="Quốc tịch" type="text" required/>
                                        
                                        </br>

                                        <label>Nơi ở hiện tại:</label>
                                        <textarea class="form-control" name="noiOHienTai" placeholder="Nơi ở hiện tại" required>${bs.noiOHienTai}</textarea>
                                        
                                        </br>

                                        <label>Quê quán:</label>
                                        <textarea class="form-control" name="queQuan" placeholder="Quê quán" required>${bs.queQuan}</textarea>
                                        
                                        </br>

                                        <label>Số CMND:</label>
                                        <input class="form-control" value="${bs.soCMND}" name="soCMND" placeholder="Số CMND" type="text" required/>
                                        
                                        </br>

                                        <label>Năm kinh nghiệm:</label>
                                        <input class="form-control" value="${bs.namKinhNghiem}" name="namKinhNghiem" placeholder="Năm kinh nghiệm" type="text" required/>
                                                                            
                                        
                                        <button class="button button-block" type="submit">
                                            Cập nhật mới</button>    

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="health-report-management" class="tab-pane fade">
                <h1>Quản lý bệnh án</h1>
                <div class="row">
                    <div class="panel-group" id="health-report">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <legend><a data-toggle="collapse" data-parent="#health-report" href="#new-health-report">Thêm bệnh án</a></legend>
                                </h4>
                            </div>
                            <div class="panel-collapse collapse" id="new-health-report">
                                <div class="panel-body">
                                    <form action="/" method="POST" class="form" role="form">
                                        <div class="row">
                                            <div class="col-xs-6 col-md-6">
                                                <label>Mã bác sĩ:</label>
                                                <input class="form-control" name="maNguoiTao" placeholder="Người tạo bệnh án" type="text" required autofocus/> 
                                            </div>
                                            <div class="col-xs-6 col-md-6">
                                                <label>Mã bệnh nhân:</label>
                                                <input class="form-control" name="ma_benh_nhan" placeholder="Mã bệnh nhân" type="text" required /> 
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-6 col-md-6">
                                                <label>Mã lĩnh vực:</label>
                                                <input class="form-control" name="ma_linh_vuc" placeholder="Chuyên khoa bệnh" type="text" required autofocus/> 
                                            </div>
                                            <div class="col-xs-6 col-md-6">
                                                <label>Ngày khám:</label>
                                                <input class="form-control" name="ngay_kham" placeholder="Ngày khám bệnh" type="date" required /> 
                                            </div>
                                        </div>
                                        <label>Lý do khám bệnh:</label>
                                        <textarea class="form-control" name="ly_do_di_kham" placeholder="Lý do khám bệnh" required></textarea>
                                        
                                        </br>

                                        <label>Quá trình bệnh lý:</label>
                                        <textarea class="form-control" name="qua_trinh_benh_ly" placeholder="Quá trình bệnh lý" required></textarea>
                                        
                                        </br>
                                        <label>Tiền sử bệnh:</label>
                                        <textarea class="form-control" name="tien_su_lien_quan" placeholder="Tiền sử bệnh" required></textarea>
                                        
                                        </br>

                                        <label>Hướng điều trị:</label>
                                        <textarea class="form-control" name="huong_dieu_tri" placeholder="Hướng điều trị" required></textarea>
                                        
                                        </br>

                                        <label>Tóm tắt bệnh án:</label>
                                        <textarea class="form-control" name="tom_tat_benh_an" placeholder="Tóm tắt bệnh án" required></textarea>
                                        
                                        </br>

                                        <label>Khác:</label>
                                        <textarea class="form-control" name="khac" placeholder="Khác" ></textarea>
                                        
                                        </br>
                                        <button class="button button-block" type="submit">
                                            Thêm bệnh án</button>    

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <legend><a data-toggle="collapse" data-parent="#health-report" href="#health-reports-list">Danh sách bệnh án</a></legend>
                                </h4>
                            </div>
                            <div class="panel-collapse collapse in" id="health-reports-list">
                                <div class="panel-body">
                                    
                                        <div class="row well well-sm" style="float:center;">
                                            
                                                <input type="text" id="search_text" onkeyup="search()" placeholder="Gõ tên hoặc mã bác sĩ"> 
                                                <table id="search-table" >
                                                    <tr>
                                                        <th>Company</th>
                                                        <th>Contact</th>
                                                        <th>Country</th>
                                                        <th><em class="fa fa-cog"></em></th>
                                                    </tr>
                                                    <tr>
                                                        <td>Alfreds Futterkiste</td>
                                                        <td>Maria Anders</td>
                                                        <td>Germany</td>
                                                        <td align="center">
                                                            <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                                                            <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                                                        </td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Berglunds snabbköp</td>
                                                        <td>Christina Berglund</td>
                                                        <td>Sweden</td>
                                                        <td align="center">
                                                            <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                                                            <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                                                        </td> 
                                                    </tr>
                                                    <tr>
                                                        <td>Centro comercial Moctezuma</td>
                                                        <td>Francisco Chang</td>
                                                        <td>Mexico</td>
                                                        <td align="center">
                                                            <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                                                            <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                                                        </td> 
                                                    </tr>
                                                    
                                                </table>
                                        </div>
                                      
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="chat-advice" class="tab-pane fade">
                <h1>Chat tư vấn</h1>
            </div>
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
