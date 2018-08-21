package dao;

/**
 * Created by Luo_0412 on 2017/4/9.
 */
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernatesession.HibernateSessionFactory;

public class StudentDAO {

    public Session getSession(){
        return HibernateSessionFactory.getSession();
    }

    public void save(Student transientInstance){
        try{
            Transaction tx = getSession().beginTransaction();
            getSession().save(transientInstance);
            tx.commit();
        }catch(RuntimeException re){
            re.printStackTrace();
        }
    }

    public List findByProperty(String name,Object value){

        try{
            String queryString = "from Student as model where model." + name + "= ?";
            Query queryObject = getSession().createQuery(queryString);
            queryObject.setParameter(0, value);
            return queryObject.list();
        }catch(RuntimeException re){
            throw(re);
        }
    }

}
