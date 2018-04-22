package controller;

import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.security.Security;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.commons.mail.HtmlEmail;
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

import com.sun.mail.smtp.SMTPTransport;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

import dao.MemberDBMybatis;
import model.MemberDataBean;
//import member.MemDBMybatis;

@Controller
@RequestMapping("/member")
public class MemberController{

	MemberDBMybatis dbPro = MemberDBMybatis.getInstance();
	
	// ��й�ȣ ã�� ��
	@RequestMapping(value ="/find_pw_form")
	public String find_pw_form() throws Exception{
		return "find_pw_form";
	}
	
	// ��й�ȣ ã��
		@RequestMapping(value = "/find_pw", method = RequestMethod.POST)
		public void find_pw(@ModelAttribute MemberDataBean member, HttpServletResponse response) throws Exception{
			find_pw(response, member);
		}
	
		// ��й�ȣ ã��
		public void find_pw(HttpServletResponse response, MemberDataBean member) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			// ���̵� ������
			if(dbPro.check_id(member.getId()) == 0) {
				out.print("���̵� �����ϴ�.");
				out.close();
			}
			// ���Կ� ����� �̸����� �ƴϸ�
			else if(!member.getEmail().equals(dbPro.login(member.getId()).getEmail())) {
				out.print("�߸��� �̸��� �Դϴ�.");
				out.close();
			}else {
				// �ӽ� ��й�ȣ ����
				String pw = "";
				for (int i = 0; i < 12; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}
				member.setPw(pw);
				// ��й�ȣ ����
				dbPro.update_pw(member);
				// ��й�ȣ ���� ���� �߼�
				send_mail(member, "find_pw");
				
				out.print("�̸��Ϸ� �ӽ� ��й�ȣ�� �߼��Ͽ����ϴ�.");
				out.close();
			}
		}	
		
		// �̸��� �߼�
		public void send_mail(MemberDataBean member, String div) throws Exception {
			/*// Mail Server ����
			String charSet = "utf-8";
			String hostSMTP = "smtp.google.com";
			String hostSMTPid = "zhdzhdgl";
			String hostSMTPpwd = "godty0316!";

			// ������ ��� EMail, ����, ����
			String fromEmail = "20db20@naver.com";
			String fromName = "Spring Homepage";
			String subject = "";
			String msg = "";
			
			if(div.equals("join")) {
				// ȸ������ ���� ����
				subject = "Spring Homepage ȸ������ ���� �����Դϴ�.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getId() + "�� ȸ�������� ȯ���մϴ�.</h3>";
				msg += "<div style='font-size: 130%'>";
				msg += "�ϴ��� ���� ��ư Ŭ�� �� ���������� ȸ�������� �Ϸ�˴ϴ�.</div><br/>";
				msg += "<form method='post' action='http://localhost:8081/homepage/member/approval_member.do'>";
				msg += "<input type='hidden' name='email' value='" + member.getEmail() + "'>";
				msg += "<input type='hidden' name='approval_key' value='" + member.getApproval_key() + "'>";
				msg += "<input type='submit' value='����'></form><br/></div>";
			}else if(div.equals("find_pw")) {
				subject = "Spring Homepage �ӽ� ��й�ȣ �Դϴ�.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getId() + "���� �ӽ� ��й�ȣ �Դϴ�. ��й�ȣ�� �����Ͽ� ����ϼ���.</h3>";
				msg += "<p>�ӽ� ��й�ȣ : ";
				msg += member.getPw() + "</p></div>";
			}
			// �޴� ��� E-Mail �ּ�
			String mail = member.getEmail();
			System.out.println("mail="+mail);
			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(465);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(msg);
				email.send();
			} catch (Exception e) {
				System.out.println("���Ϲ߼� ���� : " + e);
			}*/
			
			// ���� �߼ۿ� ������Ƽ ����
			// ������ �ʿ� �����ϴ�.
			
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			// �ڽ��� gmail / password
			Session session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						// 
						return new PasswordAuthentication("zhdzhdgl","godty0316!");
					}
				});

			try {

				Message message = new MimeMessage(session);
				
				// �߼��ϴ� �̸��� �ּҸ� ����մϴ�.
				// ������ ���� ���� �����̾�� �մϴ�.
				message.setFrom(new InternetAddress("zhdzhdgl@gmail.com"));
				
				// �޴� ��� E-Mail �ּ�
				String mail = member.getEmail();
				// �޴� ��� �̸����� ����մϴ�.
				message.setRecipients(Message.RecipientType.TO,
						InternetAddress.parse(mail));
				
				
				// ���� ������ ����մϴ�.
				message.setSubject("Spring Homepage �ӽ� ��й�ȣ �Դϴ�.");
				
				// ���� ������ ����մϴ�.
				message.setText(member.getId() + "���� �ӽ� ��й�ȣ �Դϴ�. ��й�ȣ�� �����Ͽ� ����ϼ���."
						+"\n �ӽ� ��й�ȣ : " + member.getPw());

				Transport.send(message);

				System.out.println("Done");

			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		}
			
	//�α��� ���� ó��, ������ �̵�
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		int pwcheck;
		//�α���üũ
		int idcheck = dbPro.check_id(id);
		if(idcheck == 0) {
			pwcheck = -1;
		}else {
			pwcheck = dbPro.login(id, pw);
			String name = dbPro.getname(id);
			String profile = dbPro.getprofile(id);
			String email = dbPro.getEmail(id);
			int emnum = dbPro.getEmnum(id);
			
			session.setAttribute("name", name);
			session.setAttribute("id", id);
			session.setAttribute("email", email);
			session.setAttribute("profile", profile);
			session.setAttribute("emnum", emnum);
			
		}
		
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
			String msg = "������ �����Ǿ����ϴ�." +"\\n"+  "*������ ���� �����ÿ��� �ٽ� �α��� ���ּ���!";
			PrintWriter out = response.getWriter();
			 
			/*out.println("<script>alert('"+msg+"'); location.href='/GroupWare/orgChart/insa';</script>");*/
			out.println("<script>alert('"+msg+"'); location.href='/GroupWare/main';</script>");
			out.flush(); 
			out.close();
			
			return null;

		}	
		
	
	
}

