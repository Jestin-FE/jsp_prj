<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="분기"%>

<%
request.setCharacterEncoding("UTF-8"); // 생성하는 parameter에 한글이 포함되어 있다면
// 요청 시에 charset을 변경하여 전송한다.
String serverName = request.getServerName();
String movePage = "eng.jsp";
String lang = "english";

// scope객체에 속성을 설정하여 값을 전달할 수 있다.
request.setAttribute("ip", request.getRemoteAddr());
if ("localhost".equals(serverName)){
	movePage="kor.jsp";
	lang = "한국어";
} // end if
%>

<%-- parameter 없이 이동 <jsp:forward page="<%= movePage %>"></jsp:forward> --%>
<%-- parameter를 생성하여 이동 (HTML Form Control을 사용하지 않고
	web parameter를 전달 --%>
<jsp:forward page = "<%= movePage %>">
	<jsp:param value="<%= lang %>" name = "language"></jsp:param>
</jsp:forward>
