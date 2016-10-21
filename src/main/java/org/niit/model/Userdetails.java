package org.niit.model;




import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="Userdetails")
@Component
public class Userdetails implements Serializable  {
	private static final long serialVersionUID = 4657462015039726030L;
@Id
private String userid;
	private String username;
	
	private String fullname;
	private String email;
	
	
	private String contact;
	
	
	private String password;
	
	
	private String Role;
	
	private Boolean enabled;
	
	

	   /* @OneToOne
	    @JoinColumn(name = "cartId")
	    @JsonIgnore
	    private Cart cart;*/
	public String getUserid() {
		return userid;
	}





	


	/*public Cart getCart() {
		return cart;
	}


	public void setCart(Cart cart) {
		this.cart = cart;
	}*/


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getFullname() {
		return fullname;
	}


	public Userdetails() {
	
	}
	
	
	public Boolean getEnabled() {
		return enabled;
	}


	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}


	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	
	
	
	public String getFulname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
}
