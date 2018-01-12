package com.java.dao;

import org.apache.ibatis.annotations.Param;

import com.java.entity.User;

public interface UserDao {
	public User login(@Param("userName")String userName,@Param("password")String password);
}	
