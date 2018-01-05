package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
	//上传照片
    @RequestMapping(value="/fileUploads",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object>  fileUploads(@RequestParam("id")Integer albumId,@RequestParam("file") CommonsMultipartFile[] file) throws IOException {
    	//@RequestParam("id")Integer albumId
    	Map<String,Object> map = new HashMap<String,Object>();
    	System.out.println("id："+albumId);
    	long  startTime=System.currentTimeMillis();
        for (CommonsMultipartFile itemfile: file) {
			
        	if (itemfile.getSize()<=0) {
    			return null;
    		}
            System.out.println("fileName："+itemfile.getOriginalFilename());
            String path="D:/personal/photo/"+itemfile.getOriginalFilename();
             
            File newFile=new File(path);
            //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
            itemfile.transferTo(newFile);
            //虚拟地址
            String nPath="/photo/"+itemfile.getOriginalFilename();
            photoDao.savePhotoByAlbumId(itemfile.getOriginalFilename(), nPath, albumId);
        	
		}  
        long  endTime=System.currentTimeMillis();
        System.out.println("运行时间："+String.valueOf(endTime-startTime)+"ms");
        map.put("result", true);
        return map; 
    }
    
    @RequestMapping(value="/getAlbumById",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> getAlbumById(@RequestParam("id")Integer albumId){
    	Map<String,Object> map = new HashMap<String,Object>();
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	Album album = albumDao.getAlbumById(albumId);
    	String dateString = formatter.format(album.getCreateTime());
    	map.put("createTime", dateString);
    	map.put("result", album);
    	return map; 
    }
}
