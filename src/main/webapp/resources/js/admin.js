//�׸�, ���� ����
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){	//�濵���� �μ�
        addOption('�λ���', '201', targetE);
        addOption('ȸ����', '202',targetE);
        addOption('��������', '203',targetE);
    }
    else if(val == '2'){ //���� �μ�
        addOption('����1��','301', targetE);
        addOption('����2��','302', targetE);
    }
    else{	//������ �μ�
    	addOption('������1��','401', targetE);
        addOption('������2��','402', targetE);
    }
}

function doTeamChange(srcE) {
	var val = srcE.options[srcE.selectedIndex].value;
	console.log(val);
}

function addOption(value, code, e){
    var o = new Option(value, code);
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