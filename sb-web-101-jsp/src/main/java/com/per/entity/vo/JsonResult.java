package com.per.entity.vo;

import java.io.Serializable;

public class JsonResult implements Serializable {
	
	/**控制层对象主要负责请求和响应数据的处理，
	 * 例如，本模块首先要通过控制层对象处理请求参数，然后通过业务层对象执行业务逻辑，
	 * 再通过VO对象封装响应结果(主要对业务层数据添加状态信息)，
	 * 最后将响应结果转换为JSON格式的字符串响应到客户端。
关键代码设计与实现
定义控制层值对象（VO），目的是基于此对象封装控制层响应结果
(在此对象中主要是为业务层执行结果添加状态信息)。
Spring MVC框架在响应时可以调用相关API（例如jackson）将其对象转换为JSON格式字符串。
	 * 
	 */

	/**
	 * 
	 */
	private static final long serialVersionUID = 8800639231641162119L;
	/**状态码**/
	private int state =1;  // 1表示SUCCESS 0表示ERROR
	/**状态信息**/
	private String message ="ok";
	/**正确数据**/
	private Object data;
	public JsonResult() {}
	public JsonResult(String message) {
		this.message = message;
	}
	
	/**一般查询时调用，封装查询结果*/
	public JsonResult(Object data) {
		this.data = data;
	}

	/**一般查询时调用，封装查询结果*/
	public JsonResult(Throwable t) {
		this.state =0;
		this.message = t.getMessage();
	}




	/***/
	public int getState() {
		return state;
	}
	/**修改状态信息*/
	public void setState(int state) {
		this.state = state;
	}
	
	public String getMessage() {
		return message;
	}
	/**修改信息*/
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	
	public void setData(Object data) {
		this.data = data;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
