package id.kel8.catdogdaycare.model;

public class Member {
	private String memberUname;
	private String memberName;
	private String memberEmail;
	private String memberPhone;
	private String memberPassword;
	
	public Member() {
	}
	
	public Member(String memberUname, String memberName, String memberEmail, String memberPhone,
			String memberPassword) {
		this.memberUname = memberUname;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.memberPassword = memberPassword;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberUname() {
		return memberUname;
	}
	
	public void setMemberUname(String memberUname) {
		this.memberUname = memberUname;
	}
	
	public String getMemberName() {
		return memberName;
	}
	
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	public String getMemberEmail() {
		return memberEmail;
	}
	
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	public String getMemberPhone() {
		return memberPhone;
	}
	
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	
}