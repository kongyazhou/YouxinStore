package com.beautifulsoup.youxin.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beautifulsoup.youxin.mapper.YxUserMapper;
import com.beautifulsoup.youxin.pojo.YxUser;
import com.beautifulsoup.youxin.service.YxUserService;

@Service
public class YxUserServiceImpl implements YxUserService {
	
	@Autowired
	private YxUserMapper userMapper;
	
	@Transactional
	@Override
	public YxUser selectByPrimaryKey(Long id) {
		YxUser user=userMapper.selectByPrimaryKey(id);
		if (null!=user) {
			return user;
		}
		return null;
	}

}
