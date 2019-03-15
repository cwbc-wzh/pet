package com.lq.model;

import org.springframework.stereotype.Component;

/**
* 用户实体
*
* @author jiajing
* 创建日期 2019/2/12
* @since
*/
@Component
public class User {

	/**uid*/
	private String u_id;

	/**用户名登录名*/
	private String u_name;

	/**密码*/
	private String u_passwd;

	/**email*/
	private String u_email;

	public User() {
	}

	public User(String u_id, String u_name, String u_passwd, String u_email) {
		this.u_id = u_id;
		this.u_name = u_name;
		this.u_passwd = u_passwd;
		this.u_email = u_email;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_passwd() {
		return u_passwd;
	}
	public void setU_passwd(String u_passwd) {
		this.u_passwd = u_passwd;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	@Override
	public String toString() {
		return "User{" +
				"u_id=" + u_id +
				", u_name='" + u_name + '\'' +
				", u_passwd='" + u_passwd + '\'' +
				", u_email='" + u_email + '\'' +
				'}';
	}
}
