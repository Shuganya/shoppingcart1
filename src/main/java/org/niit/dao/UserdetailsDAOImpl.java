package org.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import org.niit.dao.UserdetailsDAOImpl;

import org.niit.model.Userdetails;

@EnableTransactionManagement
@Repository("userdetailsDAO")
public class UserdetailsDAOImpl implements UserdetailsDAO {


	
	
	@Autowired
	private SessionFactory sessionFactory;
	public UserdetailsDAOImpl(SessionFactory sessionFactory)
	{
	this.sessionFactory = sessionFactory;

	}
@Transactional
	public boolean save(Userdetails userdetails)
	{
	try {
		// Session session = sessionFactory.getCurrentSession();
		
		userdetails.setRole("ROLE_USER");
		userdetails.setEnabled(true);
		sessionFactory.getCurrentSession().save(userdetails);
		
		/*  Cart newCart = new Cart();
	        newCart.setUserdetails(userdetails);
	        userdetails.setCart(newCart);
	        session.saveOrUpdate(userdetails);
	        session.saveOrUpdate(newCart);

	        session.flush();
		*/
		return true;

	}
	catch(Exception e)
	{
		
		e.printStackTrace();
		return false;
	}
	}




@Transactional
	public boolean delete(Userdetails userdetails)
	{
	try {
		
		sessionFactory.getCurrentSession().delete(userdetails);
		
		return true;
	}
	catch(Exception e)
	{
		
		e.printStackTrace();
		return false;
	}
	}
@Transactional
public Userdetails get(String username)
{
	String hql = "from Userdetails where username= "+" '" +username+ "'";
	Query query =sessionFactory.getCurrentSession().createQuery(hql);
	@SuppressWarnings("unchecked")
	List<Userdetails> list = query.list();
	if(list == null || list.isEmpty())
	{
		return null;
	}
	else
	{
		return list.get(0);
	}
}

@Transactional
public boolean isValidUser(String username, String password) {
	System.out.println("dao impl");
	String hql = "from Userdetails where username= '" + username + "' and " + " password ='" + password + "'";
	Query query = sessionFactory.getCurrentSession().createQuery(hql);

	@SuppressWarnings("unchecked")
	List<Userdetails> list = (List<Userdetails>) query.list();

	if (list != null && !list.isEmpty()) {
		return true;
	}

	return false;
}





/*public List<Userdetails> list()
{
	String hql = "from Userdetails";
	Query query =sessionFactory.getCurrentSession().createQuery(hql);
	return query.list();
}*/
@Transactional
public List<Userdetails> listUserdetails()
{
		String hql = "from Userdetails";
	
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
List<Userdetails> listOfCustomers = query.list();
	

	return listOfCustomers;

	}
@Transactional
public Userdetails getUserByUsername (String username) {
    Session session = sessionFactory.getCurrentSession();
    Query query = session.createQuery("from Userdetails where username = ?");
    query.setString(0, username);

    return (Userdetails) query.uniqueResult();
}


}




