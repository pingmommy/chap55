<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>flex.jsp</title>
<style type="text/css">

ul{
	/* border: 2px solid red; */
	display: flex;
	list-style: none;
	padding: 0;
	font-size: 30pt;
	height: 90px;
	position: fixed;
	top: 0px;
	left: 0px;
	margin: 0;
	padding-inline-start:0px;
	}

li{
	/* border: 1px solid lightblue; */
	width: 120px;
	padding: 10px;
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

iframe {
	border: 1px solid red;
}

body {
	margin-top: 150px;
	border: 1px solid blue;
}

.a {
  /* border: 1px solid red; */
  width: 30px;
  height: 30px;
  position: absolute;
  perspective: 500px;
  top: 15px; 
  left: 20px;
}

.b {
 /*  border: 1px solid blue; */
  width: 30px;
  height: 30px;
  position: absolute;
  transform-style: preserve-3d;
  animation : rotate 5s infinite linear;
  top: 15px; 
  left: 20px;
}

.c {
 /*  border: 1px solid green; */
  width: 30px;
  height: 30px;
  position: absolute;
 
}

.back {
	transform : translateZ(15px);
	background: lightcyan;
}

.front {
	transform : translateZ(-15px);
	background: cornsilk;
}

.right {
  transform: rotateY(90deg) translateZ(15px);
  /* border: 1px dotted black; */
  background:lightpink;
}

.left {
 transform: rotateY(-90deg) translateZ(15px);
  /*  border: 1px dotted purple; */
   background: plum;
}

.top {
 transform:rotateX(90deg) translateZ(15px);
 background: lightgray;
}

.bottom {
 transform: rotateX(-90deg) translateZ(15px);
 background: lightsalmon;
}


@keyframes rotate {
 	from {
		
		transform: rotateX(0deg) rotateY(360deg) rotateZ(0deg);
	}
	
	to {
		transform: rotateX(360deg) rotateY(0deg) rotateZ(360deg);
	}
}

</style>
<script type="text/javascript">
function resize(){
	
	iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
	
}

window.onload = () => {
	setInterval(resize,100);
}

</script>

</head>
<body>
<hr>
<ul>
	<!-- <li><img width="50" src="/media/fubao.jpg" ></li> -->
	<li><div class="a">
		<div class="b">
		<div class="c"></div>
		<div class="c back"></div>
		<div class="c front"></div>
		<div class="c right"></div>
		<div class="c left"></div>
		<div class="c top"></div>
		<div class="c bottom"></div>
		</div>
	</div></li>
	<li><a target="content" href="/alpha/fill">fill</a></li>
	<li><a target="content" href="/alpha/cross">cross</a></li>
	<li><a target="content" href="/alpha/race">race</a></li>
	<li><a target="content" href="/alpha/zigzag">zigzag</a></li>
	<li><a target="content" href="/dept/list">dept</a></li>
	<li><a target="content" href="/emp/list">emp</a></li>
</ul>
<hr>
<iframe src="/alpha/fill" 
        name="content" 
        width="100%" 
        sendbox="allow-same-origin"
        scrolling="no"
        frameborder="0";
        onload="resize();"
        >
iframe을 지원하지 않는 않는 브라우저는 이 글이 보입니다. 

</iframe>
</body>
</html>