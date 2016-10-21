package org.niit.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import org.niit.model.Userdetails;

@Repository
public interface UserdetailsDAO {
	
	public boolean save(Userdetails userdetails);
	
	
		
		public boolean delete(Userdetails userdetails);
		
		
		public List<Userdetails> listUserdetails();
				
		public boolean isValidUser(String username, String password);
		 Userdetails getUserByUsername (String username);
		public Userdetails get(String username);
		

	
			

}
