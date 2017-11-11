<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="daily-report">
	<h1>Báo cáo sức khỏe hằng ngày</h1>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-8 well well-sm">
			<div class="tab-health">
				<button class="tablinks" onclick="openField(event, 'tong_quat')" id="defaultOpen">Tổng quan</button>
				<button class="tablinks" onclick="openField(event, 'mach')" id="defaultOpen">Mạch</button>
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