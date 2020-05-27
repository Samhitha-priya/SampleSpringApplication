package com.example.springsecuritycustomlogin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	String message="";
	@Autowired UserRepository userRepository;

	public void addUser(User userinfo) {
		// TODO Auto-generated method stub
		userRepository.save(userinfo);
	}
	
	public List<User> getAllUsers() {
		return userRepository.findAll();
	}

	public String getMessage() {
		// TODO Auto-generated method stub
		return message;
	}

	public void setMessage(String message) {
		// TODO Auto-generated method stub
		
		this.message=message;
		
	}
	
	

}
