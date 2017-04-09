package test;

/**
 * Created by Luo_0412 on 2017/4/9.
 */
//import org.hibernate.Session;
//import org.hibernate.Transaction;
//import dao.Info;
//import hibernate.HibernateSessionFactory;
//
//public class Test {
//
//    /**
//     * @param args
//     */
//    public static void main(String[] args) {
//        Session session = HibernateSessionFactory.getSession();
//        Transaction tx = session.beginTransaction();
//        /*Info stu = new Info(1,"admin","123");
//        try {
//            session.save(stu);
//            tx.commit();
//        } catch (Exception e) {
//            tx.rollback();
//            e.printStackTrace();
//        }finally{
//            session.close();
//        }  */
//        Info stu = (Info) session.get(Info.class, new Integer(2));
//        System.out.println(stu.getName());
//    }
//
//}


import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.Student;
import dao.StudentDAO;
import hibernatesession.HibernateSessionFactory;



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
