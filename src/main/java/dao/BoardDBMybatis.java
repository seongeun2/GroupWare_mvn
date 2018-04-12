package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.BoardDataBean;


//����: extends MybatisConnector ����������
public class BoardDBMybatis extends MybatisConnector {
   private final String namespace = "board.mybatis";
   
   private static BoardDBMybatis 
   instance = new BoardDBMybatis();
   
   private BoardDBMybatis() {}

   public static BoardDBMybatis getInstance() {
      return instance;   }

   SqlSession sqlSession;

// ================================================================================

   
   //�Խñ� �� ī����
   public int getArticleCount(String boardid) {
      int x = 0;
      sqlSession= sqlSession();
      Map<String, String> map = new HashMap<String, String>();
      map.put("boardid", boardid);
      x = sqlSession.selectOne(namespace+".getArticleCount", map);
      sqlSession.close();
      return x;

   }
   
   //�Խñ� �� ī����
   //BoaardId ������
   public int getArticleCountBoard() {
      int x = 0;
      sqlSession= sqlSession();
      Map<String, String> map = new HashMap<String, String>();
      x = sqlSession.selectOne(namespace+".getArticleCountBoard", map);
      sqlSession.close();
      return x;

   }
   
   //�Խñ� �� ī���� boardid = 1
      public int getArticleCount1() {
         int x = 0;
         sqlSession= sqlSession();
         Map<String, String> map = new HashMap<String, String>();
         x = sqlSession.selectOne(namespace+".getArticleCount1", map);
         sqlSession.close();
         return x;

      }
      
      //�Խñ� �� ī���� boardid = 1
      public int getArticleCount2() {
         int x = 0;
         sqlSession= sqlSession();
         Map<String, String> map = new HashMap<String, String>();
         x = sqlSession.selectOne(namespace+".getArticleCount2", map);
         sqlSession.close();
         return x;

      }

// ================================================================================
   
   //�Խñ� ��� ��������
   public List getArticles(int startRow, int endRow, String boardid) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("startRow", startRow);
      map.put("endRow", endRow);
      map.put("boardid", boardid);
      List li = sqlSession.selectList(namespace+".getArticles",map);
      sqlSession.close();   
      return li;   
      }
   
//��ȿ �߰�
   //�Խñ� ��� �������� (BoardId ����)
   public List getArticlesBoard(int startRow, int endRow) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("startRow", startRow);
      map.put("endRow", endRow);
      List li = sqlSession.selectList(namespace+".getArticlesboard",map);
      sqlSession.close();   
      return li;   
      }
   
   //�Խñ� ��� �������� boardid = 1 
   public List getArticles1(int startRow, int endRow) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("startRow", startRow);
      map.put("endRow", endRow);
      List li = sqlSession.selectList(namespace+".getArticles1",map);
      sqlSession.close();   
      return li;   
      }
   
   //�Խñ� ��� �������� boardid = 2
   public List getArticles2(int startRow, int endRow) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("startRow", startRow);
      map.put("endRow", endRow);
      List li = sqlSession.selectList(namespace+".getArticles2",map);
      sqlSession.close();   
      return li;   
      }
   
   //�߰�
   //���� �Խñ� ��� �������� - ��������
   /*public List getArticles2(int startRow, int endRow, String boardid) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("startRow", startRow);
      map.put("endRow", endRow);
      map.put("boardid", boardid);
      List li = sqlSession.selectList(namespace+".getArticles2",map);
      sqlSession.close();   
      return li;   
      }*/

// ================================================================================
   
   
   // ���� �Խñ� �߰�
   public void insertArticle(BoardDataBean article) {
      sqlSession= sqlSession();
       int number = sqlSession.selectOne(namespace
             +".getNextNumber",article);
       if (article.getNum()!=0){
         sqlSession.update(namespace
                +".updateRe_step",article);
         article.setRe_level(article.getRe_level()+1);
         article.setRe_step(article.getRe_step()+1);
        
       }  else {
            article.setRef(number);
            article.setRe_level(0);
            article.setRe_step(0);
          
       }    article.setNum(number);
       
       sqlSession.insert(namespace   +".insertBoard",article);
       sqlSession.commit();
       sqlSession.close();
   }
   
   // �߰�
   // ���� �Խñ� �߰�
   /*public void insertArticle2(BoardDataBean article) {
         sqlSession= sqlSession();
          int number = sqlSession.selectOne(namespace
                +".getNextNumber",article);
          if (article.getNum()!=0){
            sqlSession.update(namespace
                   +".updateRe_step",article);
            article.setRe_level(article.getRe_level()+1);
            article.setRe_step(article.getRe_step()+1);
           
          }  else {
               article.setRef(number);
               article.setRe_level(0);
               article.setRe_step(0);
             
          }    article.setNum(number);
          
          sqlSession.insert(namespace   +".insertBoard2",article);
          sqlSession.commit();
          sqlSession.close();
      }*/
   
   
   
   //�Խñ� ��������
   public BoardDataBean getArticle (int num , String boardid, String chk) {
      sqlSession= sqlSession();
      Map map = new HashMap();
      map.put("num", num);
      map.put("boardid", boardid);
      if (chk.equals("content")) {
         sqlSession.update(namespace+".addReadCount", map);
      }
      BoardDataBean article 
      = sqlSession.selectOne(namespace+".getArticle",   map);
      
      sqlSession.commit();
      sqlSession.close();   
      
      return article;   
   }
   
   
   //�Խñ� ����
   public int updateArticle(BoardDataBean article) {
      sqlSession= sqlSession();
      int chk 
      = sqlSession.update(namespace+".updateArticle",   article);
      
      sqlSession.commit();
      sqlSession.close();   
      
      return chk;
      
   }
   
   //�Խñ� ����
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
   
   
   
//class    
   
   
}