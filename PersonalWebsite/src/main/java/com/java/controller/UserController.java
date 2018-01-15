package com.java.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	
	//登录
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> login(@RequestParam("userName")String userName,@RequestParam("password")String password,
			HttpServletRequest request,HttpServletResponse response){
		Map<String,Object> map = new HashMap<String,Object>();
		User user = userDao.login(userName, password);
		if (user == null) {
			map.put("result", false);
			return map;
		}
		HttpSession session = request.getSession();
		session.setAttribute("userName", user.getUserName());
		map.put("result", true);
		return map;
	}
	//注销
	@RequestMapping(value="/logout",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> logout(HttpServletRequest request,HttpServletResponse response){
		Map<String,Object> map = new HashMap<String,Object>();
		request.getSession().invalidate();
		map.put("result", true);
		return map;
	}
	
	//验证是否登录
	@RequestMapping(value="/LoginCheck",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> LoginCheck(HttpServletRequest request,HttpServletResponse response){
		Map<String,Object> map = new HashMap<String,Object>();
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("userName");
		if (userName==null) {
			map.put("result", false);
			return map;
		}
		map.put("result", true);
		return map;
	}
}
