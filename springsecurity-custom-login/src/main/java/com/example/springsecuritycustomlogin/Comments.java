package com.example.springsecuritycustomlogin;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "comments")
public class Comments implements Serializable{
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int comments_id;
	
	@Column
	private String comments_description;
	
	
	
	
	
	

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "userId", nullable = false)
    private User user;
	
	@Column
	private String comments_createdby;
	
	@Column
	private String comments_parentid;

	
	
	public int getComments_id() {
		return comments_id;
	}

	public void setComments_id(int comments_id) {
		this.comments_id = comments_id;
	}

	public String getComments_description() {
		return comments_description;
	}

	public void setComments_description(String comments_description) {
		this.comments_description = comments_description;
	}

	public String getComments_createdby() {
		return comments_createdby;
	}

	public void setComments_createdby(String comments_createdby) {
		this.comments_createdby = comments_createdby;
	}

	public String getComments_parentid() {
		return comments_parentid;
	}

	public void setComments_parentid(String comments_parentid) {
		this.comments_parentid = comments_parentid;
	}
	
}
