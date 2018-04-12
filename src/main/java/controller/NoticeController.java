package controller;

import java.util.List;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.NoticeDBMybatis;
/*import model.ListDataBean;*/
import model.MemberDataBean;
import model.NoticeDataBean;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	/*private NoticeDBMybatis noticeDao = new NoticeDBMybatis();
	
	@RequestMapping("/listNotice")
	public ModelAndView listNotice() {
		
		ModelAndView mav = new ModelAndView();
		
		//get User information by userid
		String loginId = "user1" ; //login id 를 통해 사번을 가져옴
		MemberDataBean member = noticeDao.getUser(loginId);
		
		//List PAGE Setup
		int pageSize = 10;
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd-hh:mm:ss");
		String datetime = sdf.format(cal.getTime());

		//pageNum 을 어떻게 받을지 확인 필요.
		String pageNum = "1";
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize;
		
		int count=0, number=0;
		
		count = noticeDao.getFromNoticeCount(sabun); //fromList count
				
		if (count > 0) {
			List fromNoticeList = noticeDao.fromList(startRow, endRow);
		}
			
		number = count - (currentPage - 1) * pageSize;
			
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount) endPage = pageCount;
		
		
		
		
		
		//get fromList from TPNOTICE
		List noticeList = noticeDao.fromList(member.getSabun());
		mav.addObject("fromList", noticeList);
		
		//get toList from TPNOTICE
		noticeList = noticeDao.toList(member.getSabun());
		mav.addObject("toList", noticeList);
		
		mav.setViewName("notice/listNotice");
		return mav;
	}
	
	@RequestMapping(value="/writeNotice", method=RequestMethod.GET)
	public String writeNoticeGet() {
		return "notice/writeNotice";
	}
	@RequestMapping(value="/writeNotice" , method=RequestMethod.POST)
	public String writetNoticePost(NoticeDataBean notice) {
		
		noticeDao.insert(notice);
		
		return "redirect:notice/writeNotice";
	}
	
	@RequestMapping("/deleteNotice")
	public String deleteNotice(int[] nids) {
		
		noticeDao.delete(nids);
		
		return "notice/deleteNotice";
	}
	
	@RequestMapping("/detail")	//Notice DETAIL
	public String detail(int nid) {
		
		noticeDao.detail(nid);
		
		return "notice/detailNotice";
	}*/
}
