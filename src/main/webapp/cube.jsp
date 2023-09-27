<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube.jsp</title>
<style type="text/css">

.perspective {
	 border: 20px dashed plum;
	 display: inline-block;
	 margin: 200px 0px 0px 200px;
	
}

.cube {
	border: 10px dotted gray;
	display: inline-block;
}

.base {
	border: 2px solid pink;
	width:200px;
	height: 200px;
	background: pink;
	text-align: center;
	font-size: 2em;
	line-height: 200px;	
}


</style>
</head>
<body>
<h2>CSS 3D 응용 큐브 만들기</h2>
<hr>
<section class="perspective">
	<article class="cube">
		<div class="base">Base</div>	
	</article>
</section>
</body>
</html>