<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ include file="../common/jsp/site_config.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><c:out value="${ site_name }"/></title>
<c:import url="${ url }/common/jsp/external_file.jsp"/>
<style type="text/css">
 #container{ min-height: 600px; margin-top: 30px; margin-left: 20px}
</style>
 
<script type="text/javascript">
$(function(){

});//ready


</script>
</head>
<body>
<header data-bs-theme="dark">
<c:import url="${ url }/common/jsp/header.jsp"/>
</header>
<main>
<div id="container">
<%
// 1. 저장 directory 설정
File saveDir = new File("C:/dev/workspace/jsp_prj/src/main/webapp/upload");
// 2. 업로드 크기 설정 : 10MByte
int maxSize = 1024 * 1024 * 600;
int limitSize = 1024 * 1024 * 10;
try {
// 3. 파일 컴포넌트 객체 생성
MultipartRequest mr = new MultipartRequest(request, saveDir.getAbsolutePath(),
		maxSize, "UTF-8", new DefaultFileRenamePolicy());
String originalName = mr.getOriginalFileName("upfile");
String newName = mr.getFilesystemName("upfile");

File readFile = new File(saveDir.getAbsolutePath() + File.separator + newName);
if (readFile.length() > limitSize) { // 업로드된 파일의 크기가 제한 크기를 초과
	readFile.delete(); // 크기를 초과한 파일을 삭제
	%>
	최대 업로드 가능한 파일의 크기는 10Mbyte(10, 485, 760byte)입니다.
	<%
} else {

// 4. 파라메터 받기
String uploader = mr.getParameter("uploader");
String uploader2 = request.getParameter("uploader"); // 이 코드는 파라미터 못 받음. application/x-www-urlencoded만 가능.

//4. 파일명 받기
%>
<%-- request: <%= uploader2 %><br> --%>
MultipartRequest: <%= uploader %><br>
원본파일명 : <%= originalName %><br>
새로운 파일명 : <%= newName %><br>
<%
} // end else
} catch(Exception e) {
	e.printStackTrace();
%>
최대 업로드 가능한 파일의 크기는 10Mbyte(10, 485, 760byte)입니다.
<%
}
%>

</div>
</main>
<footer class="text-body-secondary py-5">
<c:import url="${ url }/common/jsp/footer.jsp"/>
</footer>


</body>
</html>