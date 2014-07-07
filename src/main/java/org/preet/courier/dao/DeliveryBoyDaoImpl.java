package org.preet.courier.dao;


import javax.sql.DataSource;

import org.preet.courier.model.DeliveryBoy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;


@Repository
public class DeliveryBoyDaoImpl implements DeliveryBoyDao {

	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	private BCryptPasswordEncoder encoder;
	@Override
	public boolean addDeliveryBoy(DeliveryBoy deliveryBoy) {
		String sqlAddUser = "INSERT INTO users(username,password,enabled)VALUES ('"+deliveryBoy.getUserName()+"','"+encoder.encode(deliveryBoy.getPassword())+"', TRUE)";
		String sqlAddUserRoles ="INSERT INTO user_roles (username, ROLE) VALUES ('"+deliveryBoy.getUserName()+"', '"+deliveryBoy.getUserRole()+"')";
		String sqlAddUserDetails = "INSERT INTO user_details(username,firstName,middleName,lastName,sex,phoneNumber,emailId,country,streetAddress,city,zipCode,state) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = new Object[] {deliveryBoy.getUserName(),
				deliveryBoy.getFirstName(),
				deliveryBoy.getMiddleName(),
				deliveryBoy.getLastName(),
				deliveryBoy.getSex(),
				deliveryBoy.getPhoneNumber(),
				deliveryBoy.getEmailId(),
				deliveryBoy.getCountry(),
				deliveryBoy.getStreetAddress(),
				deliveryBoy.getCity(),
				deliveryBoy.getZipCode(),
				deliveryBoy.getState()
		};
		int valAdduser = jdbcTemplate.update(sqlAddUser);
		int valRoles = jdbcTemplate.update(sqlAddUserRoles);
		if(deliveryBoy.getUserRole().equals("ROLE_ADMIN")){
			String sql2AddUserRoles ="INSERT INTO user_roles (username, ROLE) VALUES ('"+deliveryBoy.getUserName()+"', 'ROLE_USER')";
			jdbcTemplate.update(sql2AddUserRoles);
		}
		int valDetails = jdbcTemplate.update(sqlAddUserDetails,params);
		if(valAdduser > 0 && valRoles > 0 && valDetails > 0)
			return true;
		
		return false;
	}

	@Override
	public boolean modifyDeliveryBoy(DeliveryBoy deliveryBoy) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
	@Override
	public int checkUserAvailablity(String username) {
		String sqlQuery = "SELECT COUNT(username) FROM users WHERE username='"+username+"'";
		//jdbcTemplate.setDataSource(getDataSource());
		return jdbcTemplate.queryForObject(sqlQuery, Integer.class);
	}


	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public DataSource getDataSource() {
		return dataSource;
	}

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public BCryptPasswordEncoder getEncoder() {
		return encoder;
	}

	@Autowired
	public void setEncoder(BCryptPasswordEncoder encoder) {
		this.encoder = encoder;
	}

	@Override
	public boolean enableDisableDeliveryBoy(String username, Boolean enabled) {
		// TODO Auto-generated method stub
		String status;
		if(enabled)
			status="TRUE";
		else
			status="FALSE";
		String query ="UPDATE USERS SET enabled = "+status+" WHERE username = '"+username+"'";
		int i = jdbcTemplate.update(query);
		if(i>0){
			return true;
		}
		return false;
	}

	
	
}
