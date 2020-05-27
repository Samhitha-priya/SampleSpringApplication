package com.example.springsecuritycustomlogin;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentsService {
	
	
	String comments_id;
	String comments_description;
	String comments_createdby;
	String comments_parentid;
	
	
	@Autowired
	CommentsRepository commentsRepository;
	
	public void postComments(Comments comments) {
		commentsRepository.save(comments);
	}
	
	public List<Comments> getAllCommments() {
		return commentsRepository.findAll();
	}

}
