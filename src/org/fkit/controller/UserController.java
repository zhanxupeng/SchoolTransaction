package org.fkit.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.fkit.domain.User;
import org.fkit.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


@Controller
public class UserController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	@RequestMapping(value="/login")
	public ModelAndView login(
			@RequestParam("loginname")Integer loginname,
			@RequestParam("password") String password,
			ModelAndView mv,
			HttpSession session){
		System.out.println(loginname+","+password);
		User user=userService.login(loginname,password);
		if(user!=null){
			session.setAttribute("user", user);
			mv.setView(new RedirectView("main"));
		}else{
			mv.addObject("message","登录名或密码错误，请重新输入！");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	//修改信息页面
	@RequestMapping(value="/userchange")
	public ModelAndView userchange(User user,HttpSession session,ModelAndView mv,
			@RequestParam("file") MultipartFile file,HttpServletRequest request){
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
			user.setImage(str);;
		}
		System.out.println(user);
		if(user.getDollar_id()!=null){
			user.setFlag(1);
		}
		userService.updateUser(user);
		session.removeAttribute("user");
		mv.setViewName("successChange");
		return mv;
	}
	//自动寻址
	@RequestMapping(value="/{loginForm}")
	public String loginForm(@PathVariable String loginForm){
		return loginForm;
	}
	//前端分类ajax
	@RequestMapping(value="/ZoneServlet")
	public String message(HttpServletRequest request,String action,HttpServletResponse response,Model model){
		if("getProvince".equals(action)){
			response.setCharacterEncoding("GBK");
			String result="";
			//CityMap cityMap=new CityMap();
			Map<String,String[]> map=CityMap.model;
			Set<String> set=map.keySet();
			Iterator<String> it=set.iterator();
			while(it.hasNext()){
				result=result+it.next()+",";
			}
			result=result.substring(0,result.length()-1);
			model.addAttribute("message", result);
		}else if("getCity".equals(action)){
			response.setCharacterEncoding("GBK");
			String result="";
			String selProvince=request.getParameter("parProvince");
			System.out.println(selProvince+"haha");
			Map<String,String[]> map=CityMap.model;
			String[] arrCity=map.get(selProvince);
			System.out.println(arrCity[0]);
			for(int i=0;i<arrCity.length;i++){
				result=result+arrCity[i]+",";
			}
			result=result.substring(0,result.length()-1);
			model.addAttribute("message", result);
		}
		return "message";
	}
	//进入商店页面，待定，考虑删除
	@RequestMapping(value="/toshop")
	public String toShop(@RequestParam("small_id") Integer small_id){
		System.out.println(small_id);
		return "toshop";
	}
	//进入注册页面
	@RequestMapping(value="/toregister")
	public String toRegister(){
		return "register";
	}
	/*
	 * 用户退出
	 */
	@RequestMapping(value="/userquit")
	public String userquit(HttpSession session){
		session.removeAttribute("user");
		return "main";
	}
	//用户注册,已经完结
	@RequestMapping(value="/register")
	public ModelAndView saveuser(User user,ModelAndView mv,
			@RequestParam("file") MultipartFile file,
			HttpServletRequest request){
		System.out.println("Hello");
		User result=userService.selectUser(user.getLoginname());
		if(result==null){
			if(user.getDollar_id()!=null){
				user.setFlag(1);
			}else{
				user.setFlag(0);
			}
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
				user.setImage(str);;
			}
			userService.insertUser(user);
			mv.setViewName("successSave");
		}else{
			mv.addObject("message","该账号已经被注册了！");
			mv.setViewName("register");
		}
		return mv;
	}
	
}
