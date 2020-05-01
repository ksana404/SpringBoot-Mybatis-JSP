package com.per.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.per.dao.UserDao;
import com.per.entity.User;
import com.per.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> finds() {
		
	List<User> list = userDao.find();
		return list;
	}

}
