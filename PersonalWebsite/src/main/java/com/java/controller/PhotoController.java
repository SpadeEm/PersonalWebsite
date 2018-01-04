package com.java.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.dao.AlbumDao;
import com.java.dao.PhotoDao;
import com.java.entity.Album;

@Controller
@RequestMapping("/photo")
public class PhotoController {
	@Autowired
	private PhotoDao photoDao;
	
	@Autowired
	private AlbumDao albumDao;
	
	//获取所有相册信息，并分页
	@RequestMapping(value="/getAllAlbums", method=RequestMethod.GET)
	public String getAllAlbums(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		List<Album> listAlbum = albumDao.getAllAlbums();
    	PageInfo page = new PageInfo(listAlbum,5);
    	model.addAttribute("PageInfo", page);
		return "photo";
	}
	
	@RequestMapping(value="/addAlbum",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> addAlbum(@RequestParam("albumName")String albumName){
		Map<String,Object> map = new HashMap<String,Object>();
		if (albumName == null || albumName.length() <= 0) {
			map.put("result", false);
			return map;
		}
		Calendar c = Calendar.getInstance();
		albumDao.addAlbum(albumName, c.getTime());
		map.put("result", true);
		return map;
	}
}
