package com.etc.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

public class MyInterceptor implements HandlerInterceptor {
	private static List<String> admins = new ArrayList<>();
	static {
		admins.add("admin");
		admins.add("removegood");
		admins.add("addgoods");
		admins.add("doadd");
		admins.add("editgoods");
		admins.add("doedit");
		admins.add("getdata");
	}
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		HttpSession session = request.getSession();
		String path = request.getServletPath();
		String subpath = path.substring(path.lastIndexOf("/")+1,path.indexOf("."));
		String msg = new String();
		if(path.indexOf("login")!=-1||path.indexOf("register")!=-1){
			return true;
		}
		if(session.getAttribute("uid")!=null) {
			int identification = (Integer)session.getAttribute("identification");
			if(admins.contains(subpath)){
				if(identification==1) {
					msg = "用户无法访问管理员页面";
				}
				else {
					return true;
				}
			}
			else{
				if(identification==0) {
					msg = "管理员无法访问用户界面";
				}
				else {
					return true;
				}
			}
		}
		session.invalidate();
		request.setAttribute("msg",msg);
		response.sendRedirect("login.jsp");
		return false;
	}
}
