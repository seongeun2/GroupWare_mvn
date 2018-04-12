//항목, 계정 선택
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){	//경영지원 부서
        addOption('인사팀', targetE);
        addOption('회계팀', targetE);
        addOption('고객관리팀', targetE);
    }
    else if(val == '2'){ //개발 부서
        addOption('개발1팀', targetE);
        addOption('개발2팀', targetE);
    }
    else{	//디자인 부서
    	addOption('디자인1팀', targetE);
        addOption('디자인2팀', targetE);
    }
    
}

function addOption(value, e){
    var o = new Option(value);
    try{
        e.add(o);
    }catch(ee){
        e.add(o, null);
    }
}

function removeAll(e){
    for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
        e.remove(1);
    }
}