<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>overflow.jsp</title>
<style type="text/css">

body {
 	border: 10px solid purple;
}

article {
   border: 5px solid gray; 
   height: 200px;
   overflow: hidden;
}

div {
	border: 2px dotted pink;
	font-size: 2em;
	line-height: 100px;
}


</style>
</head>
<body>
<article>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<div>box4</div>
<p>div와 article은 전부 block태그입니다. 
수평은 부모의 크기 100%가 디폴트, 수직은 컨텐트의 크기에 의해 정해집니다.</p>
</article>
</body>
</html>