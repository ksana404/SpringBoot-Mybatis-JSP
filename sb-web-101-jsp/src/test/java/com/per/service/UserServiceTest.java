package com.per.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.per.entity.User;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceTest {
	
	
	@Autowired
	private UserService userService;
	
	
	
	@Test
	public void findsTest() {
		List<User> find = userService.finds();
		for(User user:find) {
			System.out.println("user:"+user.toString());
		}
	}
	

}
