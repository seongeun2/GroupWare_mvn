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