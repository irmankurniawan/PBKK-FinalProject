package id.kel8.catdogdaycare.model;

public class Member {
	private String memberId;
	private String memberName;
	private String memberEmail;
	private String memberPhone;
	
	public Member() {
	}
	
	public Member(String memberId, String memberName, String memberEmail, String memberPhone) {
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
	}
	
	public String getMemberId() {
		return memberId;
	}
	
	public void setMemberId(String memberId) {
		this.memberId = memberId;
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