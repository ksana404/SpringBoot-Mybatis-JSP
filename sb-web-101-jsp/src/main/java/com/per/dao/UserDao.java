package com.per.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.per.entity.User;

/** com.per.dao.UserDao
 * @author Administrator
 *
 */
@Mapper
public interface UserDao {

	/**
	 * @return
	 */
	List<User> find();

}
