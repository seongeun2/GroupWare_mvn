package controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ApprovalDBMybatis;
import model.ApprovalDataBean;

@Controller
@RequestMapping("/approval")
public class AppovalController {
	ApprovalDBMybatis dbPro = ApprovalDBMybatis.getInstance();
	String pageNum = "1";
	
	@ModelAttribute
	public void addAttributes(String pageNum) {
		if(pageNum != null && pageNum != ""){
			this.pageNum = pageNum;}
	}
	
	//기안서
	@RequestMapping("/type1")
	public String type1(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		
		return "approval/type1";
	}
	
	//휴가신청서
	@RequestMapping("/type2")
	public String type2(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		return "approval/type2";
	}

	//지출품의서
	@RequestMapping("/type3")
	public String type3(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);	
		model.addAttribute("vo", vo);
		return "approval/type3";
	}
	
	//문서작성
	@RequestMapping("/apWrite")
	public String apWrite(Model model,HttpSession session, ApprovalDataBean approval, HttpServletRequest request, HttpServletResponse response) throws IOException {
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		//2번째 결재자 id,name 
		String id2 = request.getParameter("id2");
		String name2 = request.getParameter("name2");
		//3번째 결재자 id,name
		String id3 = request.getParameter("id3");
		String name3 = request.getParameter("name3");
	
		
		approval.setInId(userid);
		
		int cnt = dbPro.apWrite(approval,id2,id3,name2,name3);
		
		model.addAttribute("approval", approval);
		
		//입력하면 메세지 창
		String msg = "sucess";
		 PrintWriter out = response.getWriter();
		 request.setCharacterEncoding("EUC-KR");
		 response.setContentType("text/html; charset=EUC-KR");
		 response.setHeader("Content-Type", "text/html;charset=EUC-KR");
		 
		    out.println("<script>alert('"+msg+"'); location.href='/GroupWare/approval/allList';</script>");
		    out.flush(); 
		    out.close();
		
		return null ;
	}

	
	//결재현황 리스트
	@RequestMapping("/allList")
	public String allList(Model model, HttpSession session, HttpServletRequest request) {
		//검색처리
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		
		//페이지처리
		int pageSize=10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.allListCount(userid, keyField, keyWord);
		System.out.println("문서개수"+count);
		if(count > 0){
			ap = dbPro.allList(startRow, endRow, userid, keyField, keyWord); }
		System.out.println("문서리스트"+ap);
		number = count - (currentPage-1) * pageSize;
		
		int bottomLine=5;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/allList";
	}
	
	
	//결재진행 리스트
	@RequestMapping("/apIng")
	public String apIng(Model model, HttpSession session, HttpServletRequest request) {
		//검색처리
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		//페이지처리
		int pageSize=10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.apIngCount(userid, keyField, keyWord);
		System.out.println("문서개수"+count);
		if(count > 0){
			ap = dbPro.apIng(startRow, endRow, userid, keyField, keyWord);
			System.out.println(ap);
			}
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=5;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/apIng";
	}
	
	
	//결재대기 리스트
	@RequestMapping("/apWaiting")
	public String apWaiting(Model model, HttpSession session, HttpServletRequest request) {
		//검색처리
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");		
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		//페이지처리
		int pageSize=10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.apWaitingCount(userid, keyField, keyWord);
		System.out.println(count);
		if(count > 0){
			ap = dbPro.apWaiting(startRow, endRow, userid, keyField, keyWord);
			System.out.println(ap);
			}
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=5;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/apWaiting";
	}
	
	
	//상세보기
	@RequestMapping("/apView")
	public String apView(Model model, int docNum, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		
		ApprovalDataBean vo = dbPro.viewPage(docNum,userid);
		
		model.addAttribute("vo", vo);
		model.addAttribute("pageNum", pageNum);
		
		String typegubun = vo.getTypegubun();
		System.out.println(typegubun+"타입");
		
		if(typegubun.equals("doc01")){
			System.out.println("1기안서페이지");
			return "approval/type1View";	//기안서 페이지
			
		}else if(typegubun.equals("doc02")) {
			System.out.println("2휴가신청서페이지");
			return "approval/type2View";	//휴가신청서 페이지		
		}
		System.out.println("3지출결의서페이지");
			return "approval/type3View";	//지출품의서 페이지
	}
	
	
	
	//결재
	@RequestMapping("/apSave")
	public String apSave(Model model, ApprovalDataBean approval) {
			
		dbPro.apSave(approval);
			
		return "approval/allList";	
	}
		
	//반려
	@RequestMapping("/docReturn")
	public String docReturn(String docNo,HttpSession session ) {
		
		String userid = (String)session.getAttribute("id");
		
		System.out.println("들어옵니까"+ docNo);
		int no = Integer.parseInt(docNo);
			
		dbPro.docReturn(no,userid);
			
		return "approval/allList";	
	}
		
	
	
}
