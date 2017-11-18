package dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import Util.HibernateUtil;
import entities.BenhNhan;
import entities.ThongSoSucKhoe;

public class ThongSoSucKhoeDAO {
	// them
	public void themThongSoSucKhoe(ThongSoSucKhoe thongSoSucKhoe) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(thongSoSucKhoe);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// sua
	public void suaThongSoSucKhoe(ThongSoSucKhoe thongSoSucKhoe) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(thongSoSucKhoe);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// xoa
	public void xoaThongSoSucKhoe(Integer maThongSoSucKhoe) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			ThongSoSucKhoe thongSoSucKhoe = session.get(ThongSoSucKhoe.class, maThongSoSucKhoe);
			session.delete(thongSoSucKhoe);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

	public ThongSoSucKhoe layThongTinThongSoSucKhoe(int maThongSoSucKhoe) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ThongSoSucKhoe thongSoSucKhoe = new ThongSoSucKhoe();
		try {
			transaction = session.beginTransaction();
			thongSoSucKhoe = session.get(ThongSoSucKhoe.class, maThongSoSucKhoe);
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return thongSoSucKhoe;
	}
<<<<<<< HEAD

	// get thong so suc khoe theo ma benh nhan
=======
	public ThongSoSucKhoe layThongSoSucKhoeCuaBenhNhan(int maBenhNhan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ThongSoSucKhoe thongSoSucKhoe = new ThongSoSucKhoe();
		try {
			transaction = session.beginTransaction();
			thongSoSucKhoe = (ThongSoSucKhoe) session.createCriteria(ThongSoSucKhoe.class).add(Restrictions.eq("maBenhNhan", maBenhNhan));
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return thongSoSucKhoe;
	}
	// get danh sach thong so suc khoe
>>>>>>> branch 'master' of https://github.com/nguyentuc1996/QLBA_v3.git

	public ArrayList<ThongSoSucKhoe> layDanhSachThongSoSucKhoeTheoBenhNhan(int id) {
		// get danh sach benh an theo ma benh nhan
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ArrayList<ThongSoSucKhoe> list = null;
		try {
			transaction = session.beginTransaction();
			String hql = "SELECT TSSK FROM ThongSoSucKhoe TSSK" + " Where  TSSK.maBenhNhan =:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", id);
			list = (ArrayList<ThongSoSucKhoe>) query.getResultList();// lay phan
																		// tu
			// dau
			// cua mang
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
