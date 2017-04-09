package manager;

import org.hibernate.Session;

import dao.Student;
import hibernatesession.HibernateSessionFactory;

public class AutoUpdate {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;//声明Session对象
		try{
			session = HibernateSessionFactory.getSession();//获取Session
			session.beginTransaction();//开启事务
			Student student = (Student) session.load(Student.class, new Integer(2));//加载对象
			student.setPass("888888");
			session.getTransaction().commit();//提交事务
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();//出错将回滚事务
		}finally{
			HibernateSessionFactory.closeSession();//关闭Session对象
		}
	}
}
