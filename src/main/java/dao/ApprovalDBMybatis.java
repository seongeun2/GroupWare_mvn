package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.sun.xml.internal.bind.v2.runtime.output.StAXExStreamWriterOutput;

import model.ApprovalDataBean;


public class ApprovalDBMybatis extends MybatisConnector{
	private final String namespace = "approval.mybatis";
	
	private static ApprovalDBMybatis instance = new ApprovalDBMybatis();
	private ApprovalDBMybatis() {
	}
	public static ApprovalDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	
	//���繮�� �ۼ�
	public int apWrite(ApprovalDataBean approval, String id2, String id3, String user2, String user3) {
		sqlSession = sqlSession();
		int cnt = 0;
		int number = sqlSession.selectOne(namespace+".apNextNumber",approval);
		//��ȣ�� 0�� �ƴѰ��
		if(number!=0) {
			number = number+1;
		//��ȣ�� 0�� ���			
		}else {
			number = 1;
		}
		
		approval.setDocNo(number);
		
		
		//approval �� ���̺� ���
		sqlSession.insert(namespace+".apInsert",approval);
		//��� ���̺� 1��° ����� ���
		cnt = sqlSession.insert(namespace+".apInsert_path",approval);
		
		if(!id2.equals("")) {
			//2��° �����ڷ� id��,�̸��� ���� �� ���
			approval.setUserid(id2);
			approval.setUser2(user2);
			cnt = sqlSession.insert(namespace+".apInsert_path2",approval);
		}
		if(!id3.equals("")) {
			//3��° �����ڷ� id��, �̸��� ���� �� ���
			approval.setUserid(id3);
			approval.setUser3(user3);
			cnt = sqlSession.insert(namespace+".apInsert_path3",approval);
		}
		
		sqlSession.commit();
		sqlSession.close();
		
		System.out.println("cnt��==="+cnt);
		return cnt;
	}
	
	
	//�����ۼ��� ������� �ҷ�����
	public ApprovalDataBean apInfo(String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("userid", userid);
		System.out.println(userid);
		ApprovalDataBean approval = sqlSession.selectOne(namespace+".apInfo", map) ;
		approval.getContent();
		sqlSession.close();
		return approval;
	}
	
	//������Ȳ ����Ʈ
	public List allList(int startRow, int endRow, String userid, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		if(keyWord == "") {
			keyWord = null;
		}
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".allList", map) ;	
		sqlSession.close();
		return li;
	}
	
	//������Ȳ ī��Ʈ
	public int allListCount(String userid, String keyField, String keyWord) {
		int x=0;
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		if(keyWord == "") {
			keyWord = null;
		}
		
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		x = sqlSession.selectOne(namespace+".allListCount", map) ;	
		sqlSession.close();
		return x;
	}
	
	//���๮�� ����Ʈ
	public List apIng(int startRow, int endRow, String userid, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".apIng", map) ;		//������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return li;
	}
	
	//���๮�� ī��Ʈ
	public int apIngCount(String userid, String keyField, String keyWord) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		x = sqlSession.selectOne(namespace+".apIngCount", map) ;		//selectOne (������Ʈ) /������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return x;
	}
	
	//������ ����Ʈ
	public List apWaiting(int startRow, int endRow, String userid, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".apWaiting", map) ;		//������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return li;
	}

	//������ ī��Ʈ
	public int apWaitingCount(String userid, String keyField, String keyWord) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		x = sqlSession.selectOne(namespace+".apWaitingCount", map) ;		//selectOne (������Ʈ) /������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return x;
	}
	
	//��������
	public ApprovalDataBean viewPage(int docNum, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("docno", docNum);
		map.put("userid", userid);
		ApprovalDataBean approval = sqlSession.selectOne(namespace+".viewPage", map) ;
		approval.getContent();
		sqlSession.close();
		return approval;
	}
	
	//����ó��
	public void apSave(ApprovalDataBean approval) {
		sqlSession = sqlSession();
		//2��° ��������ڰ� ������ ó���ߴ��� Ȯ��.
		String gubun = approval.getStamp2();
		
		System.out.println("gubun::===="+gubun);
		
		int x = 0;
				
		//������̺� ī���Ͱ� ����� Ȯ�ο� ���� update����
		x = sqlSession.selectOne(namespace+".apCount", approval) ;
		
		System.out.println("��� ���� ����� Ȯ�� :::::::::"+x);
		
		if(x == 2) {
			sqlSession.update(namespace+".apSave",approval);
		}
		
		if(x == 3 && gubun == null || gubun == ""){
			sqlSession.update(namespace+".apSaveSt1",approval);
			sqlSession.update(namespace+".apSaveSt2",approval);
		}else {
			sqlSession.update(namespace+".apSave",approval);
		}
		
		sqlSession.commit();
		sqlSession.close();
	}
	
	//����ݷ�
	public void docReturn(int num, String userid) {
		sqlSession = sqlSession();
		
		Map map = new HashMap();
		
		map.put("num", num);
		map.put("userid", userid);
		
		sqlSession.update(namespace+".docReturn",map);
		
		sqlSession.commit();
		sqlSession.close();
	}
}
