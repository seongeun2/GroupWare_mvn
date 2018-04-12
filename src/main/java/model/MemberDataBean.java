package model;

public class MemberDataBean {
	//TPUSER 테이블
	String name;		//사원 이름
	String phone;		//폰 번호
	String tel;			//사내 전화번호
	int emnum;			//사원 번호
	int tnum;			//팀 번호
	String id;			//사원 아이디
	String pw;			//사원 비밀번호
	String email;		//사원 이메일
	String position;	//사원 직위
	String joind;		//사원 입사일
	int login;			//로그인 상태(Default = 0)
	String signature;	//서명
	int filesize;
	
	//TPTEAM 테이블
	String tname;  //팀 이름
	
	//TPDEP 테이블
	int dnum;	//부서번호
	String dname;	//부서이름
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getEmnum() {
		return emnum;
	}
	public void setEmnum(int emnum) {
		this.emnum = emnum;
	}
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getJoind() {
		return joind;
	}
	public void setJoind(String joind) {
		this.joind = joind;
	}
	public int getLogin() {
		return login;
	}
	public void setLogin(int login) {
		this.login = login;
	}
	
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	
}
