package manager;

import org.hibernate.Session;

import dao.Student;
import hibernatesession.HibernateSessionFactory;

public class Query01 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;//声明Session对象
		try{
			session = HibernateSessionFactory.getSession();//获取Session
			Student student = (Student) session.get(Student.class, new Integer(2));//加载对象
			System.out.println("id:" + student.getId());
			System.out.println("name:" + student.getName());
			System.out.println("pass:" + student.getPass());
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();//关闭Session对象
		}
	}
}
