package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.MemberDataBean;
import model.NoticeDataBean;

import org.apache.ibatis.session.SqlSession;

public class NoticeDBMybatis extends MybatisConnector {
	
	/*private final String namespace = "notice.mybatis";
	private static NoticeDBMybatis instance = new NoticeDBMybatis();
	
	public static NoticeDBMybatis getInstance() { return instance; }
	
	SqlSession sqlSession;
	
	//get User information by userid
	public MemberDataBean getUser(String userid) {
		sqlSession = sqlSession();
		
		return sqlSession.selectOne(namespace + ".getUser", userid);
	}
	//create Notice ID
	public int createNid() { return getMaxNid() +1; }
	
	//get MAX NID
	public int getMaxNid() {
		sqlSession = sqlSession();
		int max = sqlSession.selectOne(namespace + ".getMaxNid");
		sqlSession.close();
		
		return max;
	}
	
	//select Notice List SENT(fromid) 
	public List fromList(int sabun) {
		sqlSession = sqlSession();
		
		List fromList = new ArrayList();
		fromList = sqlSession.selectList(namespace + ".fromList", sabun);
		sqlSession.close();
		return fromList;
	}
	
	//select Notice List RECEIVED(toid) 
	public List<NoticeDataBean> toList(int sabun) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		map.put("sabun",  sabun);
		
		List nlist = new ArrayList<NoticeDataBean>();
		nlist = sqlSession.selectList(namespace + ".toList", map);
		sqlSession.close();
		return nlist;
	}
	
	//select Notice in Detail
	public NoticeDataBean detail(int nid) {
		NoticeDataBean notice = new NoticeDataBean();
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		map.put("nid", nid);
		
		notice = sqlSession.selectOne(namespace + ".detail", map);
		sqlSession.close();
		
		return notice;
	}
	
	//insert Notice
	public void insert(NoticeDataBean notice) {
		sqlSession = sqlSession();
		
		int newNid = createNid();
		notice.setNid(newNid);
		sqlSession.insert(namespace + ".insert", notice);
		sqlSession.commit();
		sqlSession.close();
	}
	
	//delete Notice
	public void delete(int[] nids) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		
		for (int nid : nids) {
			sqlSession.delete(namespace + ".delete", nid);
		}		
		sqlSession.commit();
		sqlSession.close();
	}*/
}
