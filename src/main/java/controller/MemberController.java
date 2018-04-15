package controller;

import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;


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
		String profile = dbPro.getprofile(id);
		
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		session.setAttribute("profile", profile);
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
	public ModelAndView regEmployee(MemberDataBean article) throws Exception{
		ModelAndView mv = new ModelAndView();
		//mv.addObject("emnum", article.getEmnum());
		mv.setViewName("member/regEmployee");
		return mv;
	}
	
	//������ ��� - ���� ��� DB�� �ֱ�
		@RequestMapping("/regEmployeePro")
		public String regEmployeePro(MultipartHttpServletRequest request, MemberDataBean article, Model model) throws Exception{
			System.out.println("���Գ��ƾƾƾƾӾ�");
			ModelAndView mv = new ModelAndView();
			
			MultipartFile multi = request.getFile("uploadfile");
			MultipartFile multi2 = request.getFile("profileimage");
			
			String filename = multi.getOriginalFilename();
			String profilename = multi2.getOriginalFilename();
			
			//signature
			if(filename != null && !filename.equals("")) {
				String uploadPath = request.getRealPath("/")+"fileSave";
				FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(uploadPath+"/"+multi.getOriginalFilename()));
				article.setSignature(filename);
				//article.setFilesize((int) multi.getSize()); 
				}else {
					article.setSignature("");
					//article.setFilesize(0); 
				}
			
			//profile image
			if(profilename != null && !profilename.equals("")) {
				String uploadPath = request.getRealPath("/")+"fileSave";
				FileCopyUtils.copy(multi2.getInputStream(), new FileOutputStream(uploadPath+"/"+multi2.getOriginalFilename()));
				article.setProfile(profilename);
				//article.setFilesize((int) multi.getSize()); 
				}else {
					article.setProfile("");
					//article.setFilesize(0); 
				}
			
				dbPro.insertEmployee(article);
			return "member/adminpage";
		}
		
		//������ ��� - ���� ����
		@RequestMapping("/updateEmp")
		public String updateEmp(MemberDataBean article, HttpSession session,Model model)
				throws Exception {
			System.out.println("����!!!!!");
			String id = (String) session.getAttribute("id");
			System.out.println("id==================="+id);
			
			article = dbPro.getEmployee(id);
			System.out.println(article.getEmail());
			System.out.println(article.getPw());
		 	//int chk= dbPro.upEmployee(article); 
		 	model.addAttribute("article", article);
		 
			return "member/updateEmp";

		}
}

