package com.itzcn.test;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.itzcn.dao.Student;
import com.itzcn.dao.StudentDAO;
import com.itzcn.hibernatesession.HibernateSessionFactory;



public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		 Session session = HibernateSessionFactory.getSession();  
	        Transaction tx = session.beginTransaction(); 
	        Student stu = (Student) session.get(Student.class, new Integer(1));
	        System.out.println(stu.getName());
	        
	        StudentDAO student = new StudentDAO();
	        List list = student.findByProperty("name", "admin");
	        Iterator iterator = list.iterator();
	        while(iterator.hasNext()){
	        	Student st = (Student) iterator.next();
	        	System.out.println(st.getName());
	        }
	}

}
