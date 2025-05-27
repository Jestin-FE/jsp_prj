<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
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
<%
String idTxt = request.getParameter("idTxt");
String pwTxt = request.getParameter("pwTxt");
String nameTxt = request.getParameter("nameTxt");
String birthday = request.getParameter("birthday");
String contactNum = request.getParameter("contactNum");
String phoneNum = request.getParameter("phoneNum");
String reception_1 = request.getParameter("reception_1");
String localPart = request.getParameter("localPart");
String domainPart = request.getParameter("domainPart");
String reception_2 = request.getParameter("reception_2");
String gender = request.getParameter("gender");
String domain = request.getParameter("domain");
String zipCode = request.getParameter("zipCode");
String address_1 = request.getParameter("address_1");
String address_2 = request.getParameter("address_2");
String selfIntro = request.getParameter("selfIntro");

out.println(idTxt);
out.println(pwTxt);
out.println(nameTxt);
out.println(birthday);
out.println(contactNum);
out.println(phoneNum);
out.println(reception_1);
out.println(localPart);
out.println(domainPart);
out.println(reception_2);
out.println(gender);
out.println(domain);
out.println(zipCode);
out.println(address_1);
out.println(address_2);
out.println(selfIntro);
%>


</div>
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"></jsp:include>
</footer>
</body>
</html>