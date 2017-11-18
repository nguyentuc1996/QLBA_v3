<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="doctor-profile">
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