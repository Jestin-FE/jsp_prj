<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<label>주민번호</label> <input type="text" class="txtFirst" maxlength="6">-<input type="text" class="txtSecond" maxlength="7">
<br>
<label>결과 </label> <span class="result"></span>

<!-- jquery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
$(function() {
	const calculation = (f, s) => {
		const ArrFir = f.split('');
		const ArrSec = s.split('');

		f.forEach(e => {
			e
		});
	};

	$('.txtFirst').on('input', function() {
		const txtLen = $('.txtFirst').val().length;
		if (txtLen === 6) {
			$('.txtSecond').focus();
		}
	});
	
	$('.txtSecond').on('input', function() {
		const txtFir = $('.txtFirst');
		const txtSec = $('.txtSecond');
		const txtLenFir = txtFir.val().length;
		const txtLenSec = txtSec.val().length;
		const totalLen = txtLenFir + txtLenSec;
		if (totalLen === 13) {
			// 함수 호출하자!
		}
	});
});
</script>
</body>
</html>