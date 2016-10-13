<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String content = request.getParameter("content");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook");
%>