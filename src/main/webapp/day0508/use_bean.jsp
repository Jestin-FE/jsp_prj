<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="useBean action tag 사용"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../common/jsp/external_file.jsp"></jsp:include>
<style type="text/css">
 #container{ min-height: 600px; margin-top: 30px; margin-left: 20px}
</style>
<script type="text/javascript">
$(function() {
	
}); // ready
</script>
</head>
<body>
<header data-bs-theme="dark">
<jsp:include page="../common/jsp/header.jsp"></jsp:include>
</header>
<main>
<div id="container">

<!-- 객체 생성과 scope 설정(객체 사용 범위) -->
<jsp:useBean id="dDto" class="day0508.DataDTO" scope="page"></jsp:useBean>
<!-- setter method 호출 -->
<jsp:setProperty name="dDto" property="name" value="이장훈"/>
<jsp:setProperty name="dDto" property="myAge" value="25"/>

<!-- getter method 호출 : web browser로 출력 가능 -->
이름 : <jsp:getProperty property="name" name="dDto"/><br>
나이 : <jsp:getProperty property="myAge" name="dDto"/><br>

<%
	out.print(dDto);
	out.print(dDto);
	// <jsp:useBean으로 생성된 객체는 Java Code에서도 사용할 수 있다.
	dDto.setName("양준수");
	dDto.setMyAge(26);
%>
이름 : <%= dDto.getName() %><br>
나이 : <%= dDto.getMyAge() %><br>
<%-- <%= dDto %> --%>

</div>
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"></jsp:include>
</footer>
</body>
</html>