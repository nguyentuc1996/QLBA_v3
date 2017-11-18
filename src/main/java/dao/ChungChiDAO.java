package dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Util.HibernateUtil;
import entities.BacSi;
import entities.BenhAn;
import entities.ChungChi;

public class ChungChiDAO {
	// them
	public void themChungChi(ChungChi chungChi) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(chungChi);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// sua
	public void suaChungChi(ChungChi chungChi) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(chungChi);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// xoa
	public void xoaChungChi(int maChungChi) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			ChungChi chungChi = session.get(ChungChi.class, maChungChi);
			session.delete(chungChi);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

	// get
	public ChungChi layThongTinChungChi(int maChungChi) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ChungChi chungChi = new ChungChi();
		try {
			transaction = session.beginTransaction();
			chungChi = session.get(ChungChi.class, maChungChi);
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return chungChi;
	}

	// get danh sach chung chi cua 1 bac si
	public ArrayList<ChungChi> layDanhSachChungChiTheoBacSi(int maBacSi) {
		// get danh sach benh an theo ma benh nhan
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ArrayList<ChungChi> list = null;
		try {
			transaction = session.beginTransaction();
			String hql = "SELECT CC FROM ChungChi CC" + " Where  CC.maBacSi =:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", maBacSi);
			list = (ArrayList<ChungChi>) query.getResultList();// lay phan tu dau
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
