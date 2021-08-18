package board.comment.db;

import java.sql.Timestamp;

public class CDto {
	
	private int cId, cBid;
	String cUserId, cNickname, cContent;
	Timestamp cDate;
	
	public CDto() {}
	
	public CDto(int cId, int cBid, String cUserId, String cNickname, String cContent, Timestamp cDate){
		this.cId = cId;
		this.cBid = cBid;
		this.cUserId = cUserId;
		this.cNickname = cNickname;
		this.cContent = cContent;
		this.cDate = cDate;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public int getcBid() {
		return cBid;
	}

	public void setcBid(int cBid) {
		this.cBid = cBid;
	}

	public String getcUserId() {
		return cUserId;
	}

	public void setcUserId(String cUserId) {
		this.cUserId = cUserId;
	}

	public String getcNickname() {
		return cNickname;
	}

	public void setcNickname(String cNickname) {
		this.cNickname = cNickname;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public Timestamp getcDate() {
		return cDate;
	}

	public void setcDate(Timestamp cDate) {
		this.cDate = cDate;
	}
}
