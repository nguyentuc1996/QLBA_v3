package dao;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import Util.HibernateUtil;
import entities.ChungChi;
import entities.ThongSoSucKhoe;

public class ChungChiDAO {

	public void themChungChi(ChungChi chungChi) {
		// TODO Auto-generated method stub
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

	public void suaChungChi(ChungChi chungChi) {
		// TODO Auto-generated method stub
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
	public void xoaChungChi(int maChungChi, int maBacSi) {
		// TODO Auto-generated method stub
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			ChungChi chungChi = (ChungChi) session.createCriteria(ChungChi.class)
					.add(Restrictions.eq("maChungChi", maChungChi)).add(Restrictions.eq("maBacSi",maBacSi));
			session.delete(chungChi);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

	public List<ChungChi> xemChungChi(int maBacSi) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ArrayList<ChungChi> list = null;
		try {
			transaction = session.beginTransaction();
			list = (ArrayList<ChungChi>) session.createCriteria(ChungChi.class).add(Restrictions.eq("maBacSi",maBacSi)).list();
			System.out.println("Get List OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return list;

	}


}
