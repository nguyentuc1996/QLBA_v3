<%@page import="entities.LinhVucKhamChua"%>
<%@page import="dao.LinhVucKhamChuaDAO"%>
<%@page import="dao.BenhNhanDAO"%>
<%@page import="dao.BenhAnDAO"%>
<%@page import="entities.BenhNhan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entities.BenhAn"%>
<%@page import="java.util.ArrayList"%>
<div id="health-reports-list">
	<h3>Danh sách bệnh án</h3>
	<div class="row well well-sm" style="float: center; margin-top: 15px;">

		<input type="text" id="search_text" onkeyup="search()"
			placeholder="Gõ tên hoặc mã bác sĩ">
		<table id="search-table">
			<tr>
				<th>Mã bệnh án</th>
				<th>Mã - Tên bệnh nhân</th>
				<th>Số điện thoại</th>
				<th>Loại bệnh lý</th>
				<th>Tóm tắt bệnh án</th>
				<th><em class="fa fa-cog"></em></th>
			</tr>
			<%
				ArrayList<BenhAn> ds = (ArrayList<BenhAn>) request.getAttribute("danhSachBenhAnTheoBacSi");
				if (ds != null) {
					for (BenhAn benhAn : ds) {
			%>
			<tr>


				<td><%=benhAn.getMaBenhAn()%></td>

				<%
					int maBenhNhan = benhAn.getMaBenhNhan();
							int maLinhVuc = benhAn.getMaLinhVuc();
							BenhNhanDAO benhNhanDAO = new BenhNhanDAO();
							BenhNhan benhNhan = benhNhanDAO.layThongTinBenhNhan(maBenhNhan);// moi bênh án sẽ lấy benh nhan tương ứng
				%>
				<td><%=maBenhNhan%> - <%=benhNhan.getHoTen()%></td>
				<td><%=benhNhan.getSoDienThoai()%></td>
				<%
					LinhVucKhamChuaDAO linhVucKhamChuaDAO = new LinhVucKhamChuaDAO();
							LinhVucKhamChua linhVucKhamChua = linhVucKhamChuaDAO.chiTietLinhVucKhamChua(maLinhVuc);
				%>
				<td><%=linhVucKhamChua.getTenLinhVuc()%></td>
				<td><%=benhAn.getTomTatBenhAn()%></td>
				<td align="center"><a class="btn btn-default"><em
						class="fa fa-pencil"></em></a> <a class="btn btn-danger"><em
						class="fa fa-trash"></em></a></td>

			</tr>
			<%
				}
				}
			%>

		</table>
	</div>

</div>