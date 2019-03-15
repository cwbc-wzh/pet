package com.lq.pet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lq.model.User;


public class Login1 extends HttpServlet{
	DB db=new DB();
	Connection conn=db.getConn();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session=req.getSession();
		//�����ݿ�����ݽ��в�ѯ,���е�¼�ж�
		List<User> list=query();
		//���û���Ϣ�洢ΪUserinfo,��ȡ��Ϣʱ�õ��������ȴ�
		session.setAttribute("Userinfo", list);
		//��¼,���ǵ�¼���ɽ��ķ��ڹ�����
		String name=req.getParameter("name");
		String passwd=req.getParameter("passwd");
		for(User user:list){
			if(name==user.getU_name()&&passwd==user.getU_passwd()){
				//�˺�ƥ��ɹ�����¼�ɹ�
				return;
			}
		}
	}
	//��ѯ
	private List<User> query(){
		try {
			Statement stmt=conn.createStatement();
			String sql="select u_id,u_name,u_passwd,u_email from user";
			ResultSet rs=stmt.executeQuery(sql);
			List<User> list=new ArrayList<User>();
			while(rs.next()){
				int u_id=rs.getInt(1);
				String u_name=rs.getString(2);
				String u_passwd=rs.getString(3);
				String u_email=rs.getString(4);
				User user=new User("asdasd",u_name,u_passwd,u_email);
				list.add(user);
			}
			rs.close();
			stmt.close();
			conn.close();
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}	
}
