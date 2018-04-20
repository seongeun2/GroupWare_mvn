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
	
	//�α���
	public int login(String id, String pw) {
		sqlSession = sqlSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		int x = sqlSession.selectOne(namespace+".login", map) ;	
		
		sqlSession.close();
		return x;
	}
	
	//�̸� ��������
	public String getname(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		String name = sqlSession.selectOne(namespace+".getname", map) ;	
		sqlSession.close();
		return name;
	}
	
	//���� ���
	public void insertEmployee(MemberDataBean article) {
		sqlSession = sqlSession();
		int emnum = sqlSession.selectOne(namespace+".getNextNumber",article);
		System.out.println("Sequence==========" + emnum);
		article.setEmnum(emnum);
		sqlSession.insert(namespace+".insertEmployee",article);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	//id�ߺ� üũ
		public int idCheck(String id) {
			sqlSession = sqlSession();
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			System.out.println(id);
			int count = 0;
			count = sqlSession.selectOne(namespace+".idcheck", map) ;	
			sqlSession.close();
			return count;
		}
	
	//�����ʻ��� ��������
	public String getprofile(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		String profile = sqlSession.selectOne(namespace+".getprofile", map) ;	
		sqlSession.close();
		return profile;
	}
		
	//��ȿ�߰�: 4/13(��)
	//�̸��� ��������
	public String getEmail(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		String email = sqlSession.selectOne(namespace+".getEmail", map) ;	
		sqlSession.close();
		return email;
	}
	
	//�����ȣ ��������
	public int getEmnum(String id) {
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		int emnum = sqlSession.selectOne(namespace+".getEmnum", map) ;	
		sqlSession.close();
		return emnum;
	}
	
	
	//���� ����
	public void updateEmp(MemberDataBean article) {
		sqlSession = sqlSession();
		sqlSession.update(namespace+".updateEmp",	article);	
		sqlSession.commit();
		sqlSession.close();	

		}
	// ��й�ȣ ����
		public int update_pw(MemberDataBean member) throws Exception{
			sqlSession = sqlSession();
			 int result = sqlSession.update(namespace+".update_pw", member);
			 sqlSession.commit();
			 sqlSession.close();	
			return result;
		}

		//��й�ȣ ã�� 1
		public int check_id(String id) {
			// TODO Auto-generated method stub
			sqlSession = sqlSession();
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			int check_id = sqlSession.selectOne(namespace+".idcheck", map) ;	
			sqlSession.close();
			return check_id;
		}

		//��й�ȣ ã�� 2
		public MemberDataBean login(String id) {
			// TODO Auto-generated method stub
			 sqlSession= sqlSession();
		      Map map = new HashMap();
		      map.put("id", id);
		      
		      MemberDataBean article 
		      = sqlSession.selectOne(namespace+".getEmployee",   map);
		      
		      sqlSession.commit();
		      sqlSession.close();   
		      
		      return article;   
		}
		 
}
