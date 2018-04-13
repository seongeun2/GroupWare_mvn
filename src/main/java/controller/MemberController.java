package controller;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


import dao.BoardDBMybatis;
import dao.MemberDBMybatis;
import model.MemberDataBean;
//import member.MemDBMybatis;

@Controller
@RequestMapping("/member")
public class MemberController{

	MemberDBMybatis dbPro = MemberDBMybatis.getInstance();
	
	
	//�α��� ���� ó��, ������ �̵�
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//�α���üũ
		int pwcheck = dbPro.login(id, pw);
		String name = dbPro.getname(id);
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		model.addAttribute("pwcheck",pwcheck);		
		
	/*	
		if(id.equals("admin") && pwcheck==1) {
			//return "common/admin";  //jsp ������ ��������.
			return "/board/mainBoard";
		}else
		*/
		return  "loginDb"; 
	}
	
	//������ ��� - �������� ��ư Ŭ���� �̵�
		@RequestMapping("/adminpage")
		public String adminpage() {
			
			return "member/adminpage";
		}
	
	//������ ��� - ���� ���
	@RequestMapping("/regEmployee")
	public String regEmployee() {
		return "member/regEmployee";
	}
	
	//������ ��� - ���� ��� DB�� �ֱ�
		@RequestMapping("/regEmployeePro")
		public String regEmployeePro(MultipartHttpServletRequest request, MemberDataBean article, Model model) throws Exception{
			System.out.println("���Գ��ƾƾƾƾӾ�");
			ModelAndView mv = new ModelAndView();
			
			MultipartFile multi = request.getFile("uploadfile");
			String filename = multi.getOriginalFilename();
			
			if(filename != null && !filename.equals("")) {
				String uploadPath = request.getRealPath("/")+"fileSave";
				FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(uploadPath+"/"+multi.getOriginalFilename()));
				article.setSignature(filename);
				article.setFilesize((int) multi.getSize()); 
				}else {
					article.setSignature("");
					article.setFilesize(0); 
				}	
				dbPro.insertEmployee(article);
			return "member/adminpage";
		}	
	
}

