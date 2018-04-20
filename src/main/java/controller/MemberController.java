package controller;

import java.io.FileOutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	// 비밀번호 찾기 폼
	@RequestMapping(value ="/find_pw_form")
	public String find_pw_form() throws Exception{
		return "find_pw_form";
	}
	
	// 비밀번호 찾기
		@RequestMapping(value = "/find_pw", method = RequestMethod.POST)
		public void find_pw(@ModelAttribute MemberDataBean member, HttpServletResponse response) throws Exception{
			find_pw(response, member);
		}
	
		// 비밀번호 찾기
		public void find_pw(HttpServletResponse response, MemberDataBean member) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			// 아이디가 없으면
			if(dbPro.check_id(member.getId()) == 0) {
				out.print("아이디가 없습니다.");
				out.close();
			}
			// 가입에 사용한 이메일이 아니면
			else if(!member.getEmail().equals(dbPro.login(member.getId()).getEmail())) {
				out.print("잘못된 이메일 입니다.");
				out.close();
			}else {
				// 임시 비밀번호 생성
				String pw = "";
				for (int i = 0; i < 12; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}
				member.setPw(pw);
				// 비밀번호 변경
				dbPro.update_pw(member);
				// 비밀번호 변경 메일 발송
				send_mail(member, "find_pw");
				
				out.print("이메일로 임시 비밀번호를 발송하였습니다.");
				out.close();
			}
		}	
		
		// 이메일 발송
		public void send_mail(MemberDataBean member, String div) throws Exception {
			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "이메일 입력";
			String hostSMTPpwd = "비밀번호 입력";

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "이메일 입력";
			String fromName = "Spring Homepage";
			String subject = "";
			String msg = "";
			
			if(div.equals("join")) {
				// 회원가입 메일 내용
				subject = "Spring Homepage 회원가입 인증 메일입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getId() + "님 회원가입을 환영합니다.</h3>";
				msg += "<div style='font-size: 130%'>";
				msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
				msg += "<form method='post' action='http://localhost:8081/homepage/member/approval_member.do'>";
				msg += "<input type='hidden' name='email' value='" + member.getEmail() + "'>";
				/*msg += "<input type='hidden' name='approval_key' value='" + member.getApproval_key() + "'>";*/
				msg += "<input type='submit' value='인증'></form><br/></div>";
			}else if(div.equals("find_pw")) {
				subject = "Spring Homepage 임시 비밀번호 입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
				msg += "<p>임시 비밀번호 : ";
				msg += member.getPw() + "</p></div>";
			}
			// 받는 사람 E-Mail 주소
			String mail = member.getEmail();
			System.out.println("mail="+mail);
			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(msg);
				email.send();
			} catch (Exception e) {
				System.out.println("메일발송 실패 : " + e);
			}
		}
		
	//로그인 로직 처리, 페이지 이동
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//로그인체크
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
	
	
	//직원 아이디 중복 체크
		@RequestMapping(value = "/checkSignup", method = RequestMethod.POST)
		public @ResponseBody String AjaxView(  
		        @RequestParam("id") String id)  {
		
			
			//String id = request.getParameter("id");
			String str = "";

			int idcheck = dbPro.idCheck(id);
			//int idcheck = dbPro.idCheck(id);
			
			if(idcheck==1){ //이미 존재하는 계정
				str = "NO";	
				
			}else{	//사용 가능한 계정
				str = "YES";	
				
			}
			return str;
		}
	
	
	//관리자 모드 - 직원 등록 DB에 넣기
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
			
			//메세지 창
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			response.setHeader("Content-Type", "text/html;charset=EUC-KR");
			String msg = "직원이 등록되었습니다.";
			PrintWriter out = response.getWriter();
			 
			out.println("<script>alert('"+msg+"'); location.href='/GroupWare/member/adminpage';</script>");
			out.flush(); 
			out.close();
			
			return null;
		}

		//관리자 모드 - 직원 수정
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
			
			//메세지 창
			request.setCharacterEncoding("EUC-KR");
			response.setContentType("text/html; charset=EUC-KR");
			response.setHeader("Content-Type", "text/html;charset=EUC-KR");
			String msg = "정보가 수정되었습니다." +"\\n"+  "*프로필 사진 수정시에는 다시 로그인 해주세요!";
			PrintWriter out = response.getWriter();
			 
			/*out.println("<script>alert('"+msg+"'); location.href='/GroupWare/orgChart/insa';</script>");*/
			out.println("<script>alert('"+msg+"'); location.href='/GroupWare/main';</script>");
			out.flush(); 
			out.close();
			
			return null;

		}	
		
	
	
}

