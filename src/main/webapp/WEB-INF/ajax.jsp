<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"  %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<style type="text/css">

#surface {
 font-family: monospace;
 border-collapse: collapse;
 font-size: 2em;
} 

h1::after {
	content: url('media/small.png')
}
</style>


<script type="text/javascript">
 window.onload = function(){	
		 let id = null;
		 let id2 = null;
		 var arr = new Array(20);
		
		 for(var i=0; i<arr.length; i++){
			 arr[i] = new Array(40);
		 }
		 
		 for(var i =0; i<arr.length; i++){
			 for(var j=0; j<arr[i].length; j++){
				 arr[i][j]=false;
			 }
		 }
	 start.onclick = function(){
		 
		 start.disabled = true;
		 clear.disabled = true;
		 
		  
		 let startTime = new Date();	
		 let foreCount = fore.innerText;
		 let cnt = counting.innerText;
		 let c = sec.innerText;
		 
		 
		id2 = setInterval(function() {
		 	c++;
		 sec.innerText = c;
		 }, 1000)
		 
	
		id = setInterval(function() {
		  // let endTime =new Date();
			
		   //sec.innerText =(endTime.getTime()-startTime.getTime())/1000;
			foreCount++;
			fore.innerText = foreCount;
	
		 	let xhr = new XMLHttpRequest();
		 	xhr.open('GET','/ajax/alpha',false)
		 	xhr.send();
		 	
		 	let alpha = JSON.parse(xhr.responseText);
		 	let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		 	td.style.color = alpha.fg;
		 	td.style.background = alpha.bg;
		 	td.innerText=alpha.ch;
		 	
		 	if(arr[alpha.line-1][alpha.column-1]== false){
		 		arr[alpha.line-1][alpha.column-1]= true;
		 		cnt++;
		 		counting.innerText=cnt;
		 	}
		 	
			if(cnt == 800){
				clearInterval(id);
				clearInterval(id2);
				start.disabled = false;
				clear.disabled = false;
			}
		 }, 10);
	 }
	 
	 clear.onclick = function(){
		 for(let i =0; i<20;i++){
			 table = document.querySelector('#surface');
			    for(let j=0; j<40;j++){
			    	table.rows[i].cells[j].style.background ='black';
			    	table.rows[i].cells[j].style.color ='black';
			    }
			}
		 fore.innerText =0;
		 counting.innerText=0;
		 sec.innerText=0;
		 c=0;
	 }
	 
	 pause.onclick = function(){
		 clearInterval(id);				
		 clearInterval(id2);
		start.disabled = false;

	 }
 } 

</script>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<button id="start">start</button>
<button id="clear">clear</button>
<button id="pause">pause</button>
<hr>
<table border="3px solid" width ="500px">
<thead>
	<th>forecount</th><th>count</th><th>second</th>
</thead>
<tbody style="text-align: right;">	
	<td id="fore">0</td><td id="counting">0</td><td id="sec">0</td>
</tbody>	
</table>
<hr>
<table id="surface" style="background: url('/media/favicon.png')">
 
 <c:forEach var="row" items="${surface}">
 	<tr>
	<c:forEach var="cell" items="${row}">
		<%-- <td style="color:${cell.fg}; background:${cell.bg};">${cell.ch}</td> --%>	
		<td style="color:black; background: black; opacity:0.3" >${cell.ch}</td>	
	</c:forEach> 	
 	</tr>
 </c:forEach>
  
</table>

</body>
</html>