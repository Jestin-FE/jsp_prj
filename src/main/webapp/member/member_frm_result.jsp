<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%
	String inputIdParam = request.getParameter("idInputText");
	String inputPassParam = request.getParameter("passInputText");
	String inputNameParam = request.getParameter("nameInputText");
	String inputBirthParam = request.getParameter("birthInputText");
	String inputContactParam = request.getParameter("contactInputText");
	String inputCallParam = request.getParameter("callInputText");
	
	String inputEmailLeftParam = request.getParameter("emailLeftInputText");
	String inputEmailRightParam = request.getParameter("emailRightInputText");
	
	String inputDomainParam = request.getParameter("domain");
	
	String inputZipcodeParam = request.getParameter("zipcode");
	String inputAddrParam = request.getParameter("addr");
	String inputAddr2Param = request.getParameter("addr2");
	
	String inputPrParam = request.getParameter("prInputText");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TITLE</title>
<jsp:include page="../common/jsp/external_file.jsp"/>
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
<jsp:include page="../common/jsp/header.jsp"/>
</header>
<main>
<div id="container">
inputIdParam: <%= inputIdParam%><br>
inputPassParam: <%= inputPassParam%><br>
inputNameParam: <%= inputNameParam%><br>
inputBirthParam: <%= inputBirthParam%><br>
inputContactParam: <%= inputContactParam%><br>
inputCallParam: <%= inputCallParam%><br>

inputEmailLeftParam: <%= inputEmailLeftParam%><br>
inputEmailRightParam: <%= inputEmailRightParam%><br>

inputDomainParam: <%= inputDomainParam%><br>

inputZipcodeParam: <%= inputZipcodeParam%><br>
inputAddrParam: <%= inputAddrParam%><br>
inputAddr2Param: <%= inputAddr2Param%><br>

inputPrParam: <%= inputPrParam%><br>
</div><!--container-->
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"/>
</footer>
</body>
</html>