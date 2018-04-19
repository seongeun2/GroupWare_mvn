package controller;

import java.io.FileOutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
		String email = dbPro.getEmail(id);
		int emnum = dbPro.getEmnum(id);
		
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		session.setAttribute("email", email);
		session.setAttribute("profile", profile);
		session.setAttribute("emnum", emnum);
		model.addAttribute("pwcheck",pwcheck);	
		
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
	
	
	//���� ���̵� �ߺ� üũ
		@RequestMapping(value = "/checkSignup", method = RequestMethod.POST)
		public @ResponseBody String AjaxView(  
		        @RequestParam("id") String id)  {
		
			
			//String id = request.getParameter("id");
			String str = "";

			int idcheck = dbPro.idCheck(id);
			//int idcheck = dbPro.idCheck(id);
			
			if(idcheck==1){ //�̹� �����ϴ� ����
				str = "NO";	
				
			}else{	//��� ������ ����
				str = "YES";	
				
			}
			return str;
		}
	
	
	//������ ��� - ���� ��� DB�� �ֱ�
		@RequestMapping("/regEmployeePro")
		public String regEmployeePro(MultipartHttpServletRequest request, HttpServletResponse response, 
				MemberDataBean article, Model model) throws Exception{
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
			//return "member/adminpage";
			
			//�޼��� â
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			response.setHeader("Content-Type", "text/html;charset=EUC-KR");
			String msg = "������ ��ϵǾ����ϴ�.";
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('"+msg+"'); location.href='/GroupWare/member/adminpage';</script>");
			out.flush(); 
			out.close();
			
			return null;
		}

		//������ ��� - ���� ����
		@RequestMapping("/updateEmpPro")
		public String updateEmpPro(MultipartHttpServletRequest request, HttpServletResponse response,
				Model model,MemberDataBean article, String signature, String profile) throws Exception {
	
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
					article.setSignature(signature);
					//article.setFilesize(0); 
				}
			
			//profile image
			if(profilename != null && !profilename.equals("")) {
				String uploadPath = request.getRealPath("/")+"fileSave";
				FileCopyUtils.copy(multi2.getInputStream(), new FileOutputStream(uploadPath+"/"+multi2.getOriginalFilename()));
				article.setProfile(profilename);
				//article.setFilesize((int) multi.getSize()); 
				}else {
					article.setProfile(profile);
					//article.setFilesize(0); 
				}
			
			
			dbPro.updateEmp(article);
			
			//�޼��� â
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			response.setHeader("Content-Type", "text/html;charset=EUC-KR");
			String msg = "������ �����Ǿ����ϴ�.";
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('"+msg+"'); location.href='/GroupWare/orgChart/insa';</script>");
			out.flush(); 
			out.close();
			
			return null;

		}	
}

