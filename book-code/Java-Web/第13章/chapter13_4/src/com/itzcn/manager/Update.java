package com.itzcn.manager;

import org.hibernate.Session;

import com.itzcn.hibernatesession.HibernateSessionFactory;
import com.itzcn.model.Info;

public class Update {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			Info info = (Info) session.load(Info.class, new Integer(2));
			info.setPass("00000");
			session.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

}
