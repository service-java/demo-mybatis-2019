package test;

import java.util.Iterator;
import java.util.Set;

import org.hibernate.Session;

import hibernatesession.HibernateSessionFactory;
import model.Book;
import model.Type;

public class SelectBook {
	
	public static void main(String[] args) {
		Session session = null;
		try{
			session = HibernateSessionFactory.getSession();
			session.beginTransaction();
			Type type = (Type) session.get(Type.class, new Integer("1"));
			System.out.println("图书类型为：" + type.getName());
			Set<Book> books = type.getBooks();
			Iterator<Book> iterator = books.iterator();
			while (iterator.hasNext()) {
				Book book = iterator.next();
				System.out.println("书名：" + book.getName() + "作者：" + book.getAuthor());
			}
			session.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally{
			HibernateSessionFactory.closeSession();
		}
	}

}
