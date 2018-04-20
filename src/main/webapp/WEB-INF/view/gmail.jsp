<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="javax.activation.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>  
<%@ page import="javax.mail.internet.*"%>
<%
  /* request.setCharacterEncoding("euc-kr");
 String sender=request.getParameter("sender");
 String receiver=request.getParameter("receiver");
 String subject=request.getParameter("subject");
 String content=request.getParameter("content");  
  */
 
 
 String sender="mskim3578@naver.com";
 String receiver="mskim3578@naver.com";
 String subject="..................";
 String content="......................"; 
 
 String server = "smtp.gmail.com";
  
 try{
  
    final String username = "...."; //전송자 메일
    final String password = "....";  //전송자 메일에 대한 비밀번호
   
    Properties props = new Properties();
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.host", server);
    props.put("mail.smtp.port", "465");
    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    
    
  
    Session ss = Session.getInstance(props, 
      new javax.mail.Authenticator() {
       protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
       }
      });

  
  
  
  
  
  
  Message message = new MimeMessage(ss);
  
  Address sender_address=new InternetAddress(sender);
  Address receiver_address=new InternetAddress(receiver);
  
  message.setHeader("content-type","text/html;charset=euc-kr");
  message.setFrom(sender_address);
  message.addRecipient(Message.RecipientType.TO,receiver_address);
  message.setSubject(subject);
  message.setContent(content,"text/html;charset=euc-kr");
  message.setSentDate(new java.util.Date());
  
  Transport transport= ss.getTransport("smtp") ;
  transport.connect(server,null,null);
  transport.sendMessage(message,message.getAllRecipients());
  transport.close();
  
  out.println("<h3>메일이 정상적으로 전송되었습니다.</h3>");
 }catch(Exception e){
  out.println("SMTP 서버가 잘못 설정되었거나, 서비스에 문제가 있습니다.");
  e.printStackTrace();
 }
%>