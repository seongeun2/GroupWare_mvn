package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.MemberDataBean;

public class OrgChartDBMybatis extends MybatisConnector{
	private final String namespace = "orgchart.mybatis";
	
	private static OrgChartDBMybatis instance = new OrgChartDBMybatis();
	
	private OrgChartDBMybatis() {
	}
	
	public static OrgChartDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	//count 가져옴
	public int getArticleCount() {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		
		x = sqlSession.selectOne(namespace+".getArticleCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		System.out.println("X======"+x);
		return x;
	}
	
	//직원목록 가져옴
	public List getArticles(int startRow, int endRow, String keyField, String keyWord) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		if(keyWord == "") {
			keyWord = null;
		}
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("keyField", keyField);
		map.put("keyWord", keyWord);
		
		List li = sqlSession.selectList(namespace+".getArticles", map);	
		System.out.println("li====="+li);
		return li;
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
