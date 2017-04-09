package manager;

import org.hibernate.Session;

import dao.Student;
import hibernatesession.HibernateSessionFactory;

public class Delete {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Session session = null;//声明Session对象
		try{
			session = HibernateSessionFactory.getSession();//获取Session
			session.beginTransaction();//开启事务
			Student student = (Student) session.load(Student.class, new Integer(1));//加载对象
			session.delete(student);//删除Student
			session.getTransaction().commit();//提交事务
		}catch(Exception e){
			e.printStackTrace();
			session.getTransaction().rollback();//出错将回滚事务
		}finally{
			HibernateSessionFactory.closeSession();//关闭Session对象
		}
	}

}
