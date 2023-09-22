/**
 * @type {HTMLTableElement} 
 * => contentassist 도움을 받기 위해 설정. 외부 자바스크립트파일일 때만 해당.
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
		let zigzag = new ZigZag();
		
		zigzag.run();	
	     
	 }
 }
 
 /*zigzag는 Alpha를 객체로 생성, zigzag_back은 클래스로 생성; 생성이유: Alpha를 쓸 때 contextassist를 사용하기 위해*/
 class Alpha {
	line
	column 
	fg
	bg
	ch
 }
 
 
 class ZigZag{
	 
	 constructor(){
		 /**@type{HTMLTableElement} */
		 this.surface = document.querySelector('#surface');
	 }
	 
	 async run(){
		 let response = await fetch('/alpha/data');
	     /**@type{Alpha} */
	     this.alpha = await response.json();
	     console.log(this.alpha);
	     this.show();
		 
	 }
	 
	 show(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color = this.alpha.fg;
		 td.style.background = this.alpha.bg;
		 td.innerText = this.alpha.ch;
	 }
	 
	 hide(){
		 let td = this.surface.rows[this.alpha.line-1].cells[this.alpha.column-1];
		 td.style.color ='black';
		 td.style.background ='black';
	 }
	 
	 
	 
 }