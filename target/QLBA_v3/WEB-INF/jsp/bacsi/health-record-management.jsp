<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="health-report-management">
    <h1>Quản lý bệnh án</h1>
    <ul>
		<li><a class="active" href="">Home</a></li>
		<li><a href="#news">News</a></li>
	</ul>
<!--     <div class="row">
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
                                    <select class="form-control" name="maNguoiTao"> 
                                    	<option value="1">hongtt</option>
                                    	<option value="2">tucnguyen</option>
                    				</select>
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <label>Mã bệnh nhân:</label>
                                    <select class="form-control" name="maBenhNhan"> 
                                    	<option value="1">hongtt</option>
                                    	<option value="2">tucnguyen</option>
                    				</select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-md-6">
                                    <label>Mã lĩnh vực:</label>
                                    <select class="form-control" name="maLinhVuc"> 
                                    	<option value="1">hongtt</option>
                                    	<option value="2">tucnguyen</option>
                    				</select>
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
        </div> -->
    </div>
</div>