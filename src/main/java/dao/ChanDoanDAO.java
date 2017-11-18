package dao;

import java.util.ArrayList;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Util.HibernateUtil;
import entities.BacSi;
import entities.BenhAn;
import entities.ChanDoan;

public class ChanDoanDAO {
	// them
	public void themChanDoan(ChanDoan chanDoan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(chanDoan);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// sua
	public void suaChanDoan(ChanDoan chanDoan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(chanDoan);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// xoa
	public void xoaChanDoan(int maChanDoan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			ChanDoan chanDoan = session.get(ChanDoan.class, maChanDoan);
			session.delete(chanDoan);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

	// get 1 chan doan
	public ChanDoan layThongTinChanDoan(int maChanDoan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ChanDoan chanDoan = new ChanDoan();
		try {
			transaction = session.beginTransaction();
			chanDoan = session.get(ChanDoan.class, maChanDoan);
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return chanDoan;
	}

	// lay chan doan theo ma benh an
	public ChanDoan layChanDoanTheoBenhAn(int maBenhAn) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		ChanDoan chanDoan= new ChanDoan();
		try {
			transaction = session.beginTransaction();
			String hql = "SELECT CD FROM ChanDoan CD" + " Where  CD.maBenhAn =:id";
			Query query = session.createQuery(hql);
			query.setParameter("id", maBenhAn);
			chanDoan =  (ChanDoan) query.getSingleResult();// lay phan tu dau
																// cua mang
			System.out.println(" Get OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return chanDoan;
	}
	public static void main(String []args){
//		ChanDoanDAO chanDoanDAO= new ChanDoanDAO();
//		ChanDoan chanDoan= new ChanDoan();
//		chanDoan.setMaBenhAn(1);
//		chanDoanDAO.themChanDoan(chanDoan);
	}

}
