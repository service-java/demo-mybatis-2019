package com.itzcn.manager;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.itzcn.hibernatesession.HibernateSessionFactory;
import com.itzcn.model.Info;

public class Query01 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			String hql = "from Info info where info.id = ?";
			Query query = session.createQuery(hql);
			query = query.setParameter(0, 3);
			List list = query.list();
			Iterator iterator = list.iterator();
			if (iterator.hasNext()) {
				Info info = (Info) iterator.next();
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
