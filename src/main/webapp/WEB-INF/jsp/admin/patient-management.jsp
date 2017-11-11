<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="entities.*"%>
<%@ page import="java.util.*"%>

<div id="patient-management">
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
