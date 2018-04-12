package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.OrgChartDBMybatis;
import model.MemberDataBean;

@Controller
@RequestMapping("/orgChart")
public class OrgChartContorller {
	String boardid = "1";
	String pageNum = "1";
	OrgChartDBMybatis dbPro = OrgChartDBMybatis.getInstance();
	
	@ModelAttribute
	public void addAttributes(String boardid, String pageNum) {
		if(boardid != null) this.boardid = boardid;
		if(pageNum != null && pageNum != ""){
			this.pageNum = pageNum;}
	}
	
	//조직도 
	@RequestMapping("/orgTree")
	public String orgTree(Model model) {
		return "orgChart/orgTree";
	}
	
	//총 직원 목록 
	@RequestMapping("/insa")
	public String insa(Model model, HttpServletRequest request) throws Exception {
		//검색처리
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		//문서작성 시 조직도 수신처를 가져오기 위한 페이지
		String app = request.getParameter("app");
		
		int pageSize=5;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List articleList = null;
		count = dbPro.getArticleCount();
		
		if(count > 0){
			articleList = dbPro.getArticles(startRow, endRow, keyField, keyWord);}
		System.out.println("articleList======"+articleList);
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=3;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("boardid", boardid);
		model.addAttribute("count", count);
		model.addAttribute("articleList", articleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
		model.addAttribute("app", app);
		
	
		if( app != null ) {
			return "insa";
		}else {
			return "orgChart/insa";
		}
	}
	
	//관리자 모드 - 직원 수정
	@RequestMapping("/upEmployee")
	public String upEmployee(MemberDataBean article, Model model)
			throws Exception {
		System.out.println("들어옴!!!!!");
		System.out.println("article==================="+article);
	 	int chk= dbPro.upEmployee(article); 
	 	model.addAttribute("chk", chk);
	 
		return "orgChart/updatePro";

	}
	
}