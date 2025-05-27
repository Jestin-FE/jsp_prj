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

	.modal {
		z-index: 1;
		width: 100%;
		height: 100%;
		top: 0;
		left: 0;
		position: fixed;
		background-color: rgba(0, 0, 0, 0.4);
		display: none;
		
		/* modal 요소의 자식인 .modal-content를 정렬 */
		justify-content: center;
		align-items: center;
	}
	
	.modal.show {
		display: flex;
		/* display: grid; // grid 사용 시 교체 */		
	}
	
	.modal-content {
		border: 1px solid #888;
		background-color: #fff;
		width: 80%;
		max-width: 500px;
		padding: 20px;
		display: flex;
		flex-direction: column; /* 모달 내부 콘텐츠 세로 정렬. row가 기본값. */
	}
	
	.modal-header {
		display: flex;
		justify-content: flex-end;
		width: 100%;
	}
	
	.close {
		color: #aaa;
		font-size: 28px;
		font-weight: bold;
	}
	
	.close:hover {
		cursor: pointer;
		color: black;
		text-decoration: none;
	}
</style>
<script type="text/javascript">
$(function() {
/* 	$('.openModal').on('click', function() {
		$('.modal').addClass('show');
	});
	
	$('.closeBtn') */
}); // ready
</script>
</head>
<body>
<header data-bs-theme="dark">
<jsp:include page="../common/jsp/header.jsp"></jsp:include>
</header>
<main>
<div id="container">

<h1>모달 팝업</h1>
<button class="openModal">모달 열기</button>

<div class="modal">
	<div class="modal-content">
	<span class="close">&times;</span>
	<h2>모달 창</h2>
	<p>팝업 내용</p>
	</div>
</div>







</div>
</main>
<footer class="text-body-secondary py-5">
<jsp:include page="../common/jsp/footer.jsp"></jsp:include>
</footer>
</body>
</html>