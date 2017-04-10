package util;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernatesession.HibernateSessionFactory;
import model.Info;

public class UtilMethod {
    private static Session session = null;
    private static Query query = null;
    private static Transaction transaction = null;
    public static List findByPage(int pageNo,int pageSize){//分页显示用户信息

        session = HibernateSessionFactory.getSession();
        transaction =session.beginTransaction();
        String hql = "from Info info";
        query = session.createQuery(hql);
        query.setFirstResult((pageNo-1)*pageSize);//设置从哪一行记录开始读取
        query.setMaxResults(pageSize);//设置读取多少个记录

        return query.list();

    }

    public static int getCount(){//获取用户总数

        Long count = null;

        session = HibernateSessionFactory.getSession();
        transaction =session.beginTransaction();
        String hql = "select count(info.id) from Info info ";
        Query query = session.createQuery(hql);
        List list = query.list();
        Iterator iterator = list.iterator();
        if (iterator.hasNext()) {
            count = (Long) iterator.next();
        }
        session.close();
        return count.intValue();
    }

    public static void upInfo(Info info){ //更新用户信息

        session = HibernateSessionFactory.getSession();
        transaction =session.beginTransaction();
        session.update(info);
        transaction.commit();
        session.close();
    }

    public static void delete(int id){//删除用户信息

        session = HibernateSessionFactory.getSession();
        transaction =session.beginTransaction();
        Info info = (Info) session.load(Info.class, new Integer(id));
        session.delete(info);
        transaction.commit();
        session.close();

    }

    public static void addInfo(Info info){//添加用户信息

        session = HibernateSessionFactory.getSession();
        transaction =session.beginTransaction();
        session.save(info);
        transaction.commit();
        session.close();

    }

    public static Info getInfoById(int id){//根据用户id查询用户信息
        session = HibernateSessionFactory.getSession();
        transaction = session.beginTransaction();
        Info info = (Info) session.get(Info.class, new Integer(id));
        session.close();
        return info;

    }
}
