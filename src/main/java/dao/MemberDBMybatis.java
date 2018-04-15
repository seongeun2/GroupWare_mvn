package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.BoardDataBean;
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
		int emnum = sqlSession.selectOne(namespace+".getNextNumber",article);
		System.out.println("Sequence==========" + emnum);
		article.setEmnum(emnum);
		sqlSession.insert(namespace+".insertEmployee",article);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	//프로필사진 가져오기
		public String getprofile(String id) {
			sqlSession = sqlSession();
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			String profile = sqlSession.selectOne(namespace+".getprofile", map) ;	
			sqlSession.close();
			return profile;
		}
	
		
		//직원 한명 데이터 가져오기
		   public MemberDataBean getEmployee (String id) {
		      sqlSession= sqlSession();
		      Map map = new HashMap();
		      map.put("id", id);
		      
		      MemberDataBean article 
		      = sqlSession.selectOne(namespace+".getEmployee",   map);
		      
		      sqlSession.commit();
		      sqlSession.close();   
		      
		      return article;   
		   }		
		
		//회원 수정
		   public int upEmployee(MemberDataBean article) {
		      sqlSession= sqlSession();
		      int chk 
		      = sqlSession.update(namespace+".upEmployee",  article);
		      System.out.println("chk=="+chk);
		      sqlSession.commit();
		      sqlSession.close();   
		      
		      return chk;
		      
		   }
		   
		   //회원 삭제
		   public int deleteArticle(int num, String passwd, 
		         String boardid) throws Exception {
		      sqlSession= sqlSession();
		      Map map = new HashMap();
		      map.put("num", num);
		      map.put("passwd", passwd);
		      map.put("boardid", boardid);
		      int chk 
		      = sqlSession.delete(namespace+".deleteArticle",   map);
		      sqlSession.commit();sqlSession.close();   
		      return chk;   }
}
