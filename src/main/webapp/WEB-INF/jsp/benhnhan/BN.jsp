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
</head>

<body>
	<header class="topnav nav nav-tabs" id="myTopnav">
		<a href="#home-patient" class="active">Home</a> <a
			href="#patient-profile">Tài khoản</a> <a href="#daily-report">Báo
			cáo sức khỏe</a> <a href="#health-report">Bệnh án</a> <a href="#chat-ask">Tư
			vấn sức khỏe</a> <a style="font-size: 15px;" class="icon"
			onclick="myFunction()">&#9776;</a> 
			<a href="${pageContext.request.contextPath}/home/dangxuat.html">Đăng
			xuất</a>
	</header>

	<div class="container">
		<div class="tab-content">
			<div id="home-patient" class="tab-pane fade in active">
				<h3>HOME ADMIN</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<div id="patient-profile" class="tab-pane fade">
				<h1>Cập nhật thông tin tài khoản</h1>
				<div class="row">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<legend>
										<a data-toggle="collapse" data-parent="#accordion"
											href="#profile">Hồ sơ cá nhân</a>
									</legend>
								</h4>
							</div>
							<div class="panel-collapse collapse" id="profile">
								<div class="panel-body">
									<!--<legend>Hồ sơ bệnh nhân</legend>-->
									<div class="well well-sm">
										<div class="row">
											<div class="col-sm-6 col-md-4">
												<img src="http://placehold.it/380x500" alt=""
													class="img-rounded img-responsive" />
											</div>
											<div class="col-sm-6 col-md-8">
												<h4>Tên: ${bn.hoTen}</h4>
												<small> 
												<cite title="San Francisco, USA">Quốc tịch:${bn.quocTich} 
												<i class="glyphicon glyphicon-map-marker"> </i>
												</cite>
												</small>
												<p>
													
													<i class="glyphicon glyphicon-gift"></i> 
													Tên tài khoản:${bn.taiKhoan}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Họ tên:${bn.hoTen}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Ngày sinh:${bn.ngaySinh}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Giới tính:${bn.gioiTinh}
													
													
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Nơi ở hiện tại:${bn.noiOHienTai}
													<br/>
													<i class="glyphicon glyphicon-envelope"></i> 
													Email: ${bn.email} 
													<br /> 
													<i class="glyphicon glyphicon-globe"></i>
													Số điện thoại: ${bn.soDienThoai}
													 
													<br /> 
											
													<i class="glyphicon glyphicon-gift"></i> 
													Quê quán:${bn.queQuan}
													
													<br /> 
													<i class="glyphicon glyphicon-gift"></i> 
													Nghề nghiệp:${bn.ngheNghiep}
													
													
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
									<legend>
										<a data-toggle="collapse" data-parent="#accordion"
											href="#update-profile">Cập nhật hồ sơ cá nhân</a>
									</legend>
								</h4>
							</div>
							<div class="panel-collapse collapse in" id="update-profile">
								<div class="panel-body">

									<!--<legend>Cập nhật tài khoản</legend>-->
									<form action="${pageContext.request.contextPath}/benhnhan/suathongtin.html?maBenhNhan=${bn.maBenhNhan}" method="POST" class="form" role="form">
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6 col-md-6"> -->
												<label>Tài khoản:</label> <input class="form-control"
													value="${bn.taiKhoan}" name="taiKhoan"
													placeholder="Tên tài khoản" type="text" required autofocus />
<!-- 											</div> -->
<!-- 											<div class="col-xs-6 col-md-6"> -->
<!-- 												<label>Mật khẩu:</label> <input class="form-control" -->
<!-- 													name="matKhau" placeholder="Mật khẩu" type="text" required /> -->
<!-- 											</div> -->
<!-- 										</div> -->

										<label>Họ và tên:</label> <input class="form-control"
											value="${bn.hoTen}" name="hoTen" placeholder="Họ và tên"
											type="text" required /> 
											</br> 
										<label>Giới tính:</label> 
										</br> 
										<label class="radio-inline"> 
										<input type="radio" name="gioiTinh" id="inlineCheckbox1" value="Nam" /> Nam
										</label> 
										<label class="radio-inline"> 
										<input type="radio" name="gioiTinh" id="inlineCheckbox2" value="Nữ" /> Nữ

										</label> </br> </br> <label>Ngày sinh:</label> <input class="form-control"
											value="${bn.ngaySinh}" name="ngaySinh"
											placeholder="Ngày sinh" type="date" required /> </br>

										<div class="row">
											<div class="col-xs-6 col-md-6">
												<label>Email</label> <input class="form-control"
													value="${bn.email}" name="email"
													placeholder="Địa chỉ email" type="email" required />
											</div>
											<div class="col-xs-6 col-md-6">
												<label>ĐTDĐ:</label> <input class="form-control"
													value="${bn.soDienThoai}" name="soDienThoai"
													placeholder="Điện thoại" type="text" required />
											</div>
										</div>
										</br> <label>Quốc tịch:</label> <input class="form-control"
											value="${bn.quocTich}" name="quocTich"
											placeholder="Quốc tịch" type="text" required /> </br> <label>Nơi
											ở hiện tại:</label>
										<textarea class="form-control" 
											name="noiOHienTai" placeholder="Nơi ở hiện tại" required>${bn.noiOHienTai}</textarea>
										
<!-- 										<label>Họ và tên:</label> <input class="form-control" -->
<%-- 											value="${bn.hoTen}" name="hoTen" placeholder="Họ và tên" --%>
<!-- 											type="text" required />  -->
<!-- 											</br>  -->
											
										</br> <label>Quê quán:</label>
										<textarea class="form-control" 
											name="queQuan" placeholder="Quê quán" required>${bn.queQuan}</textarea>

										</br> <label>Số CMND:</label> <input class="form-control"
											value="${bn.soCMND}" name="soCMND" placeholder="Số CMND"
											type="text" required /> 
											</br> <label>Số thẻ Bảo hiểm y
											tế:</label> <input class="form-control" value="${bn.soTheBHYT}"
											name="soTheBHYT" placeholder="Số thẻ BHYT" type="text"
											required /> </br> <label>Nghề nghiệp:</label> <input
											class="form-control" value="${bn.ngheNghiep}"
											name="ngheNghiep" placeholder="Nghề nghiệp" type="text"
											required />


										<button class="button button-block" type="submit">
											Cập nhật mới</button>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="health-report" class="tab-pane fade">
				<h1>Xem bệnh án</h1>

			</div>
			<div id="daily-report" class="tab-pane fade">
				<h1>Báo cáo sức khỏe hằng ngày</h1>
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-8 well well-sm">
						<div class="tab-health">
							<button class="tablinks" onclick="openField(event, 'tong_quat')"
								id="defaultOpen">Tổng quan</button>
							<button class="tablinks" onclick="openField(event, 'mach')"
								id="defaultOpen">Mạch</button>
							<button class="tablinks" onclick="openField(event, 'nhiet_do')">Nhiệt
								độ cơ thể</button>
							<button class="tablinks" onclick="openField(event, 'huyet_ap')">Huyết
								áp</button>
							<button class="tablinks" onclick="openField(event, 'nhip_tho')">Nhịp
								thở</button>
							<button class="tablinks" onclick="openField(event, 'can_nang')">Cân
								nặng</button>
							<button class="tablinks" onclick="openField(event, 'chieu_cao')">Chiều
								cao</button>

						</div>

						<div id="tong_quat" class="tabcontent" style="overflow-x: auto;">
							<h3>Tổng quan sức khỏe</h3>
							<!--<input type="text" id="search_text" onkeyup="search()" placeholder="Gõ tên hoặc mã bác sĩ"> -->
							<table id="health-report-table">
								<tr>
									<th>Thời gian</th>
									<th>Mạch</th>
									<th>Nhiệt độ cơ thể</th>
									<th>Huyết áp</th>
									<th>Nhịp thở</th>
									<th>Cân nặng</th>
									<th>Chiều cao</th>
									<th>Đánh giá</th>
								</tr>
								<tr>
									<td>6h00 27/10/2017</td>
									<td>110</td>
									<td>37</td>
									<td>80</td>
									<td>100</td>
									<td>47</td>
									<td>1.64</td>
									<td>Tốt</td>
								</tr>
								<tr>
									<td>6h00 28/10/2017</td>
									<td>110</td>
									<td>37</td>
									<td>80</td>
									<td>100</td>
									<td>47</td>
									<td>1.64</td>
									<td>Tốt</td>
								</tr>

							</table>
						</div>
						<div id="mach" class="tabcontent">
							<h3>Mạch</h3>
							<p>Paris is the capital of France.</p>
						</div>
						<div id="nhiet_do" class="tabcontent">
							<h3>Nhiệt độ</h3>
							<p>Paris is the capital of France.</p>
						</div>

						<div id="huyet_ap" class="tabcontent">
							<h3>Huyết áp</h3>
							<p>Tokyo is the capital of Japan.</p>
						</div>
						<div id="nhip_tho" class="tabcontent">
							<h3>Nhịp thở</h3>
							<p>Tokyo is the capital of Japan.</p>
						</div>
						<div id="can_nang" class="tabcontent">
							<h3>Cân nặng</h3>
							<p>Tokyo is the capital of Japan.</p>
						</div>
						<div id="chieu_cao" class="tabcontent">
							<h3>Chiều cao</h3>
							<p>Tokyo is the capital of Japan.</p>
						</div>

					</div>
					<div class="col-xs-12 col-sm-12 col-md-4 well well-sm">Tư vấn
						sức khỏe ....</div>

				</div>
			</div>
			<div id="chat-ask" class="tab-pane fade">
				<h1>Tư vấn sức khỏe</h1>
			</div>
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js'></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".nav-tabs a").click(function() {
				$(this).siblings().removeClass('active');
				$(this).addClass('active');
				$(this).tab('show');
			});
		});
	</script>
</body>
</html>
