 <%@page import="com.yeon.guestbook.GuestbookVo"%>
<%@page import="com.yeon.guestbook.GuestBookDao"%>
<% 
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String password = request.getParameter("password");
String content = request.getParameter("content");
GuestbookVo vo = new GuestbookVo();
vo.setName(name);
vo.setPassword(password);
vo.setContent(content);
 GuestBookDao dao = new GuestBookDao();
dao.insert(vo);
 
response.sendRedirect("./index.jsp");
 %>
