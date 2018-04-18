package dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.MemberDataBean;
import model.NoticeDataBean;

import org.apache.ibatis.session.SqlSession;

public class NoticeDBMybatis extends MybatisConnector {
	
	private final String namespace = "groupWare.mybatis";
	private static NoticeDBMybatis instance = new NoticeDBMybatis();
	
	public static NoticeDBMybatis getInstance() { return instance; }
	
	SqlSession sqlSession;
	
	//get FromNoticeCount by id : sent
	public int getFromNoticeCount(String id) {
		sqlSession = sqlSession();
		
		int count = sqlSession.selectOne(namespace + ".getFromNoticeCount", id);
		sqlSession.close();
		
		return count;
	}
	
	//get ToNoticeCount by id : received
	public int getToNoticeCount(String id) {
		sqlSession = sqlSession();
		
		int count = sqlSession.selectOne(namespace + ".getToNoticeCount", id);
		sqlSession.close();
		
		return count;
	}
	
	//get User information by userid
	public MemberDataBean getUser(String userid) {
		sqlSession = sqlSession();
		
		MemberDataBean result = sqlSession.selectOne(namespace + ".getUser", userid);
		
		sqlSession.close();
		
		return result;
	}
	
	//get MAX NID
	public int getMaxNid() {
		sqlSession = sqlSession();
		int max = sqlSession.selectOne(namespace + ".getMaxNid");
		
		sqlSession.close();
		
		return max;
	}
	
	//select Notice List SENT(fromid) 
	public List fromList(int startRow, int endRow, String id) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		List fromList = new ArrayList();
		fromList = sqlSession.selectList(namespace + ".fromList", map);
		sqlSession.close();
		return fromList;
	}
	
	//select Notice List RECEIVED(toid) 
	public List<NoticeDataBean> toList(int startRow, int endRow, String id) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		List nlist = new ArrayList<NoticeDataBean>();
		nlist = sqlSession.selectList(namespace + ".toList", map);
		sqlSession.close();
		return nlist;
	}
	
	//select Notice in Detail
	public NoticeDataBean detail(int nid) {
		NoticeDataBean notice = new NoticeDataBean();
		sqlSession = sqlSession();
		
		notice = sqlSession.selectOne(namespace + ".detail", nid);
		sqlSession.close();
		
		return notice;
	}
	
	//insert Notice
	public void insert(NoticeDataBean notice) {
		sqlSession = sqlSession();
		
		notice.setSentrecv(0);
		notice.setStatus("0");
		notice.setIndate(new Date());
		int maxNid = sqlSession.selectOne(namespace + ".getMaxNid");
		notice.setNid(maxNid + 1);
		System.out.println("NID : " + notice.getNid());
		System.out.println("FromID : " + notice.getFromid());
		System.out.println("ToID : " + notice.getToid());
		System.out.println("TITLE : " + notice.getTitle());
		System.out.println("CONTENT : " + notice.getContent());
		System.out.println("STATUS : " + notice.getStatus());
		System.out.println("INDATE : " + notice.getIndate());
		System.out.println("SENTRECV : " + notice.getSentrecv());
		
		sqlSession.insert(namespace + ".insert", notice);
		sqlSession.commit();
		sqlSession.close();
	}
	
	//delete Notice
	public void delete(int nid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		sqlSession.delete(namespace + ".delete", nid);
		
		sqlSession.commit();
		sqlSession.close();
	}
}
