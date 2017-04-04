package org.fkit.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.fkit.domain.Commodity;
import org.fkit.domain.User;
import org.fkit.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CommodityController {
	@Autowired
	@Qualifier("commodityService")
	private CommodityService commodityService;
	/*
	 * 按big_class查询
	 */
	@RequestMapping("/bigclassSelect")
	public String bigclassSelect(String bigclass,HttpServletRequest request){
		//System.out.println(bigclass);
		List<Commodity> list=commodityService.selectByBigClass(bigclass.trim());
		request.setAttribute("list",list);
		return "bigclassSelect";
	}
	/*
	 * 按small_class查询
	 */
	@RequestMapping("/smallclass")
	public String smallclass(String small_class,HttpServletRequest request){
		List<Commodity> list=commodityService.selectBySmallClass(small_class.trim());
		request.setAttribute("list", list);
		return "bigclassSelect";
	}
	/*
	 * 按commid查询
	 */
	@RequestMapping("/commidselect")
	public String commidselect(int commid,HttpServletRequest request){
		Commodity commodity=commodityService.selectByCommid(commid);
		request.setAttribute("commodity",commodity);
		return "commidselect";
	}
	/*
	 * 进入添加商品界面torent,自动寻址
	 */
	@RequestMapping("/torent")
	public String commidselect(HttpSession session){
		User user=(User)session.getAttribute("user");
		if(!(user==null)){
			return "torent";
		}
		return "loginForm";
	}
	/*
	 * 添加商品信息
	 */
	@RequestMapping("/insertcommodity")
	public String insertcommodity(
			Commodity commodity,HttpSession session,
			@RequestParam("file") MultipartFile file,
			HttpServletRequest request){
		if(!file.isEmpty()){
			String str = (new SimpleDateFormat("yyyyMMddHHmmssSSS")).format(new Date());
			String path=request.getServletContext().getRealPath("/WEB-INF/image/");
			String filename=file.getOriginalFilename();
			
		    String[] s=filename.split("\\.");
		    str=str+"."+s[1];
			
			File filepath=new File(path,filename);
			if(!filepath.getParentFile().exists()){
				filepath.getParentFile().mkdirs();
			}
			try {
				file.transferTo(new File(path+File.separator+str));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			commodity.setPicture(str);
		}
		System.out.println(commodity.getEnd_date());
		User user=(User)session.getAttribute("user");
		commodity.setUser(user);
		commodityService.insertCommodity(commodity);
		return "toshop";
	}
	/*
	 * 按用户名查询
	 */
	@RequestMapping("/useridselect")
	public String useridselect(int user_id,HttpServletRequest request){
		List<Commodity> list=commodityService.selectByUserid(user_id);
		request.setAttribute("list",list);
		return "useridselect";
	}
	
	
	
	
	
	
	
	
}
