/**
 * 
 */

 window.onload = () =>{
	 
	 /**@type {HTMLTableElement} */
	 let surface = document.querySelector('#surface');
	 
	 surface.onmousedown = e =>  e.preventDefault();
	 
	 surface.oncontextmenu = e => e.preventDefault();
	 
	 /**@type {HTMLButtonElement} */
	 let btncreate = document.querySelector('#btncreate');
	 
	 btncreate.onclick = e => {
		let zigzag1 = new ZigZag();
		//let zigzag2 = new ZigZag();
		
		
		zigzag1.run();	
		//zigzag2.run();
		zigzag1.run1();	
	     
	 }
 }
 
 let Alpha = {
	line: 0, 
	column:0, 
	fg: 0,
	bg: 0,
	ch:''
 };
 
 
 class ZigZag{
	 
	 constructor(){
		 /**@type{HTMLTableElement} */
		 this.surface = document.querySelector('#surface');
		 this.speed = Math.random()*200+10;
		 /*this.direction = parseInt(Math.random()*4);*/

		 this.direction = Direction.values[parseInt(Math.random()*4)];
		 
		 this.step =0;
		 
		 
	 }
	 
	 async run(){
		 let response = await fetch('/alpha/data');
	     /**@type{Alpha} */
	     this.alpha = await response.json();
	     console.log(this.alpha);
	     
	     this.show();
	    
	  /*  for(;;){
			 await sleep(100);
			 
			 this.move();
			    
		 }*/
	     
	 }
	 
	 async run1(){
		 let response = await fetch('/alpha/data');
	     /**@type{Alpha} */
	     this.alpha1 = await response.json();
	     console.log(this.alpha1);
	     
	     //this.show();
	    
	   /* for(;;){
			 await sleep(200);
			 
			 this.move();
			    
		 }*/
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-2];
		 td.style.color = this.alpha1.fg;
		 td.style.background = this.alpha1.bg;
		 td.innerText = this.alpha1.ch;
	     
	 }
	 
	 
	 show(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color = this.alpha.fg;
		 td.style.background = this.alpha.bg;
		 td.innerText = this.alpha.ch;
	 }
	 
	 hide(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color ='green';
		 td.style.background ='green';
	 }
	 
	 move(){
	         this.hide();
	         
	         switch(this.direction){
				case Direction.TOP : //up
					this.alpha.line--;
					
					break;						 
				case Direction.RIGHT : //right
				 	this.alpha.column++;
					break;
				case Direction.BOTTOM : //down
					this.alpha.line++;
					break;
				case Direction.LEFT : //left
					this.alpha.column--;
					break;
			    }
			    
			 
			    
		
			 this.step++;
			 
			  if(this.step == 5){
				  this.direction = Direction.values[parseInt(Math.random()*4)];
				  this.step=0;
			  }
			 
			 if(this.alpha.column == 1)
				 this.direction = Direction.RIGHT;
			 else if(this.alpha.column == 40)
			 	this.direction = Direction.LEFT;
			else if(this.alpha.line == 1)
			 	this.direction = Direction.BOTTOM;
			else if(this.alpha.line == 20)
			 	this.direction = Direction.TOP;
			
			 this.show();
			      		 
			
	 }
	 
 }
 
 
 function sleep(millis){
	 
	 return new Promise(function(resolve, reject){
		 setTimeout(resolve,millis)
	 });
 }
 
const Direction = {
	 TOP    : 'TOP',
	 RIGHT  : 'RIGHT',
	 LEFT   : 'LEFT',
	 BOTTOM : 'BOTTOM',
	 
	 values : ['TOP','RIGHT','BOTTOM','LEFT']
	 
 };
 
 /*make read only*/
 Object.freeze(Direction);
 
 
/* 아래의 코드는 테스트용. 값을 넣었을 때 에러는 나지만 웹에서 값의 변경은 발생하지 않는다.
 Direction.TOP=100;
 console.log(Direction.TOP);*/