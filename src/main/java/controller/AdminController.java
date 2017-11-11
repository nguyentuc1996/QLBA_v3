package controller;

//package controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import entities.Admin;

//import com.nimbusds.oauth2.sdk.Request;

import entities.BacSi;
import entities.BenhAn;
import entities.BenhNhan;
import entities.LinhVucKhamChua;
import dao.AdminDAO;
import dao.BacSiDAO;
import dao.BenhNhanDAO;
import dao.LinhVucKhamChuaDAO;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	private BacSiDAO bacSiDAO = new BacSiDAO();
	private AdminDAO adminDAO = new AdminDAO();
	private BenhNhanDAO benhNhanDAO = new BenhNhanDAO();
	private LinhVucKhamChuaDAO linhVucKhamChuaDAO = new LinhVucKhamChuaDAO();

	private boolean isAdmin(HttpServletRequest request, HttpServletResponse response, ModelMap mm) throws IOException {
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("ad");
		if (admin == null) {
			response.sendRedirect(request.getContextPath() + "/home/login.html");
			return false;
		} else {
			mm.put("ad", admin);
			return true;
		}
	}

	@RequestMapping(value = "/dangkybs", method = RequestMethod.POST)
	public void taoTaiKhoanBacSi(HttpServletRequest httpRequest, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		// check if is admin
		httpRequest.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		if (isAdmin(httpRequest, response, mm)) {
			String taiKhoan = httpRequest.getParameter("taiKhoan");
			String hoTen = httpRequest.getParameter("hoTen");
			String ngaySinhStr = httpRequest.getParameter("ngaySinh");
			String gioiTinh = httpRequest.getParameter("gioiTinh");
			String quocTich = httpRequest.getParameter("quocTich");
			String noiOHienTai = httpRequest.getParameter("noiOHienTai");
			String email = httpRequest.getParameter("email");
			String soDienThoai = httpRequest.getParameter("soDienThoai");
			String soCMND = httpRequest.getParameter("soCMND");
			String queQuan = httpRequest.getParameter("queQuan");
			String namKinhNghiem = httpRequest.getParameter("namKinhNghiem");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			Date ngaySinh = sdf.parse(ngaySinhStr);
			BacSi bacSi = new BacSi(0, taiKhoan, soCMND, hoTen, ngaySinh, gioiTinh, quocTich, noiOHienTai, email,
					soDienThoai, soCMND, queQuan, Integer.parseInt(namKinhNghiem));
			bacSiDAO.themBacSi(bacSi);
			response.sendRedirect(httpRequest.getContextPath() + "/admin/home_admin.html");
		}
	}

	@RequestMapping(value = "/taotk", method = RequestMethod.POST)
	public void taoTaiKhoanAdmin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maAdminStr = request.getParameter("maAdmin");
		String taiKhoan = request.getParameter("taiKhoan");
		String matKhau = request.getParameter("matKhau");
		String hoTen = request.getParameter("hoTen");
		String email = request.getParameter("email");
		String soDienThoai = request.getParameter("soDienThoai");
		Admin admin = new Admin(Integer.parseInt(maAdminStr), taiKhoan, matKhau, hoTen, email, soDienThoai);
		adminDAO.themAdmin(admin);
		response.sendRedirect(request.getContextPath() + "/admin/home_admin.html");
	}

	@RequestMapping(value = "/suatk", method = RequestMethod.POST)
	public void suaTaiKhoanAdmin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maAdminStr = request.getParameter("maAdmin");
		String taiKhoan = request.getParameter("taiKhoan");
		String matKhau = request.getParameter("matKhau");
		String hoTen = request.getParameter("hoTen");
		String email = request.getParameter("email");
		String soDienThoai = request.getParameter("soDienThoai");
		Admin admin = new Admin(Integer.parseInt(maAdminStr), taiKhoan, matKhau, hoTen, email, soDienThoai);
		adminDAO.suaAdmin(admin);
		response.sendRedirect(request.getContextPath() + "/qlba/sua_admin.html");
	}

	@RequestMapping(value = "/xemttadmin", method = RequestMethod.GET)
	public String xemTaiKhoanAdmin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maAdminStr = request.getParameter("maAdmin");
		Admin admin = adminDAO.getAdmin(Integer.parseInt(maAdminStr));
		mm.put("admin", admin);
		return "thongtinadmin";
	}

	@RequestMapping(value = "/xemdanhsachtk", method = RequestMethod.GET)
	public String xemDanhSachTaiKhoan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		List<BenhNhan> danhSachBenhNhan = benhNhanDAO.layDanhSachBenhNhan();
		List<BacSi> danhSachBacSi = bacSiDAO.layDanhSachBacSi();
		List<Admin> danhSachAdmin = adminDAO.layDanhSachAdmin();
		mm.put("dsadmin", danhSachAdmin);
		mm.put("dsbenhnhan", danhSachBenhNhan);
		mm.put("dsbacsi", danhSachBacSi);
		return "danhsachtaikhoan";
	}

	@RequestMapping(value = "/xoataikhoan", method = RequestMethod.GET)
	public String xoaTaiKhoan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maTaiKhoan = request.getParameter("maTaiKhoan");
		String vaiTro = request.getParameter("vaitro");
		if (vaiTro.equals("benhNhan")) {
			benhNhanDAO.xoaBenhNhan(Integer.parseInt(maTaiKhoan));
		} else if (vaiTro.equals("bacSi")) {
			bacSiDAO.xoaBacSi(Integer.parseInt(maTaiKhoan));
		} else {
			adminDAO.xoaAdmin(Integer.parseInt(maTaiKhoan));
		}
		return "xoaTaiKhoan";
	}

	@RequestMapping(value = "/home_admin")
	public String home_benh_nhan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		if (isAdmin(request, response, mm)) {
			HttpSession session = request.getSession();
			Admin admin = (Admin) session.getAttribute("ad");
			mm.put("danhSachBS", bacSiDAO.layDanhSachBacSi());
			mm.put("danhSachBN", benhNhanDAO.layDanhSachBenhNhan());
			mm.put("ad", admin);
		}
		return "admin/AD";
	}

	@RequestMapping(value = "/linh_vuc_kham_chua", method = RequestMethod.GET)
	public String linhVucKhamChua(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("them")) {
			// String ma_benh_nhan = request.getParameter("ma_benh_nhan");
			// mm.put("ma_benh_nhan", ma_benh_nhan);
			return "them_linh_vuc";

		} else if (action.equalsIgnoreCase("xoa")) {
			String ma_linh_vuc = request.getParameter("ma_linh_vuc");
			linhVucKhamChuaDAO.xoaLinhVucKhamChua(Integer.parseInt(ma_linh_vuc));
			mm.put("danh_sach_linh_vuc", linhVucKhamChuaDAO.layDanhSachLinhVucKhamChua());
			return "quan_ly_benh_an";

		} else if (action.equalsIgnoreCase("chi_tiet")) {
			String ma_linh_vuc = request.getParameter("ma_linh_vuc");
			mm.put("linh_vuc_kham_chua", linhVucKhamChuaDAO.chiTietLinhVucKhamChua(Integer.parseInt(ma_linh_vuc)));
			return "chi_tiet_linh_vuc";
		} else {
			// sua linh vuc kham chua
			String ma_linh_vuc = request.getParameter("ma_linh_vuc");
			mm.put("ma_linh_vuc", ma_linh_vuc);
			return "sua_linh_vuc";
		}
	}

	// them benh an
	@RequestMapping(value = "them_linh_vuc", method = RequestMethod.POST)
	public String themBenhAn(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws ParseException, IOException {

		String tenLinhVuc = request.getParameter("tenLinhVuc");
		String moTa = request.getParameter("moTa");
		LinhVucKhamChua linhVucKhamChua = new LinhVucKhamChua();
		linhVucKhamChua.setTenLinhVuc(tenLinhVuc);
		linhVucKhamChua.setMoTa(moTa);
		linhVucKhamChuaDAO.themLinhVucKhamChua(linhVucKhamChua);
		mm.put("danh_sach_linh_vuc", linhVucKhamChuaDAO.layDanhSachLinhVucKhamChua());
		// response.sendRedirect(request.getContextPath() +
		// "/user/home_certificate.html?userID=" + userID);
		return "quan_ly_linh_vuc";
	}

	// sua benh an
	@RequestMapping(value = "sua_linh_vuc_kham_chua", method = RequestMethod.POST)
	public String suaBenhAn(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws ParseException, IOException {
		String maLinhVuc = request.getParameter("maLinhVuc");
		String tenLinhVuc = request.getParameter("tenLinhVuc");
		String moTa = request.getParameter("moTa");
		LinhVucKhamChua linhVucKhamChua = linhVucKhamChuaDAO.chiTietLinhVucKhamChua(Integer.parseInt(maLinhVuc));
		linhVucKhamChua.setTenLinhVuc(tenLinhVuc);
		linhVucKhamChua.setMoTa(moTa);
		linhVucKhamChuaDAO.suaLinhVucKhamChua(linhVucKhamChua);
		mm.put("danh_sach_linh_vuc", linhVucKhamChuaDAO.layDanhSachLinhVucKhamChua());
		// response.sendRedirect(request.getContextPath() +
		// "/user/home_certificate.html?userID=" + userID);
		return "quan_ly_linh_vuc";
	}

}
