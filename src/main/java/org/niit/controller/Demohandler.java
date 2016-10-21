package org.niit.controller;

import org.niit.model.Userdetails;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

@Component
public class Demohandler {

	public Userdetails initFlow(){
		return new Userdetails();
	}
 
	public String validateDetails(Userdetails userdetails,MessageContext messageContext){
		String status = "success";
		if(userdetails.getUserid().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("UserName cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getContact().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("Contact cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if(userdetails.getFullname()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Full Name cannot be Empty").build());
			status = "failure";
		}
		return status;
	}
}
