package com.itzcn.manager;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.itzcn.hibernatesession.HibernateSessionFactory;
import com.itzcn.model.Info;

public class Query03 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		List<Info> list = findByPage(1, 2);
		Iterator iterator = list.iterator();
		while (iterator.hasNext()) {
			Info info = (Info) iterator.next();
			System.out.println(info.getName());
		}
		HibernateSessionFactory.closeSession();

	}
	
	public static List findByPage(int pageNo,int pageSize){
		Session session = null;
		Query query = null;
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			String hql = "from Info info";
			query = session.createQuery(hql);
			query.setFirstResult((pageNo-1)*pageSize);//设置从哪一行记录开始读取
			query.setMaxResults(pageSize);//设置读取多少个记录
		}catch (Exception e) {
			e.printStackTrace();
			
		}
		return query.list();
		
	}

}
