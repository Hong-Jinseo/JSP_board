package board.post.db;

import java.sql.Timestamp;

public class BDto {
	int bId;
	String bName;
	String bTitle;
	String bContent;
	int bHit;
	Timestamp bDate;
	String bUserId;
	
	public BDto() {
		
	}
	
	public BDto(int bId, String bName, String bTitle, String bContent, int bHit, Timestamp bDate, String bUserId) {
		this.bId = bId;
		this.bName = bName;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bHit = bHit;
		this.bDate = bDate;
		this.bUserId = bUserId;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbHit() {
		return bHit;
	}

	public void setbHit(int bHit) {
		this.bHit = bHit;
	}

	public Timestamp getbDate() {
		return bDate;
	}

	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}
	
	public String getbUserId() {
		return bName;
	}

	public void setbUserId(String bUserId) {
		this.bUserId = bUserId;
	}
}