package com.beautifulsoup.youxin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.beautifulsoup.youxin.pojo.YxUser;
import com.beautifulsoup.youxin.service.YxUserService;

@Controller
@RequestMapping("/user/")
public class YxUserController {
	
	/*@Autowired
	private YxUserService yxUserService;
	
	@RequestMapping(value="getone",method=RequestMethod.GET)
	@ResponseBody
	public YxUser findUserById(@RequestParam(value="id",defaultValue="61")Long id){
		return yxUserService.selectByPrimaryKey(id);
	}*/
	
	
}
