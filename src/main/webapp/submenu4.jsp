<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submenu3.jsp</title>
<link rel="stylesheet" href="/css/cube.css">
<style type="text/css">
nav {
/*  border: 5px dashed yellow;
 */}

ul{
/*  border: 2px solid red;
 */ margin: 0px;
 
 
}

ol{
/*  border: 2px solid blue;
 */}

li{
/*  border: 2px solid green;
 */}

li>div {
/*  border: 4px dotted gray; */
 
}

/* <a>태그는 인라인태그임. */
li>a {
 /* border: 4px dotted purple; */
 padding: 5px;
 display: inline-block;
 font-size: 15px;
  text-decoration: none;
  color: black;
 
}


.menu-title {
 	padding: 5px;
 	font-size: 20px;
 	font-weight: bold;
 	color: black;
 	
}

/* .menu-title:hover + .sub-menu {
	display: block;
} 글자를 벗어나면 다시 하위 메뉴가 사라져서 선택할 수 없다. */



.menu {
	display: flex;
	list-style: none;
	align-items:flex-start;
	position: fixed;
	width: 80%;
	top:10px;
	left: 10px;
}

/* login만 왼쪽으로 따로 떨어지게 레이아웃을 짰는데, fixed를 주었더니 계획했던 레이아웃이 적용되지 않았다. fixed는 문서를 벗어나서 절대적으로 고정되는 것을 
의미하기 때문에 고정되는 화면의 크기를 지정해주어야 한다. 그래서 width:80%를 주었다. */

.menu-item {
	/* float: left; ->예전에는 수평메뉴를 만들 때 float으로 했다.*/
	width: 200px;
	/* min width: 200px; */
	flex-shrink: 0;
	background: gray;
 	
	
}
.menu-item:hover> .menu-title {
	text-shadow: 10px 10px 5px pink;

}

.menu-item:hover> .sub-menu {
	display: block;
}


.menu-item:last-child {
	margin-left:auto;
	margin-right:10px;
}

.sub-menu {
	display:none;
	list-style: none;

}


.sub-item{

}

.sub-item:hover >a{
  background: lightpink;
 
}


</style>

<script type="text/javascript">

</script>
</head>
<body>
<h1>submenu 만들기</h1>		
<hr>
<nav>
<ul class="menu">
	<li style="padding: 0px 20px;">
		 <section class="perspective">
		<article class="cube">
			<div class="base">Base</div>	
			<div class="base front">front</div>	
			<div class="base back">back</div>	
			<div class="base left">left</div>	
			<div class="base right">right</div>	
			<div class="base top">top</div>	
			<div class="base bottom">bottom</div>	
		</article>
	</section>
	</li>
	<li class="menu-item">
		<div class="menu-title">Alpha</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/alpha/fill">fill</a></li>
			<li class="sub-item"><a target="content" href="/alpha/cross">cross</a></li>
			<li class="sub-item"><a target="content" href="/alpha/race">race</a></li>
			<li class="sub-item"><a target="content" href="/alpha/zigzag">zigzag</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Animation</div>
		<ol class="sub-menu">
			<li class="sub-item"> <a target="content" href="/ani/fill"">ani_fill</a></li>
			<li class="sub-item"> <a target="content" href="/ani/cross"">ani_cross</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">React</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/react/fill">fill</a></li>
			<li class="sub-item"><a target="content" href="/react/cross">cross</a></li>
			<li class="sub-item"><a target="content" href="/react/race">race</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Employee</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/dept/list">dept</a></li>
			<li class="sub-item"><a target="content" href="/emp/list">emp</a></li>
			<li class="sub-item"><a target="content" href="/salgrade/race">salgrade</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">City</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/city/list">city</a></li>
			<li class="sub-item"><a target="content" href="/country/list">country</a></li>
			<li class="sub-item"><a target="content" href="/language/list">language</a></li>
			<li class="sub-item"><a target="content" href="/search">search</a></li>
		</ol>
	</li>
	<li class="menu-item">
	    <div class="menu-title">Login</div>
	</li>
</ul>
</nav>
<hr>

<iframe name="content" 
        sendbox="allow-same-origin"
        height="1000px"
        width="100%"
        >

</iframe>
	
</body>
</html>