package org.preet.courier.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.preet.courier.model.MyOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao {

	private SessionFactory sessionFactory;
	
	@Override
	public boolean addOrder(MyOrder order) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		try{
		session.beginTransaction();
		session.save(order);
		session.getTransaction().commit();
		session.close();
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}
		return true;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
}
