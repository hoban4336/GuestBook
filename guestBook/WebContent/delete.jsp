<%@page import="com.yeon.guestbook.GuestBookDao"%>
<%@page import="com.yeon.guestbook.GuestbookVo"%>
<%
request.setCharacterEncoding("UTF-8");

String num = request.getParameter("no");
int no = Integer.parseInt(num);
String password = request.getParameter("password");

GuestbookVo gvo = new GuestbookVo();
gvo.setNo(no);

GuestBookDao dao = new GuestBookDao();
dao.delete(gvo);

response.sendRedirect("./index.jsp");
%>