//�׸�, ���� ����
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){	//�濵���� �μ�
        addOption('�λ���', targetE);
        addOption('ȸ����', targetE);
        addOption('��������', targetE);
    }
    else if(val == '2'){ //���� �μ�
        addOption('����1��', targetE);
        addOption('����2��', targetE);
    }
    else{	//������ �μ�
    	addOption('������1��', targetE);
        addOption('������2��', targetE);
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