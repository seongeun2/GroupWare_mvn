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
	
	
	//로그인 로직 처리, 페이지 이동
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//로그인체크
		int pwcheck = dbPro.login(id, pw);
		String name = dbPro.getname(id);
		String profile = dbPro.getprofile(id);
		String email = dbPro.getEmail(id);
		
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		session.setAttribute("email", email);
		session.setAttribute("profile", profile);
		model.addAttribute("pwcheck",pwcheck);	
		
		return  "loginDb"; 
	}
	
	//관리자 모드 - 직원관리 버튼 클릭시 이동
		@RequestMapping("/adminpage")
		public String adminpage() {
			
			return "member/adminpage";
		}
	
	//관리자 모드 - 직원 등록
	@RequestMapping("/regEmployee")
	public ModelAndView regEmployee(MemberDataBean article) throws Exception{
		ModelAndView mv = new ModelAndView();
		//mv.addObject("emnum", article.getEmnum());
		mv.setViewName("member/regEmployee");
		return mv;
	}
	
	//관리자 모드 - 직원 등록 DB에 넣기
		@RequestMapping("/regEmployeePro")
		public String regEmployeePro(MultipartHttpServletRequest request, MemberDataBean article, Model model) throws Exception{
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

		//관리자 모드 - 직원 수정
		@RequestMapping("/updateEmpPro")
		public String updateEmpPro(MultipartHttpServletRequest request, Model model,MemberDataBean article, String signature, String profile)
				throws Exception {
	
			System.out.println("직원수정");
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
			
			System.out.println("signature=====" + signature);
			System.out.println("profile=====" + profile);
			System.out.println("getSignature=====" + article.getSignature());
			System.out.println("getProfile=====" + article.getProfile());
			dbPro.updateEmp(article);
			return "member/adminpage";

		}	
}

