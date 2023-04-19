package imageboard.dto;

/*
-- imageboard table
CREATE TABLE imageboard(
seq NUMBER NOT NULL,                  -- 1. 글번호
imageId VARCHAR2(20) NOT NULL,        -- 2. 상품 코드
imageName VARCHAR2(40) NOT NULL,      -- 3. 상품명
imagePrice NUMBER NOT NULL,           -- 4. 상품 단가
imageQty NUMBER NOT NULL,             -- 5. 상품 수량
imageContent VARCHAR2(4000) NOT NULL, -- 6. 상품 설명
imageFile VARCHAR2(200),              -- 7. 파일명
logtime DATE DEFAULT SYSDATE          -- 8. 등록일자
);
*/

public class ImageBoardDTO {

	private int seq;
	private String imageId;
	private String imageName;
	private int imagePrice;
	private int imageQty;
	private String imageContent;
	private String imageFile;
	private String logtime;
	
	public ImageBoardDTO() {
		super();
	}

	public ImageBoardDTO(int seq, String imageId, String imageName, int imagePrice, int imageQty, String imageContent,
			String imageFile, String logtime) {
		super();
		this.seq = seq;
		this.imageId = imageId;
		this.imageName = imageName;
		this.imagePrice = imagePrice;
		this.imageQty = imageQty;
		this.imageContent = imageContent;
		this.imageFile = imageFile;
		this.logtime = logtime;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getImageId() {
		return imageId;
	}

	public void setImageId(String imageId) {
		this.imageId = imageId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public int getImagePrice() {
		return imagePrice;
	}

	public void setImagePrice(int imagePrice) {
		this.imagePrice = imagePrice;
	}

	public int getImageQty() {
		return imageQty;
	}

	public void setImageQty(int imageQty) {
		this.imageQty = imageQty;
	}

	public String getImageContent() {
		return imageContent;
	}

	public void setImageContent(String imageContent) {
		this.imageContent = imageContent;
	}

	public String getImageFile() {
		return imageFile;
	}

	public void setImageFile(String imageFile) {
		this.imageFile = imageFile;
	}

	public String getLogtime() {
		return logtime;
	}

	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
	
}
