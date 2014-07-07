package org.preet.courier.dao;

import org.preet.courier.model.DeliveryBoy;

public interface DeliveryBoyDao {
	public boolean addDeliveryBoy(DeliveryBoy deliveryBoy);
	public boolean modifyDeliveryBoy(DeliveryBoy deliveryBoy);
	public int checkUserAvailablity(String username);	
	public boolean enableDisableDeliveryBoy(String username, Boolean enabled);
	}
