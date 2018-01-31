package com.beautifulsoup.youxin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/page/")
public class PageController {
	
	
	@RequestMapping("{requestPage}")
	public String getRequestPage(@PathVariable(value="requestPage")String requestPage){
		return requestPage;
	}
	
	
	@RequestMapping("system/user/{page}")
	public String getSystemUserPage(@PathVariable(value="page")String page){
		return "system/user/"+page;
	}
	
	
	@RequestMapping("system/role/{page}")
	public String getSystemRolePage(@PathVariable(value="page")String page){
		return "system/role/"+page;
	}
	
	@RequestMapping("system/res/{page}")
	public String getSystemResPage(@PathVariable(value="page")String page){
		return "system/res/"+page;
	}
	
	@RequestMapping("system/log/{page}")
	public String getSystemLogPage(@PathVariable(value="page")String page){
		return "system/log/"+page;
	}
	
	@RequestMapping("system/data/{page}")
	public String getSystemDataPage(@PathVariable(value="page")String page){
		return "system/data/"+page;
	}
	
	
}
