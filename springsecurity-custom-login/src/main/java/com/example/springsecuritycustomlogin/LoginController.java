package com.example.springsecuritycustomlogin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@Autowired UserService userService;
	
	@Autowired CommentsService commentsService;
	
	@RequestMapping(value="/login")
	public String loginpage() {
		System.out.println("login:::::::::::");
		return "login";
	}
	
	@RequestMapping(value="/Register"  ,method=RequestMethod.GET)
	public String Register() {
		System.out.println("Register:::::::::");
		return "Registration";
	}

	@RequestMapping(value="/saveNewUserDetails" )
	public String saveNewUserDetails(@ModelAttribute("userinfo") User userinfo) {
		
		System.out.println("UserInfo::"+userinfo.getEmail());
		System.out.println("UserInfo::"+userinfo.getPassword());
		System.out.println("UserInfo::"+userinfo.getUsername());
		userService.addUser(userinfo);
		
		return "login";
		
	}
	
	@RequestMapping(value="/validateUser" ,method=RequestMethod.GET )
	public String ValidateUser(@RequestParam("uname") String name,@RequestParam("psw") String pass ,ModelMap model) {
	
		
		List<User> userList=userService.getAllUsers();
		List<Comments> commentsList=commentsService.getAllCommments();
		
		ArrayList<String> commentsLst=new ArrayList<String>();
		
		for(int i=0;i<commentsList.size();i++) {
			
			commentsLst.add(commentsList.get(i).getComments_description());
		}
		
		
		
		for(int i=0;i<userList.size();i++) {
			
			if(name.equalsIgnoreCase(userList.get(i).getUsername())) {
				if(pass.equalsIgnoreCase(userList.get(i).getPassword())) {
					System.out.println("in IFF Block");
					model.addAttribute("name",userList.get(i).getUsername());
					model.addAttribute("userId",userList.get(i).getUserid());
					model.addAttribute("commentsList",commentsLst);
					return "AddComments";
							
				}
				else {
					model.addAttribute("message","Incorrect UserName or Password!");
					return "login";
				}
			}
			
		}
		model.addAttribute("message","Login Failed!");
		return "login";
	}
	
	@RequestMapping(value="/postComment", method = RequestMethod.POST)
	public String postComment(@ModelAttribute("postCommentsForm") Comments comments) {
		System.out.println("getComments_createdby::"+comments.getComments_createdby());
		System.out.println("getComments_description::"+comments.getComments_description());
		commentsService.postComments(comments);
		return "";
	}
	
	
}
