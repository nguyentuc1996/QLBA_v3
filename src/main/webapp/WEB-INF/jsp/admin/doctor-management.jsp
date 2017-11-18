<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>
<div id="doctor-management" >
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
                      <table class="table table-striped table-bordered table-list" id="search-table">
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
