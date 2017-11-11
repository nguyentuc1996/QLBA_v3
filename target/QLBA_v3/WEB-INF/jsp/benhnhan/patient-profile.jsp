<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="patient-profile">
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
							<label>Tài khoản:</label> 
							<input class="form-control" value="${bn.taiKhoan}" name="taiKhoan" placeholder="Tên tài khoản" type="text" required autofocus />
		<!-- 											</div> -->
		<!-- 											<div class="col-xs-6 col-md-6"> -->
		<!-- 												<label>Mật khẩu:</label> <input class="form-control" -->
		<!-- 													name="matKhau" placeholder="Mật khẩu" type="text" required /> -->
		<!-- 											</div> -->
		<!-- 										</div> -->
		
							<label>Họ và tên:</label> <input class="form-control" value="${bn.hoTen}" name="hoTen" placeholder="Họ và tên" type="text" required /> 
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
							</br> 
							<label>Quốc tịch:</label> 
							<input class="form-control"
								value="${bn.quocTich}" name="quocTich"
								placeholder="Quốc tịch" type="text" required /> 
							</br> 
							<label>Nơi ở hiện tại:</label>
							<textarea class="form-control" 
								name="noiOHienTai" placeholder="Nơi ở hiện tại" required>${bn.noiOHienTai}</textarea>
							
		<!-- 										<label>Họ và tên:</label> <input class="form-control" -->
		<%-- 											value="${bn.hoTen}" name="hoTen" placeholder="Họ và tên" --%>
		<!-- 											type="text" required />  -->
		<!-- 											</br>  -->
								
							</br> <label>Quê quán:</label>
							<textarea class="form-control" 
								name="queQuan" placeholder="Quê quán" required>${bn.queQuan}</textarea>
		
							</br> 
							<label>Số CMND:</label> 
							<input class="form-control"
								value="${bn.soCMND}" name="soCMND" placeholder="Số CMND"
								type="text" required /> 
								</br> 
							<label>Số thẻ Bảo hiểm y tế:</label> 
							<input class="form-control" value="${bn.soTheBHYT}"
								name="soTheBHYT" placeholder="Số thẻ BHYT" type="text"
								required /> </br> 
							<label>Nghề nghiệp:</label> 
							<input class="form-control" value="${bn.ngheNghiep}" name="ngheNghiep" placeholder="Nghề nghiệp" type="text" required />
							<button class="button button-block" type="submit">
										Cập nhật mới</button>
		
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	