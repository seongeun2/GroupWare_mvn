//2번째 선택 시
function apPop(){
	var w = 1000;
	var h = 600;
	window.open("/GroupWare/orgChart/insa?app=1", "경로지정",'width='+w+',height='+h+',scrollbars=no,status=1')

}

//3번째 선택시
function apPop2(){
	var w = 1000;
	var h = 600;
	window.open("/GroupWare/orgChart/insa?app=2", "경로지정",'width='+w+',height='+h+',scrollbars=no,status=1')

}

// 체크박스 선택 시
function check(name2,id2,app){
	//2번째 결재자
	if(app==1){
		window.opener.document.getElementById("name22").innerHTML = name2;	
		opener.document.getElementById("id2").value = id2;
		opener.document.getElementById("name2").value = name2;
	//3번째결재자
	}else if(app=2){
		window.opener.document.getElementById("name33").innerHTML = name2;	
		opener.document.getElementById("id3").value = id2;
		opener.document.getElementById("name3").value = name2;
	}
	window.close();
}


//반려
function docReturn(num){
	location.href ="docReturn?docNo="+num;

}

/* 3번째 결재자를 확인합니다. */
function IsThird(result) {
   var third = document.getElementById("third_approval");
   var doc = document.getElementById("doc");
   
   if(result == "") {
      /* 하드 코딩 했습니다. */
      doc.style.width = "70%"; 
      third.parentNode.removeChild(third);
   }
}

/*body의 min width를 설정해서 찌부되지 않도록 합니다.*/
function SetBodyMinWidth() {
	var minWidth = "960px";
	var bodies = document.getElementsByTagName("body");
	
	for(i = 0; i < bodies.length; i++) {
		bodies[i].style.minWidth = minWidth;  
	}
}

function SetView() {
	var head = document.head || document.getElementsByTagName("head")[0];
	var style = document.createElement('style');
	style.type = 'text/css';
	
	head.appendChild(style);
	
	SetColorTheme(style);
	SetGridColor();
	//SetMainMargin(style);
	SetBodyMinWidth();
	ToggleLabel();
}

/*메인 색상 테마를 설정합니다.*/
function SetColorTheme(style) {
	/*.w3-metro-light-green
	{color:#fff;background-color:#99b433}
	.w3-metro-green
	{color:#fff;background-color:#00a300}
	.w3-metro-dark-green
	{color:#fff;background-color:#1e7145}
	.w3-metro-magenta
	{color:#fff;background-color:#ff0097}
	.w3-metro-light-purple
	{color:#fff;background-color:#9f00a7}
	.w3-metro-purple
	{color:#fff;background-color:#7e3878}
	.w3-metro-dark-purple
	{color:#fff;background-color:#603cba}
	.w3-metro-darken
	{color:#fff;background-color:#1d1d1d}
	.w3-metro-teal
	{color:#fff;background-color:#00aba9}
	.w3-metro-light-blue
	{color:#000;background-color:#eff4ff}
	.w3-metro-blue
	{color:#fff;background-color:#2d89ef}
	.w3-metro-dark-blue
	{color:#fff;background-color:#2b5797}
	.w3-metro-yellow
	{color:#fff;background-color:#ffc40d}
	.w3-metro-orange
	{color:#fff;background-color:#e3a21a}
	.w3-metro-dark-orange
	{color:#fff;background-color:#da532c}
	.w3-metro-red
	{color:#fff;background-color:#ee1111}
	.w3-metro-dark-red
	{color:#fff;background-color:#b91d47}*/
	
	var mainColor = '#E9E3FF';
	var hoverColor = '#FFCCFF';
	
	var mainColorCss = ".main_color_theme {color:#fff;background-color:#2b5797}";
	
	var hoverColorCss = ".main_color_theme:hover {color:#fff;background-color:#2d89ef}";

	if(style.styleSheet) {
		style.styleSheet.cssText += mainColorCss;
		style.styleSheet.cssText += hoverColorCss;
	} else {
		style.appendChild(document.createTextNode(mainColorCss));
		style.appendChild(document.createTextNode(hoverColorCss));
	}
	
	SetButtonEffect(style, hoverColor);
}

/*문서 색상 테마를 설정합니다.*/
function SetApprovalColorTheme() {
	var color = '#eaeaea';
	
	var colorElements = document.getElementsByClassName("approval_color_theme");
	
	for(i = 0; i < colorElements.length; ++i) {
		colorElements[i].style.backgroundColor = color;
	}
}

// 마우스 오버 할때 색상을 지정합니다.
function SetGridHoverColor(element) {
	/*
	1 - 문서작성
	2 - 결재현황
	3 - 진행문서 
	4 - 결재대기 
	5 - 쪽지함 쓰기
	6 - 
	7 - 받은 쪽지
	8 - 보낸 쪽지
	*/
	var colors = ['#009688', '#00bcd4', '#9F81F7', '#f75044', '#ff7d2d', '#c4a15a', '#80cc28', '#ffc40d'];
	var white = '#ffffff';
	
	var items = document.getElementsByClassName('grid-menu-item');
	
	for (i = 0; i < items.length; i++) {
		if(items[i] == element) {
			items[i].style.backgroundColor = colors[i];
		}
	}
}

function SetGridColor() {
	var items = document.getElementsByClassName('grid-menu-item');
	var backcolor = '#2b5797';
	var color = '#fff';
	
	for (i = 0; i < items.length; i++) {
		items[i].style.backgroundColor = backcolor;
		items[i].style.color = color;
	}
}

/*화면의 좌우 padding을 설정합니다.*/
function SetMainMargin(style) {
	var margin = '0px';
	var width = document.body.clientWidth;
	
	console.log(width);
	
	if(width > 1600)
		margin = '200px';
	
	var newStyle = ".w3-main {margin-left: {0}; margin-right: {1};}".format(margin, margin); 
	
	if(style.styleSheet) {
		style.styleSheet.cssText += newStyle;
	} else {
		style.appendChild(document.createTextNode(newStyle));
	}
}

/*
function _SetMainMargin() {
	var style = document.getElementsByTagName('style')[0];
	
	if(!style) {
		style = document.createElement('style');
		style.type = 'text/css';
	}
		
	SetMainMargin(style);
}
*/

/*기안서, 휴가신청서, 지출결의서 내부의 좌우 margin을 설정합니다.*/
function SetApprovalMargin() {
	var innerMargin = document.getElementById("approval_inner_margin");
	
	var margin = '24px';
	var width = document.body.clientWidth;
	
	if (width > 1600)
		margin = '200px';
	
	innerMargin.style.marginLeft = margin;
	innerMargin.style.marginRight = margin;
}

/*가로가 1280 이하가 되면 아이콘과 라벨이 겹치지 않게 하기 위해서 라벨을 숨깁니다.*/
function ToggleLabel() {
	var width = document.body.clientWidth;
	var menuLabels = document.getElementsByClassName('toggle_label_small');
	var flag = "visible";
	
	if(width < 1280)
		flag = "hidden";
	else
		flag = "visible";
	
	for(i = 0; i < menuLabels.length; i++) {
		menuLabels[i].style.visibility = flag;  
	}
}

function SetApprovalBorder() {
	var borderElement = document.getElementById("approval_border");
	borderElement.classList.add("w3-bottombar", "w3-topbar", "w3-leftbar", "w3-rightbar");
}

/*문서는 최소 크기 이하로 작아지지 않도록 제어합니다.*/

/*W3-button의 효과를 재정의해서 사용합니다.*/
function SetButtonEffect(style, hoverColor) {
	// SetColorTheme의 값으로 설정합니다.
	var newStyle = ".w3-button:hover {background-color: {0};}".format(hoverColor); 
	
	if(style.styleSheet) {
		style.styleSheet.cssText += newStyle;
	} else {
		style.appendChild(document.createTextNode(newStyle));
	}
}

/*문서용 color theme와 margin을 적용합니다.*/ 
function InitApprovalTheme() {
	SetApprovalBorder();
	SetApprovalMargin();
	SetApprovalColorTheme();
}

String.prototype.format = function() {
    var args = arguments;
    return this.replace(/{(\d+)}/g, function(match, number) { 
      return typeof args[number] != 'undefined'
        ? args[number]
        : match
      ;
    });
  };