package com.beautifulsoup.youxin.common.dto;

import java.io.Serializable;import javax.xml.ws.Response;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import com.beautifulsoup.youxin.common.enums.YouxinStateEnum;

import lombok.Getter;


/**
 * <p>Title: YouxinResponse</p>
 * <p>Description: 项目统一响应封装</p>
 * <p>Author: BeautifulSoup</p> 
 * <p>DateTime: 2018年2月1日</p>
 * @version 1.0
 */
@Getter
@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
public class YouxinResponse<T> implements Serializable{
	
	private T data;
	private int status;
	private String message;
	
	private YouxinResponse(int status) {
		this.status = status;
	}

	private YouxinResponse(T data, int status) {
		this.data = data;
		this.status = status;
	}

	private YouxinResponse(int status, String message) {
		this.status = status;
		this.message = message;
	}

	private YouxinResponse(T data, int status, String message) {
		this.data = data;
		this.status = status;
		this.message = message;
	}
	
	@JsonIgnore
	public boolean isSuccess(){
		return this.status==YouxinStateEnum.SUCCESS.getCode();
	}
	
	public static <T> YouxinResponse<T> successResponse(){
		return new YouxinResponse<>(YouxinStateEnum.SUCCESS.getCode());
	}
	
	public static <T> YouxinResponse<T> successResponse(String message){
		return new YouxinResponse<>(YouxinStateEnum.SUCCESS.getCode(), message);
	}
	
	public static <T> YouxinResponse<T> successResponse(T data){
		return new YouxinResponse<T>(data, YouxinStateEnum.SUCCESS.getCode());
	}
	
	public static <T> YouxinResponse<T> successResponse(String message,T data){
		return new YouxinResponse<T>(data, YouxinStateEnum.SUCCESS.getCode(), message);
	}
	
	public static <T> YouxinResponse<T> errorResponse(){
		return new YouxinResponse<>(YouxinStateEnum.ERROR.getCode(),YouxinStateEnum.ERROR.getMessage());
	}
	
	public static <T> YouxinResponse<T> errorResponse(String message){
		return new YouxinResponse<>(YouxinStateEnum.ERROR.getCode(),message);
	}
	
	public static <T> YouxinResponse<T> statusResponse(int code,String message){
		return new YouxinResponse<>(code, message);
	}
}
