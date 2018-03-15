package com.beautifulsoup.youxin.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <p>Title: IndexController</p>
 * <p>Description: 展示系统首页</p>
 * <p>Author: BeautifulSoup</p> 
 * <p>DateTime: 2018年3月15日</p>
 * @version 1.0
 */
@Controller
public class IndexController {
	
	
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	
}
