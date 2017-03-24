package dao;

import user_sql.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao {
	
	public void savel(DataUser user){
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(user);
		transaction.commit();
		session.close();
	}
	public String getLogInfo(String userName){
		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String s = "select e from DataUser e where e.userName= '"+userName+"'";
		DataUser user = (DataUser)session.createQuery(s).list().get(0);
		System.out.println(user.getPassword());
		transaction.commit();
		session.close();
		return user.getPassword();
	}
}