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

		//�߰��ڵ�
	String boardid = "1";
	String pageNum ="1";
		//��𼭵��� �� �� �ֵ��� �ϱ� ���ؼ�
	BoardDBMybatis dbPro = BoardDBMybatis.getInstance();
	
	
		//�߰��ڵ�
		// @ModelAttribute �̸� �ö���ְ� �ϴ� ���̴�.
	@ModelAttribute
	public void addAttributes (String boardid, String pageNum) {
		if (boardid != null) this.boardid = boardid;
		if (pageNum != null && pageNum != "") this.pageNum = pageNum;
	}
	
	//=======================================================================================	
	//��ȿ�߰�
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
	
		//�Խñ� ����Ʈ (1)  - �����Խ���
	//����
	@RequestMapping("/list1")
	public String list(Model model) throws Exception {
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	//�߰�
		String boardid = "1";
		int pageSize = 5;
			//ó���� ���ö��� 1���� �� (�Ѿ���� pageNum�� ���� ������)
		int currentPage = Integer.parseInt(pageNum);
			//db���� ������ �������� ��(currentPage�� ����Ǵ� ���� ����)
		int startRow = (currentPage - 1) * pageSize + 1;
			//db���� ������ �������� ������ �� (currentPage�� ����Ǵ� ���� �Ʒ� ��)
		int endRow = currentPage * pageSize;
		int count = 0;
		int number = 0;
		
		List articleList = null;
			//�� �Խñ� ����
		count = dbPro.getArticleCount(boardid);  
		if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, boardid);	
			}
			//������ �� �� ���� �ֽű��� �� ��ȣ(current)
		number = count - (currentPage - 1) * pageSize;
			//����Ǵ� �ϴ� ������ �� 
		int bottomLine = 3;
			//pageSize<�� �������� ������ �� ����
			//pageCount<�� �������� ����
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			//1,4,7.. 
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
			//3,6,9...			
		int endPage = startPage + bottomLine - 1;
			//startPage�� ���� endPage�� ��ü �������� ���� ũ�� endPage=pageCount�� ��������
		if (endPage > pageCount) endPage = pageCount;
	
		model.addAttribute("boardid", boardid);
		model.addAttribute("count", count);
		model.addAttribute("articleList", articleList);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
	//���� 
			return "board/list1";
		}
	
	
	//�߰�
		//�Խñ� ����Ʈ (2) - �����Խ���
	@RequestMapping("/list2")
	public String list2(Model model) throws Exception {
	//�߰�
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
	//����
			return "board/list2";
		}
	
	
	//�߰�
			//�Խñ� ����Ʈ (2) - �����Խ���
		@RequestMapping("/list3")
		public String list3(Model model) throws Exception {
		//�߰�
			
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
		//����
				return "board/list3";
			}
	
	
	
	
	
	
	//=======================================================================================	
	
		// �Խñ� ���� Form (1)  - �����Խ���
	//����
	@RequestMapping("/writeFormUpload1") //�̰��� �޼ҵ� ��� ��� ����. ��ܰ� �� ������Ѵ�.
			//������ �޾ƾ��ϹǷ�, ����� ��쿡�� ��,�Ƹ���Ÿ, �Ƹ������� �ٹ������ �����ֱ� �����̴�.
	public ModelAndView writeFormUpload1(BoardDataBean article)
			throws Exception {
	
		ModelAndView mv = new ModelAndView();
	//�߰�
		String boardid = "1";
		mv.addObject("num", article.getNum());
		mv.addObject("ref", article.getRef());
		mv.addObject("re_step", article.getRe_step());
		mv.addObject("re_level", article.getRe_level());
		mv.addObject("boardid", boardid); 
			//writeFormUpload ��ÿ� boardid�� null�̶� article.getBoardid()�ȵȴ�. 
			//����� �����ϰ� 1�� �Ǵ� ���̴�.
		mv.addObject("pageNum", pageNum);
			//ModelAndView�� �ٲٴ� ����̴�.
			//��ܰ� �� ������Ѵ�.
	//����1 + ����2 board/
		mv.setViewName("board/writeFormUpload1");
		return mv;
	}
	
	
	//�߰�
		//�Խñ� ���� Form (2) - �����Խ���
	@RequestMapping("/writeFormUpload2") //�̰��� �޼ҵ� ��� ��� ����. ��ܰ� �� ������Ѵ�.
	//������ �޾ƾ��ϹǷ�, ����� ��쿡�� ��,�Ƹ���Ÿ, �Ƹ������� �ٹ������ �����ֱ� �����̴�.
		public ModelAndView writeFormUpload2(BoardDataBean article)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
	//�߰�
		String boardid = "2";
		mv.addObject("num", article.getNum());
		mv.addObject("ref", article.getRef());
		mv.addObject("re_step", article.getRe_step());
		mv.addObject("re_level", article.getRe_level());
		mv.addObject("boardid", boardid); 
			//writeFormUpload ��ÿ� boardid�� null�̶� article.getBoardid()�ȵȴ�. 
			//����� �����ϰ� 1�� �Ǵ� ���̴�.
		mv.addObject("pageNum", pageNum);
			//ModelAndView�� �ٲٴ� ����̴�.
			//��ܰ� �� ������Ѵ�.
	//����
		mv.setViewName("board/writeFormUpload2");
		return mv;
		}
	
	//=======================================================================================	
	
		// �Խñ� ���� Pro (1) - �����Խ���
	//����
	@RequestMapping("/writeProUpload1")
	//MultipartRequest ����Ʈ �ߴٰ� ����
	//������ WriteProUploadAction �ڵ尡 ���� �ٸ�, �� ���� ����
	//���帮���̷�Ʈ�� ��Ʈ������ �޾ƾ���???
	public String writeProUpload(MultipartHttpServletRequest request,
			BoardDataBean article, Model model)
			throws Exception {
		//������ ���� �ٸ�
		//MultipartRequest ����Ʈ�� �ٸ� 
	//�߰�
		String boardid = "1";
		ModelAndView mv = new ModelAndView();
		MultipartFile multi = request.getFile("uploadfile");
		String filename = multi.getOriginalFilename();
		System.out.println("filename :[" + filename + "]");
		if (filename != null && !filename.equals("")) {
			String uploadPath = request.getRealPath("/")+"filesave"; // �������ִ°���, ������� �ʾ����� �ϴ� ���̴�. 
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
	//�߰�
		model.addAttribute("boardid", boardid);
	//����
		return "redirect:list1";
		//return "board/list1";
	}
	
	
	//�߰�
		//�Խñ� ���� Pro (2) - �����Խ���
	//����
	@RequestMapping("/writeProUpload2")
	//MultipartRequest ����Ʈ �ߴٰ� ����
	//������ WriteProUploadAction �ڵ尡 ���� �ٸ�, �� ���� ����
	//���帮���̷�Ʈ�� ��Ʈ������ �޾ƾ���???
	public String writeProUpload2(MultipartHttpServletRequest request,
								BoardDataBean article, Model model)
								throws Exception {
		//������ ���� �ٸ�
		//MultipartRequest ����Ʈ�� �ٸ� 
		
	//�߰�
		String boardid = "2";
		ModelAndView mv = new ModelAndView();
		MultipartFile multi = request.getFile("uploadfile");
		String filename = multi.getOriginalFilename();
		System.out.println("filename :[" + filename + "]");
		if (filename != null && !filename.equals("")) {
			String uploadPath = request.getRealPath("/")+"filesave"; // �������ִ°���, ������� �ʾ����� �ϴ� ���̴�. 
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
	//�߰�
		model.addAttribute("boardid", boardid);
		return "redirect:list2";
	}
	
	//=======================================================================================
	
		//�Խñ� ���뺸�� (1) - �����Խ���
	@RequestMapping("/content")
	public String content(int num, Model model)
						throws Exception {
		
			BoardDataBean article = dbPro.getArticle(num, boardid, "content"); 
			model.addAttribute("article", article);
			model.addAttribute("pageNum", pageNum);	 
	//�߰�
			model.addAttribute("boardid", boardid);
		 
		return "board/content";
	}
	
	/*//�߰�
		//�Խñ� ���뺸�� (2) - �����Խ���
	@RequestMapping("/content2")
	public String content2(int num, Model model)
						throws Exception {
		
			BoardDataBean article = dbPro.getArticle(num, boardid, "content"); 
			String boardid = "2";
			model.addAttribute("article", article);
			model.addAttribute("pageNum", pageNum);	
	//�߰�
			model.addAttribute("boardid", boardid);
	//����
			return "content2";
	}*/
	
	//=======================================================================================	
	
		//�Խñ� ���� Form (1) - �����Խ���
	@RequestMapping("/updateForm")
	public String updateForm(int num, Model model)
			throws Exception {
		
	BoardDataBean article =  dbPro.getArticle(num, boardid, "update");
	model.addAttribute("article", article);
	//�߰�
	model.addAttribute("boardid", boardid);
		return "board/updateForm";
	}
	
	
	/*		//�Խñ� ���� Form (2) - �����Խ���
	@RequestMapping("/updateForm2")
	public String updateForm2(int num, Model model)
			throws Exception {
		
	BoardDataBean article =  dbPro.getArticle(num, boardid, "update");
	model.addAttribute("article", article);
		return "updateForm2";
	}*/
	
	
	//=======================================================================================
	
		//�Խñ� ���� Pro (1) - �����Խ���
	@RequestMapping("/updatePro")
	public String updatePro(BoardDataBean article, Model model)
			throws Exception {
		
	 	int chk= dbPro.updateArticle(article); 
	 	model.addAttribute("chk", chk);
	 	model.addAttribute("pageNum", pageNum);	
	//�߰�
	 	model.addAttribute("boardid", boardid);
		return "board/updatePro";
	}
	
	/*		//�Խñ� ���� Pro (2) - �����Խ���
	@RequestMapping("/updatePro2")
	public String updatePro2(BoardDataBean article, Model model)
			throws Exception {
		
	 	int chk= dbPro.updateArticle(article); 
	 	model.addAttribute("chk", chk);
	 	model.addAttribute("pageNum", pageNum);	 
		return "updatePro2";
	}*/
	
	//=======================================================================================
	
		//�Խñ� ���� Form (1) - �����Խ���
	@RequestMapping(value = "deleteForm")
		//value = "deleteForm" �̷��� �ϸ� � �� �� �� �ִ� ������ �ִ�.
		//������̼��� ������Ʈ�̴�. � �ɷ��ִ� ���̴�.
	public ModelAndView deleteForm(int num)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("num", num);
		mv.addObject("pageNum", pageNum);
	//�߰�
		mv.addObject("boardid", boardid);
		mv.setViewName("board/deleteForm");		
		return mv;
	}
	
	/*	//�Խñ� ���� Form (2) - �����Խ���
	@RequestMapping(value = "deleteForm2")
		//value = "deleteForm" �̷��� �ϸ� � �� �� �� �ִ� ������ �ִ�.
		//������̼��� ������Ʈ�̴�. � �ɷ��ִ� ���̴�.
	public ModelAndView deleteForm2(int num)
			throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("num", num);
		mv.addObject("pageNum", pageNum);
		mv.setViewName("deleteForm2");		
		return mv;
	}*/
		
	//=======================================================================================
	
		//�Խñ� ���� Pro (1) - �����Խ���
	@RequestMapping(value = "deletePro")
	public ModelAndView deletePro(int num, String passwd)
			throws Exception {
		ModelAndView mv = new ModelAndView();
		int check = dbPro.deleteArticle(num, passwd, boardid); 
		mv.addObject("check", check);
		mv.addObject("pageNum", pageNum);
	//�߰�
		mv.addObject("boardid", boardid);
		mv.setViewName("board/deletePro");
		return mv;
	}
	
	/*	//�Խñ� ���� Pro (2) - �����Խ���
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
