package controller;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import dao.BoardDBMybatis;
import model.BoardDataBean;



@Controller
@RequestMapping("/board")
public class BoardController {

		//추가코드
	String boardid = "1";
	String pageNum ="1";
		//어디서든지 쓸 수 있도록 하기 위해서
	BoardDBMybatis dbPro = BoardDBMybatis.getInstance();
	
	
		//추가코드
		// @ModelAttribute 미리 올라와있게 하는 것이다.
	@ModelAttribute
	public void addAttributes (String boardid, String pageNum) {
		if (boardid != null) this.boardid = boardid;
		if (pageNum != null && pageNum != "") this.pageNum = pageNum;
	}
	
	//=======================================================================================	
	//장효추가
		@RequestMapping("/sample")
		public String sample(Model model) {
			
			return "board/sample";
			//return "index";
		}
	
	//=======================================================================================	
	
	@RequestMapping("/index")
	public String index() { //Model model
		/*model.addAttribute("message", "/board/index");*/
		return "board/index";
	}
	
	
	//=======================================================================================
	
		//게시글 리스트 (1)  - 자유게시판
	//수정
	@RequestMapping("/list1")
	public String list(Model model) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	//추가
		String boardid = "1";
		int pageSize = 5;
			//처음에 들어올때는 1번이 뜸 (넘어오는 pageNum이 없기 때문에)
		int currentPage = Integer.parseInt(pageNum);
			//db에서 가져올 데이터의 열(currentPage에 노출되는 가장 윗글)
		int startRow = (currentPage - 1) * pageSize + 1;
			//db에서 가져올 데이터의 마지막 열 (currentPage에 노출되는 가장 아래 글)
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		
		List articleList = null;
			//총 게시글 개수
		count = dbPro.getArticleCount(boardid);  
		if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, boardid);	
			}
			//가져올 글 중 가장 최신글의 글 번호(current)
		number = count - (currentPage - 1) * pageSize;
			//노출되는 하단 페이지 수 
		int bottomLine = 3;
			//pageSize<한 페이지에 보여줄 글 개수
			//pageCount<총 페이지의 개수
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			//1,4,7.. 
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
			//3,6,9...			
		int endPage = startPage + bottomLine - 1;
			//startPage로 계산된 endPage가 전체 페이지수 보다 크면 endPage=pageCount로 설정해줌
		if (endPage > pageCount) endPage = pageCount;
	
		model.addAttribute("boardid", boardid);
		model.addAttribute("count", count);
		model.addAttribute("articleList", articleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
	//수정 
			return "board/list1";
		}
	
	
	//추가
		//게시글 리스트 (2) - 공지게시판
	@RequestMapping("/list2")
	public String list2(Model model) throws Exception {
	//추가
		String boardid = "2";
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		int pageSize = 5;
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		List articleList = null;
		count = dbPro.getArticleCount(boardid);  
		if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, boardid);	
			}
		number = count - (currentPage - 1) * pageSize;
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount) endPage = pageCount;
	
		model.addAttribute("boardid", boardid);
		model.addAttribute("count", count);
		model.addAttribute("articleList", articleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
	//수정
			return "board/list2";
		}
	
	
	//추가
			//게시글 리스트 (2) - 공지게시판
		@RequestMapping("/list3")
		public String list3(Model model) throws Exception {
		//추가
			
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
			//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			int pageSize = 5;
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize + 1;
			int endRow = currentPage * pageSize;
			int count = 0;
			int number = 0;
			
			List articleList = null;
			count = dbPro.getArticleCount1();  
			if (count > 0) {
					articleList = dbPro.getArticles1(startRow, endRow);	
				}
			number = count - (currentPage - 1) * pageSize;
			int bottomLine = 3;
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
			int endPage = startPage + bottomLine - 1;
			if (endPage > pageCount) endPage = pageCount;
			
			List articleList1 = null;
			count = dbPro.getArticleCount2();  
			if (count > 0) {
					articleList1 = dbPro.getArticles2(startRow, endRow);	
				}
		
			model.addAttribute("boardid", null);
			model.addAttribute("count", count);
			model.addAttribute("articleList", articleList);
			model.addAttribute("articleList", articleList1);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("startPage", startPage);
			model.addAttribute("bottomLine", bottomLine);
			model.addAttribute("endPage", endPage);
			model.addAttribute("number", number);
		//수정
				return "board/list3";
			}
	
	
	
	
	
	
	//=======================================================================================	
	
		// 게시글 쓰기 Form (1)  - 자유게시판
	//수정
	@RequestMapping("/writeFormUpload1") //이것은 메소드 명과 상관 없다. 뷰단과 꼭 맞춰야한다.
			//파일을 받아야하므로, 답글일 경우에는 넘,아리스타, 아리레벨을 겟방식으로 보내주기 떄문이다.
	public ModelAndView writeFormUpload1(BoardDataBean article)
			throws Exception {
	
		ModelAndView mv = new ModelAndView();
	//추가
		String boardid = "1";
		mv.addObject("num", article.getNum());
		mv.addObject("ref", article.getRef());
		mv.addObject("re_step", article.getRe_step());
		mv.addObject("re_level", article.getRe_level());
		mv.addObject("boardid", boardid); 
			//writeFormUpload 당시에 boardid는 null이라서 article.getBoardid()안된다. 
			//저장과 무관하게 1이 되는 것이다.
		mv.addObject("pageNum", pageNum);
			//ModelAndView로 바꾸는 방법이다.
			//뷰단과 꼭 맞춰야한다.
	//수정1 + 수정2 board/
		mv.setViewName("board/writeFormUpload1");
		return mv;
	}
	
	
	//추가
		//게시글 쓰기 Form (2) - 공지게시판
	@RequestMapping("/writeFormUpload2") //이것은 메소드 명과 상관 없다. 뷰단과 꼭 맞춰야한다.
	//파일을 받아야하므로, 답글일 경우에는 넘,아리스타, 아리레벨을 겟방식으로 보내주기 떄문이다.
		public ModelAndView writeFormUpload2(BoardDataBean article)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
	//추가
		String boardid = "2";
		mv.addObject("num", article.getNum());
		mv.addObject("ref", article.getRef());
		mv.addObject("re_step", article.getRe_step());
		mv.addObject("re_level", article.getRe_level());
		mv.addObject("boardid", boardid); 
			//writeFormUpload 당시에 boardid는 null이라서 article.getBoardid()안된다. 
			//저장과 무관하게 1이 되는 것이다.
		mv.addObject("pageNum", pageNum);
			//ModelAndView로 바꾸는 방법이다.
			//뷰단과 꼭 맞춰야한다.
	//수정
		mv.setViewName("board/writeFormUpload2");
		return mv;
		}
	
	//=======================================================================================	
	
		// 게시글 쓰기 Pro (1) - 자유게시판
	//수정
	@RequestMapping("/writeProUpload1")
	//MultipartRequest 임포트 했다가 지움
	//기존과 WriteProUploadAction 코드가 완전 다름, 손 볼거 많음
	//샌드리다이랙트는 스트링으로 받아야함???
	public String writeProUpload(MultipartHttpServletRequest request,
			BoardDataBean article, Model model)
			throws Exception {
		//기존과 완전 다름
		//MultipartRequest 임포트가 다름 
	//추가
		String boardid = "1";
		ModelAndView mv = new ModelAndView();
		MultipartFile multi = request.getFile("uploadfile");
		String filename = multi.getOriginalFilename();
		System.out.println("filename :[" + filename + "]");
		if (filename != null && !filename.equals("")) {
			String uploadPath = request.getRealPath("/")+"filesave"; // 줄쳐저있는것은, 사용하지 않았으면 하는 것이다. 
			System.out.println(uploadPath);
			FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(uploadPath + "/" + multi.getOriginalFilename()));
			article.setFilename(filename);
			article.setFilesize((int) multi.getSize());
		} else {
			article.setFilename("");
			article.setFilesize(0);
		}
		// article.setIp(remoteId);
		article.setIp(request.getRemoteAddr());
		System.out.println(article);
		dbPro.insertArticle(article);
		model.addAttribute("pageNum", pageNum);
	//추가
		model.addAttribute("boardid", boardid);
	//수정
		return "redirect:list1";
		//return "board/list1";
	}
	
	
	//추가
		//게시글 쓰기 Pro (2) - 공지게시판
	//수정
	@RequestMapping("/writeProUpload2")
	//MultipartRequest 임포트 했다가 지움
	//기존과 WriteProUploadAction 코드가 완전 다름, 손 볼거 많음
	//샌드리다이랙트는 스트링으로 받아야함???
	public String writeProUpload2(MultipartHttpServletRequest request,
								BoardDataBean article, Model model)
								throws Exception {
		//기존과 완전 다름
		//MultipartRequest 임포트가 다름 
		
	//추가
		String boardid = "2";
		ModelAndView mv = new ModelAndView();
		MultipartFile multi = request.getFile("uploadfile");
		String filename = multi.getOriginalFilename();
		System.out.println("filename :[" + filename + "]");
		if (filename != null && !filename.equals("")) {
			String uploadPath = request.getRealPath("/")+"filesave"; // 줄쳐저있는것은, 사용하지 않았으면 하는 것이다. 
			System.out.println(uploadPath);
			FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(uploadPath + "/" + multi.getOriginalFilename()));
			article.setFilename(filename);
			article.setFilesize((int) multi.getSize());
		} else {
			article.setFilename("");
			article.setFilesize(0);
		}
		// article.setIp(remoteId);
		article.setIp(request.getRemoteAddr());
		System.out.println(article);
		dbPro.insertArticle(article);
		model.addAttribute("pageNum", pageNum);
	//추가
		model.addAttribute("boardid", boardid);
		return "redirect:list2";
	}
	
	//=======================================================================================
	
		//게시글 내용보기 (1) - 자유게시판
	@RequestMapping("/content")
	public String content(int num, Model model)
						throws Exception {
		
			BoardDataBean article = dbPro.getArticle(num, boardid, "content"); 
			model.addAttribute("article", article);
			model.addAttribute("pageNum", pageNum);	 
	//추가
			model.addAttribute("boardid", boardid);
		 
		return "board/content";
	}
	
	/*//추가
		//게시글 내용보기 (2) - 공지게시판
	@RequestMapping("/content2")
	public String content2(int num, Model model)
						throws Exception {
		
			BoardDataBean article = dbPro.getArticle(num, boardid, "content"); 
			String boardid = "2";
			model.addAttribute("article", article);
			model.addAttribute("pageNum", pageNum);	
	//추가
			model.addAttribute("boardid", boardid);
	//수정
			return "content2";
	}*/
	
	//=======================================================================================	
	
		//게시글 수정 Form (1) - 자유게시판
	@RequestMapping("/updateForm")
	public String updateForm(int num, Model model)
			throws Exception {
		
	BoardDataBean article =  dbPro.getArticle(num, boardid, "update");
	model.addAttribute("article", article);
	//추가
	model.addAttribute("boardid", boardid);
		return "board/updateForm";
	}
	
	
	/*		//게시글 수정 Form (2) - 공지게시판
	@RequestMapping("/updateForm2")
	public String updateForm2(int num, Model model)
			throws Exception {
		
	BoardDataBean article =  dbPro.getArticle(num, boardid, "update");
	model.addAttribute("article", article);
		return "updateForm2";
	}*/
	
	
	//=======================================================================================
	
		//게시글 수정 Pro (1) - 자유게시판
	@RequestMapping("/updatePro")
	public String updatePro(BoardDataBean article, Model model)
			throws Exception {
		
	 	int chk= dbPro.updateArticle(article); 
	 	model.addAttribute("chk", chk);
	 	model.addAttribute("pageNum", pageNum);	
	//추가
	 	model.addAttribute("boardid", boardid);
		return "board/updatePro";
	}
	
	/*		//게시글 수정 Pro (2) - 공지게시판
	@RequestMapping("/updatePro2")
	public String updatePro2(BoardDataBean article, Model model)
			throws Exception {
		
	 	int chk= dbPro.updateArticle(article); 
	 	model.addAttribute("chk", chk);
	 	model.addAttribute("pageNum", pageNum);	 
		return "updatePro2";
	}*/
	
	//=======================================================================================
	
		//게시글 삭제 Form (1) - 자유게시판
	@RequestMapping(value = "deleteForm")
		//value = "deleteForm" 이렇게 하면 몇개 더 할 수 있는 장점이 있다.
		//어노테이션은 오브젝트이다. 몇개 걸려있는 것이다.
	public ModelAndView deleteForm(int num)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("num", num);
		mv.addObject("pageNum", pageNum);
	//추가
		mv.addObject("boardid", boardid);
		mv.setViewName("board/deleteForm");		
		return mv;
	}
	
	/*	//게시글 삭제 Form (2) - 공지게시판
	@RequestMapping(value = "deleteForm2")
		//value = "deleteForm" 이렇게 하면 몇개 더 할 수 있는 장점이 있다.
		//어노테이션은 오브젝트이다. 몇개 걸려있는 것이다.
	public ModelAndView deleteForm2(int num)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("num", num);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("deleteForm2");		
		return mv;
	}*/
		
	//=======================================================================================
	
		//게시글 삭제 Pro (1) - 자유게시판
	@RequestMapping(value = "deletePro")
	public ModelAndView deletePro(int num, String passwd)
			throws Exception {
		ModelAndView mv = new ModelAndView();
		int check = dbPro.deleteArticle(num, passwd, boardid); 
		mv.addObject("check", check);
		mv.addObject("pageNum", pageNum);
	//추가
		mv.addObject("boardid", boardid);
		mv.setViewName("board/deletePro");
		return mv;
	}
	
	/*	//게시글 삭제 Pro (2) - 공지게시판
		@RequestMapping(value = "deletePro2")
		public ModelAndView deletePro2(int num, String passwd)
				throws Exception {
			ModelAndView mv = new ModelAndView();
			int check = dbPro.deleteArticle(num, passwd, boardid); 
			mv.addObject("check", check);
			mv.addObject("pageNum", pageNum);
			mv.setViewName("deletePro2");
			return mv;
		}*/
	
	
	
	
	
}
