package model;

import java.util.Date;

public class NoticeDataBean {

	private int 	nid;		//Notice ID
	private int 	fromid;		//SABUN of Sender
	private int 	toid;		//SABUN of Receiver
	private String 	title;
	private String 	content;
	private String 	status;		//0: writing, 1: notread, 2: read, 3:saved
	private Date 	indate;		//date sent or received
	
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public int getFromid() {
		return fromid;
	}
	public void setFromid(int fromid) {
		this.fromid = fromid;
	}
	public int getToid() {
		return toid;
	}
	public void setToid(int toid) {
		this.toid = toid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
}
	
