<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">
.box{
	margin:50px; 
	padding:50px;
	border: 50px solid pink;
	
	width:200px;
	height:200px;
}


#box1{
	box-sizing: content-box; 
	/*box-sizing은 디폴트가 컨텐트박스이다.(보더제외)  */
}

#box2{
	box-sizing: border-box;
	/*위에서 설정한 박스의 높이 넓이가 보더를 포함한 것으로 설정됨. 박스크기가 box1보다 작다. */
}

</style>
</head>
<body>
<h1>box모델의 이해</h1>

<div id="box1" class="box">content box</div>
<div id="box2" class="box">border box</div>
</body>
</html>