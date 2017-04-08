package com.itzcn.manager;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.itzcn.hibernatesession.HibernateSessionFactory;
import com.itzcn.model.Info;

public class GetCount {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			String hql = "select count(info.id) from Info info ";
			Query query = session.createQuery(hql);
			List list = query.list();
			Iterator iterator = list.iterator();
			if (iterator.hasNext()) {
				Long count = (Long) iterator.next();
				System.out.println(count);
				int a = count.intValue();
				System.out.println(a);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

}
