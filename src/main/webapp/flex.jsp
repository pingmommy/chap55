<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>flex.jsp</title>
<style type="text/css">

ul{
	border: 1px solid lightblue;
	display: flex;
	list-style: none;
	padding: 0;
	font-size: 20pt;
	height: 90px;
	
	}

li{
	border: 1px solid lightblue;
	width: 100px;
	padding: 1em;
	text-align: center;
	flex-shrink: 0;
	
}

a{
	text-decoration: none;
	color: gray;
}

li:hover {
 	text-shadow: 10px 10px 10px;
}

</style>
</head>
<body>
<h1>flex 속성 이해</h1>
<hr>
<ul>
	<li><a target="content" href="/alpha/fill">fill</a></li>
	<li><a target="content" href="/alpha/cross">cross</a></li>
	<li><a target="content" href="/alpha/race">race</a></li>
	<li><a target="content" href="/alpha/zigzag">zigzag</a></li>
	<li><a target="content" href="/dept/list">dept</a></li>
	<li><a target="content" href="/emp/list">emp</a></li>
</ul>
<hr>
<iframe src="/alpha/fill" name="content">
iframe을 지원하지 않는 않는 브라우저는 이 글이 보입니다. 

</iframe>
</body>
</html>