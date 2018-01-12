package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
            //改过后的名字=uuid随机生成的文件名称+文件后缀名  
            String newName = UUID.randomUUID().toString().replaceAll("-","") + 
            		itemfile.getOriginalFilename().substring(itemfile.getOriginalFilename().lastIndexOf("."));
            System.out.println(newName);
            String path="D:/personal/"+newName;
            //判断存储的目录文件夹是否存在，不存在则创建
            File dirFile = new File("D:/personal");
            if (!dirFile.exists()) {
            	dirFile.mkdirs();
			}
            File newFile=new File(path);
            //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
            itemfile.transferTo(newFile);
            //虚拟路径
            String nPath="/photo/"+newName;
            photoDao.savePhotoByAlbumId(itemfile.getOriginalFilename(), nPath, path,albumId);
        	
		}  
        long  endTime=System.currentTimeMillis();
        System.out.println("运行时间："+String.valueOf(endTime-startTime)+"ms");
        map.put("result", true);
        return map; 
    }
    //通过Id获取album信息
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
    
    //修改相册名
    @RequestMapping(value="editAlbumById",method=RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> editAlbumById(@RequestParam("id")Integer albumId,@RequestParam("albumName")String albumName){
    	Map<String,Object> map = new HashMap<String,Object>();
    	albumDao.updateAlbumById(albumId, albumName);
    	map.put("result", true);
    	return map;
    }
    
    //删除album
  	@RequestMapping(value="/deleteAlbumById",method={RequestMethod.POST})
  	@ResponseBody
  	public Map<String,Object> deleteAlbumById(@RequestParam("id")Integer albumId){
  		Map<String,Object> map = new HashMap<String,Object>();
  		List<String> ListRealPath = photoDao.getPhoByAlbumId(albumId);
  		Boolean result = albumDao.deleteAlbumById(albumId);
  		if (result==false) {
  			map.put("result", result);
  	  		return map;
		}
  		for (String rPath:ListRealPath) {
  			File file = new File(rPath);
  			file.delete();
		}
  		map.put("result", result);
  		return map;
  	}
  	
  	//删除photo
  	@RequestMapping(value="/deletePhoByPath",method={RequestMethod.POST})
  	@ResponseBody
  	public Map<String,Object> deletePhoByPath(@RequestParam("path")String photoPath){
  		Map<String,Object> map = new HashMap<String,Object>();
  		//通过虚拟路径获取照片真实路径
  		String rPath = photoDao.getRealPath(photoPath);
  		Boolean result = photoDao.deletePhoByPath(photoPath);
  		if (result == false) {
			map.put("result", result);
			return map;
		}
  		File file = new File(rPath);
  		//删除服务器中的文件
  		Boolean resp =  file.delete();
  		System.out.println(resp);
  		map.put("result", result);
  		return map;
  	}
}
