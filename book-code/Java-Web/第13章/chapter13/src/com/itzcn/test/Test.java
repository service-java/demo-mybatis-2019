package com.itzcn.test;

import org.hibernate.Session;
import org.hibernate.Transaction;



import com.itzcn.dao.Info;
import com.itzcn.hibernate.HibernateSessionFactory;

public class Test {

	/**
	 * @param args
	 */
    public static void main(String[] args) {  
        Session session = HibernateSessionFactory.getSession();  
        Transaction tx = session.beginTransaction();  
        /*Info stu = new Info(1,"admin","123");  
        try {  
            session.save(stu);  
            tx.commit();  
        } catch (Exception e) {  
            tx.rollback();  
            e.printStackTrace();  
        }finally{  
            session.close();  
        }  */
        Info stu = (Info) session.get(Info.class, new Integer(2));
        System.out.println(stu.getName());
    }    

}
