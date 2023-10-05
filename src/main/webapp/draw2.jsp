<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">

body{
 height: 1000px;
 background: lightgray;
}


div{
	box-sizing:border-box;
	border:1px solid red;
	position: fixed;
	bottom:-100px;
	width: 100%;
	height: 100px;
	transition: bottom 2s;
}

#handle {
	border:1px solid blue;
	position: absolute;
	bottom:100px;
	box-sizing: border-box;
	width: 100px;
	text-align: center;
}


</style>
<script type="text/javascript">

window.onload = () =>{
	
		let d = document.querySelector('div');
		let isOpen = false;
	
		handle.onclick = e =>{
			console.log("btn..");
			if(!isOpen)
				d.style.bottom="0px";
			else 
				d.style.bottom="-100px";
				
			
		isOpen=!isOpen;
	}
	
	
}

</script>

</head>
<body>
<h1>drawer만들기</h1>
<hr>
	<div>
	box1
	<span id="handle">손잡이</span>
	</div>
</body>
</html>