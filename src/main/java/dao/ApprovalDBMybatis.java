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
	
	
	//결재문서 작성
	public int apWrite(ApprovalDataBean approval, String id2, String id3, String user2, String user3) {
		sqlSession = sqlSession();
		int cnt = 0;
		int number = sqlSession.selectOne(namespace+".apNextNumber",approval);
		//번호가 0이 아닌경우
		if(number!=0) {
			number = number+1;
		//번호가 0인 경우			
		}else {
			number = 1;
		}
		
		approval.setDocNo(number);
		
		
		//approval 원 테이블 등록
		sqlSession.insert(namespace+".apInsert",approval);
		//경로 테이블 1번째 기안자 등록
		cnt = sqlSession.insert(namespace+".apInsert_path",approval);
		
		if(!id2.equals("")) {
			//2번째 결재자로 id와,이름을 변경 후 등록
			approval.setUserid(id2);
			approval.setUser2(user2);
			cnt = sqlSession.insert(namespace+".apInsert_path2",approval);
		}
		if(!id3.equals("")) {
			//3번째 결재자로 id와, 이름을 변경 후 등록
			approval.setUserid(id3);
			approval.setUser3(user3);
			cnt = sqlSession.insert(namespace+".apInsert_path3",approval);
		}
		
		sqlSession.commit();
		sqlSession.close();
		
		System.out.println("cnt는==="+cnt);
		return cnt;
	}
	
	
	//문서작성시 멤버정보 불러오기
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
	
	//결재현황 리스트
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
	
	//결재현황 카운트
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
	
	//진행문서 리스트
	public List apIng(int startRow, int endRow, String userid, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".apIng", map) ;		//오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return li;
	}
	
	//진행문서 카운트
	public int apIngCount(String userid, String keyField, String keyWord) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		x = sqlSession.selectOne(namespace+".apIngCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return x;
	}
	
	//결재대기 리스트
	public List apWaiting(int startRow, int endRow, String userid, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".apWaiting", map) ;		//오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return li;
	}

	//결재대기 카운트
	public int apWaitingCount(String userid, String keyField, String keyWord) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		x = sqlSession.selectOne(namespace+".apWaitingCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return x;
	}
	
	//상세페이지
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
	
	//문서처리
	public void apSave(ApprovalDataBean approval) {
		sqlSession = sqlSession();
		//2번째 결재권한자가 문서를 처리했는지 확인.
		String gubun = approval.getStamp2();
		
		System.out.println("gubun::===="+gubun);
		
		int x = 0;
				
		//경로테이블에 카운터가 몇개인지 확인에 따라 update변경
		x = sqlSession.selectOne(namespace+".apCount", approval) ;
		
		System.out.println("경로 결재 몇개인지 확인 :::::::::"+x);
		
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
	
	//결재반려
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
