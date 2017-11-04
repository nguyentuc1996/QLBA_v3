package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.BacSiDAO;
import dao.BenhAnDAO;
import entities.Admin;
import entities.BacSi;
import entities.BenhAn;
import entities.BenhNhan;

@Controller
@RequestMapping(value = "/bacsi")
public class BacSiController {

	private BenhAnDAO benhAnDAO = new BenhAnDAO();

	private boolean isBacSi(HttpServletRequest request, HttpServletResponse response, ModelMap mm) throws IOException {
		HttpSession session = request.getSession();
		BacSi bs = (BacSi) session.getAttribute("bs");
		if (bs == null) {
			response.sendRedirect(request.getContextPath() + "/home/login.html");
			return false;
		} else {
			mm.put("bs", bs);
			return true;
		}
	}

	@RequestMapping(value = "/quan_ly_benh_an", method = RequestMethod.GET)
	public String manageUserSkill(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("them")) {
			String ma_benh_nhan = request.getParameter("ma_benh_nhan");
			mm.put("ma_benh_nhan", ma_benh_nhan);
			return "them_benh_an";

		} else if (action.equalsIgnoreCase("xoa")) {
			String ma_benh_an = request.getParameter("ma_benh_an");
			String ma_benh_nhan = request.getParameter("ma_benh_nhan");
			benhAnDAO.xoaBenhAn(Integer.parseInt(ma_benh_an));
			mm.put("danh_sach_benh_an", benhAnDAO.layDanhSachBenhAnTheoBenhNhan(Integer.parseInt(ma_benh_nhan)));
			return "quan_ly_benh_an";

		} else if (action.equalsIgnoreCase("chi_tiet")) {
			String ma_benh_an = request.getParameter("ma_benh_an");
			mm.put("benhAn", benhAnDAO.layThongTinBenhAn(Integer.parseInt(ma_benh_an)));
			return "chi_tiet_benh_an";
		} else {
			// sua benh an
			String ma_benh_an = request.getParameter("ma_benh_an");
			mm.put("ma_benh_an", ma_benh_an);
			return "sua_benh_an";
		}
	}

	// them benh an
	@RequestMapping(value = "them_benh_an", method = RequestMethod.POST)
	public String themBenhAn(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws ParseException, IOException {
		// lay thong tin bac si
		HttpSession session = request.getSession();
		BacSi bacSi = (BacSi) session.getAttribute("bacSi");
		// tu form them benh an
		String ma_benh_nhan = request.getParameter("ma_benh_nhan");
		// lay du lieu tu form
		String ma_linh_vuc = request.getParameter("ma_linh_vuc");
		// co the auto lay san
		String ngay_kham = request.getParameter("ngay_kham");
		String ly_do_di_kham = request.getParameter("ly_do_di_kham");
		String qua_trinh_benh_ly = request.getParameter("qua_trinh_benh_ly");
		String tien_su_lien_quan = request.getParameter("tien_su_lien_quan");
		String huong_dieu_tri = request.getParameter("huong_dieu_tri");
		String tom_tat_benh_an = request.getParameter("tom_tat_benh_an");
		String khac = request.getParameter("khac");
		// convert du lieu
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date ngayKham = formatter.parse(ngay_kham);

		BenhAn benhAn = new BenhAn();
		benhAn.setMaBenhNhan(Integer.parseInt(ma_benh_nhan));
		benhAn.setMaLinhVuc(Integer.parseInt(ma_linh_vuc));
		benhAn.setNgayKham(ngayKham);
		benhAn.setLyDoKham(ly_do_di_kham);
		benhAn.setQuaTrinhBenhLy(qua_trinh_benh_ly);
		benhAn.setTienSuLienQuan(tien_su_lien_quan);
		benhAn.setHuongDieuTri(huong_dieu_tri);
		benhAn.setTomTatBenhAn(tom_tat_benh_an);
		benhAn.setKhac(khac);
		benhAn.setNgayTao(new Date());
		// ma nguoi tao
		benhAn.setMaNguoiTao(bacSi.getMaBacSi());
		benhAnDAO.themBenhAn(benhAn);
		mm.put("danh_sach_benh_an", benhAnDAO.layDanhSachBenhAnTheoBenhNhan(Integer.parseInt(ma_benh_nhan)));
		// response.sendRedirect(request.getContextPath() +
		// "/user/home_certificate.html?userID=" + userID);
		return "quan_ly_benh_an";
	}

	// sua benh an
	@RequestMapping(value = "sua_benh_an", method = RequestMethod.POST)
	public String suaBenhAn(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws ParseException, IOException {
		// lay thong tin bac si
		HttpSession session = request.getSession();
		BacSi bacSi = (BacSi) session.getAttribute("bacSi");
		// tu form them benh an
		String ma_benh_nhan = request.getParameter("ma_benh_nhan");
		// lay du lieu tu form
		String ma_linh_vuc = request.getParameter("ma_linh_vuc");
		// co the auto lay san
		String ngay_kham = request.getParameter("ngay_kham");
		String ly_do_di_kham = request.getParameter("ly_do_di_kham");
		String qua_trinh_benh_ly = request.getParameter("qua_trinh_benh_ly");
		String tien_su_lien_quan = request.getParameter("tien_su_lien_quan");
		String huong_dieu_tri = request.getParameter("huong_dieu_tri");
		String tom_tat_benh_an = request.getParameter("tom_tat_benh_an");
		String khac = request.getParameter("khac");
		// convert du lieu
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date ngayKham = formatter.parse(ngay_kham);

		BenhAn benhAn = new BenhAn();
		benhAn.setMaBenhNhan(Integer.parseInt(ma_benh_nhan));
		benhAn.setMaLinhVuc(Integer.parseInt(ma_linh_vuc));
		benhAn.setNgayKham(ngayKham);
		benhAn.setLyDoKham(ly_do_di_kham);
		benhAn.setQuaTrinhBenhLy(qua_trinh_benh_ly);
		benhAn.setTienSuLienQuan(tien_su_lien_quan);
		benhAn.setHuongDieuTri(huong_dieu_tri);
		benhAn.setTomTatBenhAn(tom_tat_benh_an);
		benhAn.setKhac(khac);
		benhAn.setNgayTao(new Date());
		// ma nguoi tao
		benhAn.setMaNguoiTao(bacSi.getMaBacSi());
		benhAnDAO.suaBenhAn(benhAn);
		mm.put("danh_sach_benh_an", benhAnDAO.layDanhSachBenhAnTheoBenhNhan(Integer.parseInt(ma_benh_nhan)));
		// response.sendRedirect(request.getContextPath() +
		// "/user/home_certificate.html?userID=" + userID);
		return "quan_ly_benh_an";
	}

	private BacSiDAO bacSiDAO = new BacSiDAO();

	@RequestMapping(value = "/suathongtin", method = RequestMethod.POST)
	public void suaThongTin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		if (isBacSi(request, response, mm)) {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String maBacSi = request.getParameter("maBacSi");
			String taiKhoan = request.getParameter("taiKhoan");
			String hoTen = request.getParameter("hoTen");
			String ngaySinhStr = request.getParameter("ngaySinh");
			String gioiTinh = request.getParameter("gioiTinh");
			String quocTich = request.getParameter("quocTich");
			String noiOHienTai = request.getParameter("noiOHienTai");
			String email = request.getParameter("email");
			String soDienThoai = request.getParameter("soDienThoai");
			String soCMND = request.getParameter("soCMND");
			String queQuan = request.getParameter("queQuan");
			String namKinhNghiem = request.getParameter("namKinhNghiem");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			Date ngaySinh = sdf.parse(ngaySinhStr);
			BacSi bs = bacSiDAO.layThongTinBacSi(Integer.parseInt(maBacSi));
			BacSi bacSi = new BacSi(Integer.parseInt(maBacSi), taiKhoan, bs.getMatKhau(), hoTen, ngaySinh, gioiTinh,
					quocTich, noiOHienTai, email, soDienThoai, soCMND, queQuan, Integer.parseInt(namKinhNghiem));
			//
			bacSiDAO.suaBacSi(bacSi);
			HttpSession session = request.getSession();
			session.setAttribute("bs", bacSiDAO.layThongTinBacSi(Integer.parseInt(maBacSi)));
			response.sendRedirect(request.getContextPath() + "/bacsi/home_bac_si.html");
		}
	}

	@RequestMapping(value = "/laythongtin", method = RequestMethod.GET)
	public String layThongTin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		// get ma BacSi by session
		String maBacSi = request.getParameter("maBacSi");
		BacSi bacSi = bacSiDAO.layThongTinBacSi(Integer.parseInt(maBacSi));
		mm.put("bacSi", bacSi);
		// response.sendRedirect(request.getContextPath() +
		// "/qlba/lay_ttbs.html");
		return "thongtinbacsi";
	}

	@RequestMapping(value = "/home_bac_si")
	public String home_benh_nhan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		if (isBacSi(request, response, mm)) {
			HttpSession session = request.getSession();
			BacSi bacSi = (BacSi) session.getAttribute("bs");
			mm.put("bs", bacSi);
		}
		return "bacsi/BS";
	}
}
