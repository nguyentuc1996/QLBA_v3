package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Util.HibernateUtil;
import entities.Admin;
import entities.BacSiBenhNhan;

public class BacSiBenhNhanDAO {
	public void themBacSiBenhNhan(BacSiBenhNhan bacSiBenhNhan) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(bacSiBenhNhan);
			transaction.commit();
			System.out.println("Save OK");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
	
	public void xoaBacSiBenhNhan(int id){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();

			BacSiBenhNhan bacSiBenhNhan = session.get(BacSiBenhNhan.class, id);
			session.delete(bacSiBenhNhan);
			transaction.commit();
			System.out.println("Delete OK");
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
	}

}
