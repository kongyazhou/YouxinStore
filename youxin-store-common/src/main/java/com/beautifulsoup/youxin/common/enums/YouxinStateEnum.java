package com.beautifulsoup.youxin.common.enums;

import lombok.Getter;

/**
 * <p>Title: YouxinStateEnum</p>
 * <p>Description: 项目所处的状态</p>
 * <p>Author: BeautifulSoup</p> 
 * <p>DateTime: 2018年2月1日</p>
 * @version 1.0
 */
@Getter
public enum YouxinStateEnum {
	
	ERROR(-1,"错误"),
	SUCCESS(0,"成功"),
	UNAUTHORIZED(1,"需要认证"),
	PERMISSION_DENIED(2,"权限拒绝");
	
	private int code;
	private String message;
	
	
	private YouxinStateEnum(int code, String message) {
		this.code = code;
		this.message = message;
	}
	
	
	
	
	
}
