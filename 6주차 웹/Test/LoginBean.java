package Test;

public class LoginBean {
/*
  사용자가 입력한 계정 정보를 매핑하는 빈즈 클래스로써, 미리 저장된 계정 값과 비교해 로그인 성공 여부를 반환하는 
  checkUser() 메소드를 포함한다. 
 */
	
	private String userid;
	private String passwd;
	
	final String _userid ="myuser";
	final String _passwd = "1234";
	
	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
	
}
