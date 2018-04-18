package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.NoticeDBMybatis;
import model.MemberDataBean;
import model.NoticeDataBean;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	private NoticeDBMybatis noticeDao = new NoticeDBMybatis();

	@RequestMapping(value="/receivedNotice", method = RequestMethod.GET)
	public ModelAndView receivedNoticeGET(HttpServletRequest request, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		//get User information by userid
		String loginId = (String)session.getAttribute("id"); // session 에서 가져올 것
		
		MemberDataBean member = noticeDao.getUser(loginId);
		System.out.println(member.getEmnum());
		
		//------ 받은 쪽지함 ------
		//List PAGE Setup
		int pageSize = 7;
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd-hh:mm:ss");
		String datetime = sdf.format(cal.getTime());

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum == "") pageNum = "1";
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		
		int count=0, number=0;		//received
		
		count = noticeDao.getToNoticeCount(loginId); //received count	
		System.out.println("#Controller # count : "+count);
		if (count > 0) {
			//get toList from TPNOTICE
			List toNoticeList = noticeDao.toList(startRow, endRow, loginId);
			//System.out.println("#Controller # toNoticeList Size " + toNoticeList.size());
			mav.addObject("toList", toNoticeList);
		}
			
		number = count - (currentPage - 1) * pageSize;
			
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount) endPage = pageCount;
		
		mav.addObject("pageCount",pageCount);
		mav.addObject("endPage",endPage);
		mav.addObject("bottomLine",bottomLine);
		mav.addObject("startPage",startPage);
		mav.addObject("currentPage",currentPage);
		mav.addObject("number",number);
		mav.addObject("count",count);
		mav.addObject("datetime",datetime);
		
		mav.setViewName("notice/receivedNotice");
		return mav;
	}
	
	@RequestMapping(value="/sentNotice", method = RequestMethod.GET)
	public ModelAndView sentNoticeGET(HttpServletRequest request, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		//get User information by userid
		String loginId = (String)session.getAttribute("id"); //login id 를 통해 사번을 가져옴
		MemberDataBean member = noticeDao.getUser(loginId);
		System.out.println(member.getEmnum());
		
		//------ 보낸 쪽지함 ------
		//List PAGE Setup
		int pageSize = 7;
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd-hh:mm:ss");
		String datetime = sdf.format(cal.getTime());

		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum == "") pageNum = "1";
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		
		int count=0, number=0;		//received
		
		count = noticeDao.getToNoticeCount(loginId); //received count	
		
		if (count > 0) {
			//get fromList from TPNOTICE
			List fromNoticeList = noticeDao.fromList(startRow, endRow, loginId);
			//System.out.println("#Controller # toNoticeList Size " + toNoticeList.size());
			mav.addObject("fromList", fromNoticeList);
		}
			
		number = count - (currentPage - 1) * pageSize;
			
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount) endPage = pageCount;
		
		mav.addObject("pageCount",pageCount);
		mav.addObject("endPage",endPage);
		mav.addObject("bottomLine",bottomLine);
		mav.addObject("startPage",startPage);
		mav.addObject("currentPage",currentPage);
		mav.addObject("number",number);
		mav.addObject("count",count);
		mav.addObject("datetime",datetime);
		
		mav.setViewName("notice/sentNotice");
		return mav;
	}
	
	@RequestMapping(value="/writeNotice", method=RequestMethod.GET)
	public String writeNoticeGet(Model model, HttpSession session) {
		
		//get User information by userid
		String loginId = (String)session.getAttribute("id"); // session 에서 가져올 것	
		MemberDataBean member = noticeDao.getUser(loginId);
		
		System.out.println("# Controller fromid : " + member.getId());
		model.addAttribute("fromid", member.getId());
		model.addAttribute("name", member.getName());

		return "notice/writeNotice";
	}
	@RequestMapping(value="/writeNotice" , method=RequestMethod.POST)
	public String writetNoticePost(NoticeDataBean notice) {
		
		noticeDao.insert(notice);
		
		return "redirect:/notice/sentNotice";
	}
	
	@RequestMapping("/deleteNotice")
	public String deleteNotice(int nid, int sentrecv) {
				
		String resultView = null;
		
		noticeDao.delete(nid);
		
		if (sentrecv == 1) resultView = "redirect:/notice/sentNotice";
		if (sentrecv == 0) resultView = "redirect:/notice/receivedNotice";
		
		return resultView;
	}
	
	@RequestMapping("/detailNotice")	//Notice DETAIL
	public String detail(int nid, Model model) {
		
		NoticeDataBean notice = noticeDao.detail(nid);
		
		model.addAttribute("notice", notice);
		
		return "notice/detailNotice";
	}
}
