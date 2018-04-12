package dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.MemberDataBean;

public class MemberDBMybatis extends MybatisConnector{
	private final String namespace = "member.mybatis";
	
	private static MemberDBMybatis instance = new MemberDBMybatis();
	private MemberDBMybatis() {
	}
	
	public static MemberDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	//로그인
	public int login(String id, String pw) {
		System.out.println("333333333333");
		sqlSession = sqlSession();
		
		System.out.println("22222222222222");
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		int x = sqlSession.selectOne(namespace+".login", map) ;	
		
		System.out.println("33333333333"+x);
		sqlSession.close();
		return x;
	}
	
	//이름 가져오기
	public String getname(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		String name = sqlSession.selectOne(namespace+".getname", map) ;	
		sqlSession.close();
		return name;
	}
	
	//직원 등록
	public void insertEmployee(MemberDataBean article) {
		sqlSession = sqlSession();
		int number = sqlSession.selectOne(namespace+".getNextNumber",article);
		
		sqlSession.insert(namespace+".insertEmployee",article);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	
}
