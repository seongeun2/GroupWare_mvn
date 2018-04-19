package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;

import dao.BoardDBMybatis;
import dao.MemberDBMybatis;
import dao.OrgChartDBMybatis;
import model.MemberDataBean;

@Controller
@RequestMapping("/")
public class ComController {
	//로그인 페이지로 이동
		@RequestMapping("/index")
		public String index(Model model) {
			return "index";
		}
		
		//===============> 장효추가 start
		String boardid = "1";
		String pageNum ="1";
		BoardDBMybatis dbPro = BoardDBMybatis.getInstance();
		@ModelAttribute
		public void addAttributes (String boardid, String pageNum) {
			if (pageNum != null && pageNum != "") this.pageNum = pageNum;
		}
		//===============> 장효추가 end

	      
	      @RequestMapping("/main")
	      public String list1(Model model, HttpSession session) throws Exception {
	         
	    	 try {
	    		 String name = (String) session.getAttribute("name");
		         model.addAttribute("name", name);
		         
		       //추가
				SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
				//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				int pageSize = 7;
				int pageSize2 = 7;
				int currentPage = Integer.parseInt(pageNum);
				int currentPage2 = Integer.parseInt(pageNum);
				int startRow = (currentPage - 1) * pageSize + 1;
				int startRow2 = (currentPage2 - 1) * pageSize2 + 1;
				int endRow = currentPage * pageSize;
				int endRow2 = currentPage2 * pageSize2;
				int count = 0;
				int count2 = 0;
				int number = 0;
				int number2 = 0;
				//
				
				List articleList1 = null;
				count = dbPro.getArticleCount1();  
				if (count > 0) {
						articleList1 = dbPro.getArticles1(startRow, endRow);	
					}
				number = count - (currentPage - 1) * pageSize;
				int bottomLine = 3;
				int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
				int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
				int endPage = startPage + bottomLine - 1;
				if (endPage > pageCount) endPage = pageCount;
				
				//
				
				List articleList2 = null;
				count2 = dbPro.getArticleCount2();  
				if (count2 > 0) {
						articleList2 = dbPro.getArticles2(startRow2, endRow2);	
					}
				number2 = count2 - (currentPage2 - 1) * pageSize2;
				int bottomLine2 = 3;
				int pageCount2 = count2 / pageSize2 + (count2 % pageSize2 == 0 ? 0 : 1);
				int startPage2 = 1 + (currentPage2 - 1) / bottomLine2 * bottomLine2;
				int endPage2 = startPage2 + bottomLine2 - 1;
				if (endPage2 > pageCount2) endPage2 = pageCount2;
		      
		        model.addAttribute("boardid", null);
				model.addAttribute("count", count);
				model.addAttribute("count2", count2);
				model.addAttribute("articleList1", articleList1);
				model.addAttribute("articleList2", articleList2);
				model.addAttribute("currentPage", currentPage);
				model.addAttribute("currentPage2", currentPage2);
				model.addAttribute("startPage", startPage);
				model.addAttribute("startPage2", startPage2);
				model.addAttribute("bottomLine", bottomLine);
				model.addAttribute("bottomLine2", bottomLine2);
				model.addAttribute("endPage", endPage);
				model.addAttribute("endPage2", endPage2);
				model.addAttribute("number", number);
				model.addAttribute("number2", number2);
	    	 } catch (Exception e) {
	    		 System.out.println(e.getMessage());
	    	 }
	         
	         return "board/mainBoard";
	      }

		
		//로그아웃
		@RequestMapping("/logout")
		public ModelAndView logout(HttpSession session) {
			//세션아이디가 널값이 아닐때만 로그아웃.
			if(session.getAttribute("id") != null){
				session.invalidate();	//세션 끊기
			}
			ModelAndView mav = new ModelAndView();
			mav.setViewName("/index");
			return mav; 
		}
		
		//마이페이지
		@RequestMapping("/mypage")
		public String mypage(Model model,MemberDataBean article,HttpSession session)
				throws Exception {
			OrgChartDBMybatis dbPro = OrgChartDBMybatis.getInstance();
			 int emnum = (Integer) session.getAttribute("emnum");
			article = dbPro.getEmployee(emnum);
			
			ModelAndView mv = new ModelAndView();
			int dnum = dbPro.getdnum(emnum);
		 	model.addAttribute("article", article);
		 	model.addAttribute("dnum",dnum);
		 		 	
			return "member/mypage";

		}


}
