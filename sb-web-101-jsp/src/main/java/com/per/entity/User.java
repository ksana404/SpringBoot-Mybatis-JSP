package com.per.entity;

import java.io.Serializable;

import lombok.Data;

@Data
public class User implements Serializable {

	/** com.per.entity.User
	 * 
	 */
	private static final long serialVersionUID = -6146781843029470399L;
	
	private Integer id;
	private String name;
	private Integer age;
	private String sex;

}
