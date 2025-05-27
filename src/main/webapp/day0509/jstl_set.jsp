<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="JSTL을 사용"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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

변수의 선언
<c:set var="name" value="이장훈"/>
<c:set var="msg" value="<strong>산은 산이요 물은 물이로다.</strong>"/>

<c:set var="age" value="25"/>
<br>
<!-- <c:out value="name"></c:out> value 속성에 들어간 값을 그대로 출력한다. -->
<strong>출력</strong>
${ name }<br>
<!-- 속성값으로 출력할 때는 EL만 사용한다. -->
<c:out value="${name}"></c:out><br> <!-- 위 코드와 동일한 결과이나 가독성은 아래가 더 좋음 -->
<c:out value="${msg}"></c:out><br>
<c:out value="${msg}" escapeXml="false"></c:out><br>
<input type="text" name="name" value="${ name }"><br>
나이 : <c:out value="${age}"></c:out>
<c:remove var="age"/>

삭제 후 나이 : <c:out value="${age}"></c:out><br>


</div>
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"></jsp:include>
</footer>
</body>
</html>