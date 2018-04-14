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

function SetView() {
	var head = document.head || document.getElementsByTagName("head")[0];
	var style = document.createElement('style');
	style.type = 'text/css';
	
	SetColorTheme(style);
	SetMainMargin(style);
	
	head.appendChild(style);
}

/*색상 테마를 설정합니다.*/
function SetColorTheme(style) {
	var mainColor = '#E9E3FF';
	var hoverColor = '#FFCCFF';
	
	var mainColorCss = ".main_color_theme {background: {0}; transition-duration: 0.4s;}".format(mainColor);
	var hoverColorCss = ".main_color_theme:hover {background-color: {0}; transition-duration: 0.4s;}".format(hoverColor);

	if(style.styleSheet) {
		style.styleSheet.cssText += mainColorCss;
		style.styleSheet.cssText += hoverColorCss;
	} else {
		style.appendChild(document.createTextNode(mainColorCss));
		style.appendChild(document.createTextNode(hoverColorCss));
	}
	
	SetButtonEffect(style, hoverColor);
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

function _SetMainMargin() {
	var style = document.getElementsByTagName('style')[0];
	
	if(!style) {
		style = document.createElement('style');
		style.type = 'text/css';
	}
		
	SetMainMargin(style);
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

/*문서는 최소 크기 이하로 작아지지 않도록 제어합니다.*/

/*W3-button의 효과를 재정의해서 사용합니다.*/
function SetButtonEffect(style, hoverColor) {
	// SetColorTheme의 값으로 설정합니다.
	var newStyle = ".w3-button:hover {background-color: {0}; transition-duration: {1};}".format(hoverColor, '0.4s'); 
	
	if(style.styleSheet) {
		style.styleSheet.cssText += newStyle;
	} else {
		style.appendChild(document.createTextNode(newStyle));
	}
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