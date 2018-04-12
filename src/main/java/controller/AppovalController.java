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
	
	//��ȼ�
	@RequestMapping("/type1")
	public String type1(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		
		return "approval/type1";
	}
	
	//�ް���û��
	@RequestMapping("/type2")
	public String type2(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		return "approval/type2";
	}

	//����ǰ�Ǽ�
	@RequestMapping("/type3")
	public String type3(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);	
		model.addAttribute("vo", vo);
		return "approval/type3";
	}
	
	//�����ۼ�
	@RequestMapping("/apWrite")
	public String apWrite(Model model,HttpSession session, ApprovalDataBean approval, HttpServletRequest request, HttpServletResponse response) throws IOException {
		//���ǿ��� ������ ���� userid�� ����
		String userid = (String)session.getAttribute("id");
		//2��° ������ id,name 
		String id2 = request.getParameter("id2");
		String name2 = request.getParameter("name2");
		//3��° ������ id,name
		String id3 = request.getParameter("id3");
		String name3 = request.getParameter("name3");
	
		
		approval.setInId(userid);
		
		int cnt = dbPro.apWrite(approval,id2,id3,name2,name3);
		
		model.addAttribute("approval", approval);
		
		//�Է��ϸ� �޼��� â
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

	
	//������Ȳ ����Ʈ
	@RequestMapping("/allList")
	public String allList(Model model, HttpSession session, HttpServletRequest request) {
		//�˻�ó��
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		
		//���ǿ��� ������ ���� userid�� ����
		String userid = (String)session.getAttribute("id");
		
		//������ó��
		int pageSize=10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.allListCount(userid, keyField, keyWord);
		System.out.println("��������"+count);
		if(count > 0){
			ap = dbPro.allList(startRow, endRow, userid, keyField, keyWord); }
		System.out.println("��������Ʈ"+ap);
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
	
	
	//�������� ����Ʈ
	@RequestMapping("/apIng")
	public String apIng(Model model, HttpSession session, HttpServletRequest request) {
		//�˻�ó��
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		//���ǿ��� ������ ���� userid�� ����
		String userid = (String)session.getAttribute("id");
		//������ó��
		int pageSize=10;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.apIngCount(userid, keyField, keyWord);
		System.out.println("��������"+count);
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
	
	
	//������ ����Ʈ
	@RequestMapping("/apWaiting")
	public String apWaiting(Model model, HttpSession session, HttpServletRequest request) {
		//�˻�ó��
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");		
		//���ǿ��� ������ ���� userid�� ����
		String userid = (String)session.getAttribute("id");
		//������ó��
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
	
	
	//�󼼺���
	@RequestMapping("/apView")
	public String apView(Model model, int docNum, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		
		ApprovalDataBean vo = dbPro.viewPage(docNum,userid);
		
		model.addAttribute("vo", vo);
		model.addAttribute("pageNum", pageNum);
		
		String typegubun = vo.getTypegubun();
		System.out.println(typegubun+"Ÿ��");
		
		if(typegubun.equals("doc01")){
			System.out.println("1��ȼ�������");
			return "approval/type1View";	//��ȼ� ������
			
		}else if(typegubun.equals("doc02")) {
			System.out.println("2�ް���û��������");
			return "approval/type2View";	//�ް���û�� ������		
		}
		System.out.println("3������Ǽ�������");
			return "approval/type3View";	//����ǰ�Ǽ� ������
	}
	
	
	
	//����
	@RequestMapping("/apSave")
	public String apSave(Model model, ApprovalDataBean approval) {
			
		dbPro.apSave(approval);
			
		return "approval/allList";	
	}
		
	//�ݷ�
	@RequestMapping("/docReturn")
	public String docReturn(String docNo,HttpSession session ) {
		
		String userid = (String)session.getAttribute("id");
		
		System.out.println("���ɴϱ�"+ docNo);
		int no = Integer.parseInt(docNo);
			
		dbPro.docReturn(no,userid);
			
		return "approval/allList";	
	}
		
	
	
}
