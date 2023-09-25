<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display.jsp</title>
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
}

#box2{
	box-sizing: border-box;
}

span{
	font-size: 3em;
	display: inline;
	border: 10px solid grey;
	/* inline 속성은 content의 크기에 따라서  
	width와 height가 결정되므로 따로 속성을 주어도 적용되지 않는다.
	width : 200px;
	height : 200px; */
	margin: 30px;
	padding: 20px;
}

section {
 	display: inline-block;
 	
 	width: 100px;
 	height: 100px;
 	border: 1px solid yellow;
 	
 	margin: 10px;
 	padding: 10px;
 	
}

</style>
</head>
<body>
<h1>display 속성 이해</h1>
<hr>
<span>NONE</span>
<span>BLOCK</span>
<span>INLINE</span>
<span>INLINE-BLOCK</span>
<hr>
<section>none</section>
<section>block</section>
<section>inline</section>
<section>inline-block</section>
<hr>
<!--div는 display가 블럭속성이어서 부모태그의 크기에 따라서 수평 100%로 차지한다. 속성이 수평수직방향 모두에 영향을 미친다. -->
<!-- inline은 텍스트 크기만큼만 width height를 차지한다. 속성이 수평방향으로만 크기에 영향을 미친다.   -->
<div id="box1" class="box">content box</div>
<hr>
<div id="box2" class="box">border box</div>
</body>
</html>