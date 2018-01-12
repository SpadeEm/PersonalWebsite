package com.java.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dao.UserDao;
import com.java.entity.User;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> login(@RequestParam("userName")String userName,@RequestParam("password")String password,HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		User user = userDao.login(userName, password);
		if (user == null) {
			map.put("result", false);
			return map;
		}
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		map.put("result", true);
		return map;
	}
}
