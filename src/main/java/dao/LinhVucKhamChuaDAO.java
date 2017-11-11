package dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Util.HibernateUtil;
import entities.LinhVucKhamChua;
import entities.ThongSoSucKhoe;
// lvkc
public class LinhVucKhamChuaDAO {
	// them
	public void themLinhVucKhamChua(LinhVucKhamChua linhVucKhamChua) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(linhVucKhamChua);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// sua
	public void suaLinhVucKhamChua(LinhVucKhamChua linhVucKhamChua) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(linhVucKhamChua);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// xoa
	public void xoaLinhVucKhamChua(Integer maLinhVuc) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			LinhVucKhamChua linhVucKhamChua = session.get(LinhVucKhamChua.class, maLinhVuc);
			session.delete(linhVucKhamChua);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

	public LinhVucKhamChua chiTietLinhVucKhamChua(int maLinhVuc) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		LinhVucKhamChua linhVucKhamChua = new LinhVucKhamChua();
		try {
			transaction = session.beginTransaction();
			linhVucKhamChua = session.get(LinhVucKhamChua.class, maLinhVuc);
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return linhVucKhamChua;
	}

	// get danh sach thong so suc khoe
	public ArrayList<LinhVucKhamChua> layDanhSachLinhVucKhamChua() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ArrayList<LinhVucKhamChua> list = null;
		transaction = session.beginTransaction();
		list = (ArrayList<LinhVucKhamChua>) session.createCriteria(LinhVucKhamChua.class).list();
		System.out.println("Get list OK");
		session.close();
		return list;
	}
}
