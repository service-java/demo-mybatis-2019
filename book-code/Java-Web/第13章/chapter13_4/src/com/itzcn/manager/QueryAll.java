package com.itzcn.manager;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.itzcn.hibernatesession.HibernateSessionFactory;
import com.itzcn.model.Info;


public class QueryAll {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;
	
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			String hql = "select new Info(name,pass) from Info info";
			Query query = session.createQuery(hql);
			List<Info> list = query.list();
			for (Info info : list) {
				System.out.println(info.getName());
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

}
