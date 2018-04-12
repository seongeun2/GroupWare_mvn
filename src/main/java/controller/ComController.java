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
	         
	         String name = (String) session.getAttribute("name");
	         
	         model.addAttribute("name", name);
	         //추가
	         
	         SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
	         //SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	         int pageSize = 7;
	         int currentPage = Integer.parseInt(pageNum);
	         int startRow = (currentPage - 1) * pageSize + 1;
	         int endRow = currentPage * pageSize;
	         int count = 0;
	         int number = 0;
	         
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
	         count = dbPro.getArticleCount2();  
	         if (count > 0) {
	               articleList2 = dbPro.getArticles2(startRow, endRow);   
	            }
	      
	         model.addAttribute("boardid", null);
	         model.addAttribute("count", count);
	         model.addAttribute("articleList1", articleList1);
	         model.addAttribute("articleList2", articleList2);
	         model.addAttribute("currentPage", currentPage);
	         model.addAttribute("startPage", startPage);
	         model.addAttribute("bottomLine", bottomLine);
	         model.addAttribute("endPage", endPage);
	         model.addAttribute("number", number);
	      //수정
	         
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

}
