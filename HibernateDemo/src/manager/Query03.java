package manager;

import org.hibernate.Session;

import dao.Student;
import hibernatesession.HibernateSessionFactory;

public class Query03 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;//声明Session对象
		try{
			session = HibernateSessionFactory.getSession();//获取Session
			System.out.println("第一次查询：");
			Student student = (Student) session.get(Student.class, new Integer(2));//加载对象
			System.out.println("name:" + student.getName());
			System.out.println("第二次查询：");
			Student student2 = (Student) session.get(Student.class, new Integer(2));//加载对象
			System.out.println("name:" + student2.getName());
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			HibernateSessionFactory.closeSession();//关闭Session对象
		}
	}

}
