package org.preet.courier.dao;

import java.util.List;

import org.preet.courier.model.MyOrder;

public interface OrderDao {
	public long addOrder(MyOrder order);
	public MyOrder getOrderById(long orderId);
	public boolean updateOrder(MyOrder order);
	public List<MyOrder> getPendingOrders();
}
