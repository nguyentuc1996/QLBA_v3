package controller;

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

import dao.BenhNhanDAO;
import dao.ThongSoSucKhoeDAO;
import entities.Admin;
import entities.BenhNhan;
import entities.ThongSoSucKhoe;

@Controller
@RequestMapping(value = "/benhnhan")
public class BenhNhanController {
	private BenhNhanDAO benhNhanDAO = new BenhNhanDAO();
	private ThongSoSucKhoeDAO thongSoSucKhoeDAO = new ThongSoSucKhoeDAO();
	
	private boolean isBenhNhan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		HttpSession session = request.getSession();
		BenhNhan bn = (BenhNhan) session.getAttribute("bn");
		if (bn == null) {
			response.sendRedirect(request.getContextPath() + "/home/login.html");
			return false;
		} else {
			// mm.put("bn", admin);
			return true;
		}
	}

	@RequestMapping(value = "/suathongtin", method = RequestMethod.POST)
	public void suaThongTin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		if (isBenhNhan(request, response, mm)) {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String maBenhNhan = request.getParameter("maBenhNhan");
			String taiKhoan = request.getParameter("taiKhoan");
			String hoTen = request.getParameter("hoTen");
			String ngaySinhStr = request.getParameter("ngaySinh");
			String gioiTinh = request.getParameter("gioiTinh");
			String quocTich = request.getParameter("quocTich");
			String noiOHienTai = request.getParameter("noiOHienTai");
			String email = request.getParameter("email");
			String soDienThoai = request.getParameter("soDienThoai");
			String soCMND = request.getParameter("soCMND");
			String soTheBHYT = request.getParameter("soTheBHYT");
			String queQuan = request.getParameter("queQuan");
			String ngheNghiep = request.getParameter("ngheNghiep");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			// surround below line with try catch block as below code throws
			// checked
			// exception
			Date ngaySinh = sdf.parse(ngaySinhStr);
			BenhNhan bn = benhNhanDAO.layThongTinBenhNhan(Integer.parseInt(maBenhNhan));
			BenhNhan benhNhan = new BenhNhan(Integer.parseInt(maBenhNhan), taiKhoan, bn.getMatKhau(), hoTen, ngaySinh,
					gioiTinh, quocTich, noiOHienTai, email, soDienThoai, soCMND, soTheBHYT, queQuan, ngheNghiep);
			benhNhanDAO.suaBenhNhan(benhNhan);
			// System.out.println(gioiTinh);
			HttpSession session = request.getSession();
			session.setAttribute("bn", benhNhanDAO.layThongTinBenhNhan(Integer.parseInt(maBenhNhan)));
			response.sendRedirect(request.getContextPath() + "/benhnhan/home_benh_nhan.html");
		}
	}

	@RequestMapping(value = "/laythongtin", method = RequestMethod.GET)
	public String layThongTin(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		// get ma BenhNhan by session
		String maBenhNhan = request.getParameter("maBenhNhan");
		BenhNhan benhNhan = benhNhanDAO.layThongTinBenhNhan(Integer.parseInt(maBenhNhan));
		mm.put("benhNhan", benhNhan);
		response.sendRedirect(request.getContextPath() + "/benhnhan/home_benh_nhan.html");
		return "thongtinbenhnhan";
	}

	@RequestMapping(value = "/home_benh_nhan")
	public String home_benh_nhan(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException {
		if (isBenhNhan(request, response, mm)) {
			HttpSession session = request.getSession();
			BenhNhan benhNhan = (BenhNhan) session.getAttribute("bn");
			mm.put("bn", benhNhan);
		}
		return "benhnhan/BN";
	}

	@RequestMapping(value = "/themthongsosuckhoe", method = RequestMethod.POST)
	public void themThongSoSucKhoe(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maBanGhi = request.getParameter("maBanGhi");
		String maBenhNhan = request.getParameter("maBenhNhan");
		String mach = request.getParameter("mach");
		String nhietDo = request.getParameter("nhietDo");
		String huyetAp = request.getParameter("huyetAp");
		String nhipTho = request.getParameter("nhipTho");
		String canNang = request.getParameter("canNang");
		String ngay = request.getParameter("ngay");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// surround below line with try catch block as below code throws
		// checked
		// exception
		// Date ngaySinh = sdf.parse(ngaySinhStr);
		ThongSoSucKhoe thongSoSucKhoe = new ThongSoSucKhoe(Integer.parseInt(maBanGhi), Integer.parseInt(maBenhNhan),
				Integer.parseInt(mach), Integer.parseInt(nhietDo), Integer.parseInt(huyetAp), Integer.parseInt(nhipTho),
				Integer.parseInt(canNang), sdf.parse(ngay));
		thongSoSucKhoeDAO.themThongSoSucKhoe(thongSoSucKhoe);
	}

	@RequestMapping(value = "thongsosuckhoe", method = RequestMethod.GET)
	public String xemThongSo(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maBenhNhan = request.getParameter("maBenhNhan");
		ThongSoSucKhoe thongSoSucKhoe = thongSoSucKhoeDAO.layThongSoSucKhoeCuaBenhNhan(Integer.parseInt(maBenhNhan));
		return "thongsosuckhoe";
	}

	@RequestMapping(value = "capnhatthongsosuckhoe", method = RequestMethod.POST)
	public void capNhatThongSoSucKhoe(HttpServletRequest request, HttpServletResponse response, ModelMap mm)
			throws IOException, ParseException {
		String maBanGhi = request.getParameter("maBanGhi");
		String maBenhNhan = request.getParameter("maBenhNhan");
		String mach = request.getParameter("mach");
		String nhietDo = request.getParameter("nhietDo");
		String huyetAp = request.getParameter("huyetAp");
		String nhipTho = request.getParameter("nhipTho");
		String canNang = request.getParameter("canNang");
		String ngay = request.getParameter("ngay");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// surround below line with try catch block as below code throws
		// checked
		// exception
		// Date ngaySinh = sdf.parse(ngaySinhStr);
		ThongSoSucKhoe thongSoSucKhoe = new ThongSoSucKhoe(Integer.parseInt(maBanGhi), Integer.parseInt(maBenhNhan),
				Integer.parseInt(mach), Integer.parseInt(nhietDo), Integer.parseInt(huyetAp), Integer.parseInt(nhipTho),
				Integer.parseInt(canNang), sdf.parse(ngay));
		thongSoSucKhoeDAO.suaThongSoSucKhoe(thongSoSucKhoe);
	}

}
