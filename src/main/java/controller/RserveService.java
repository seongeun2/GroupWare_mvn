package controller;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;

import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.REngineException;
import org.rosuda.REngine.Rserve.RConnection;

public class RserveService {
	
	private static RserveService instance = new RserveService();
	public static void main(String[] args) {}
	public static RserveService getInstance() { return instance; }
	public String RScript(String imgname, String text, String path) throws REXPMismatchException, REngineException {
		RConnection c = new RConnection();
		String imgpath = path + "img" + "/" + imgname;
		boolean chkmap = text.contains("ggmap");
		
		try {
			BufferedReader in = new BufferedReader(new StringReader(text));
			String s;
			
			if (!chkmap) 
				c.parseAndEval("png('" + imgpath + "', width=400, height=400)");
			
			while ((s = in.readLine()) != null) {
				System.out.println(s);
				c.parseAndEval(s);
			}
			
			if (chkmap) c.parseAndEval("ggsave('" + imgpath + "', dpi=500");
			if (!chkmap) c.parseAndEval("dev.off()");
			
			c.close(); in.close(); return imgname;
		}catch (IOException e) {
			e.printStackTrace();
			return "";
		}finally {}
	}
	
	public String wordcloudImport(String imgname, String scriptfile, String csvfile, String path) {
		RConnection c;
		System.out.println(scriptfile);
		try {
			c = new RConnection();
			BufferedReader in = new BufferedReader(new FileReader(scriptfile));
			String s;
			System.out.println("***" + csvfile);
			while ((s = in.readLine()) != null) {
				s = s.replace("[img]", path + "img/" + imgname);
				s = s.replace("[filename]", csvfile);
				System.out.println(s);
				c.parseAndEval(s);	}
			System.out.println("close");
			c.close(); in.close();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			return imgname;
		}
	}

}
