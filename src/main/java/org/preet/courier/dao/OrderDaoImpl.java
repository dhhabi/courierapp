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
	public long addOrder(MyOrder order) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		long orderId;
		try{
		session.beginTransaction();
		orderId = (Long) session.save(order);
		
		session.getTransaction().commit();
		}catch(Exception ex){
			session.getTransaction().rollback();
			return 0;
		}finally{
			session.close();
		}
		
		return orderId;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public MyOrder getOrderById(long orderId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		MyOrder order;
		try{
		session.beginTransaction();
		order = (MyOrder)session.get(MyOrder.class, orderId);
		}catch(Exception ex){
			return null;
		}finally{
			session.close();
		}
		return order;
	}

	@Override
	public boolean updateOrder(MyOrder order) {
		Session session = sessionFactory.openSession();
		try{
		session.beginTransaction();
		session.update(order);
		session.getTransaction().commit();
		}catch(Exception ex){
			session.getTransaction().rollback();
			return false;
		}finally{
			session.close();
		}
		return true;
	}
	
}
