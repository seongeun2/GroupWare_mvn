package controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MybatisConnector;

@Controller
@RequestMapping("/R")
public class RController extends MybatisConnector {
	
	private final String namespace = "notice.mybatis";
	SqlSession sqlSession;
	private String path = "";
	String imgname = "";
	
	@RequestMapping("/RfromDB")
	public String RfromDB (HttpServletRequest request, HttpServletResponse response)  throws Throwable {
	
		System.out.println("RfromDB");
		if (request.getMethod().equals("POST")) {
			String item = request.getParameter("item");
			String type = request.getParameter("type");
			System.out.println("item: " + item + "   type: " + type);
			
			request.setCharacterEncoding("euc-kr");
			String rpro = request.getParameter("rpro");
			path = request.getServletContext().getRealPath("/");
			if (request.getParameter("imgname") != null)
				imgname = request.getParameter("imgname");
			else
				imgname = "noname.jpg";
			
			int postMaxSize = 10 * 1024 * 1024;
			path = request.getRealPath("/");
			path = path.replace("\\",  "/");
			System.out.println("path : " +path);
			String folderPath = path + "fileUpload";
			System.out.println("folderPath : " + folderPath);
			String encoding = "UTF-8";
			
			String filename = "";
			
			Map map = txtFile(item);
						
			makecsv(map, folderPath+"/"+filename);
						
			System.out.println(type+"    type");
						
			if (type.equals("wordcloud")) {
				imgname = RserveService.getInstance().wordcloudImport("ccc.jpg", 
								path + "WEB-INF/RPro/templatecloud.R", folderPath + "/" +
								filename + ".csv", path);
			}else if (type.equals("pie")) {
				imgname = RserveService.getInstance().wordcloudImport("ccc.jpg", 
								path + "WEB-INF/RPro/templatePie.R", folderPath + "/" +
								filename + ".csv", path);
			}
			System.out.println(imgname);
			request.setAttribute("imgname",  imgname);
			String rtn = "/notice/RfromDB";
			return rtn;
		}
		return "/notice/RfromDB";
	}

	private Map txtFile(String item) {
		Map map = new HashMap();
		sqlSession = sqlSession();
		List<String> result = new ArrayList<String>();
		
		System.out.println("item" + item);
		/*Map paramMap = new HashMap();
		paramMap.put("item",  item);*/
		
		result = sqlSession.selectList(namespace + ".RList", item); 
			
		for (int i=0; i<result.size(); i++) {
			String content = result.get(i);
			content = content.replace("<", "");
			content = content.replace(">", "");
			content = content.replace("(", " ");
			content = content.replace(")", " ");
			content = content.replace(";", " ");
			content = content.replace("\\", " ");
			content = content.replace("/", " ");
			content = content.replace("=", " ");
			content = content.replace(",", " ");
			content = content.replace(".", " ");
			content = content.replace("-", " ");
			content = content.replace("\t", "");
				
			String arg[] = content.split("\\s+");
				
			for (String str : arg) {
				if (!str.equals("")) {
					if (map.containsKey(str))
						map.put(str, (Integer) map.get(str) + 1);
					else
						map.put(str,  1);
				}
			}
		}
		return map;
	}

	private void makecsv(Map map, String filename) throws IOException {
		System.out.println("csv:" + filename+".csv");
		PrintStream ps = null;
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(filename+".csv");
			ps = new PrintStream(fos);
			Iterator it = map.entrySet().iterator();
			while (it.hasNext()) {
				Entry et = (Entry) it.next();
				//System.out.println(et.getKey() + "," + et.getValue());
				ps.print(et.getKey() + "," + et.getValue() + "\r\n");
			}
			ps.flush(); ps.close();
		}catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
}