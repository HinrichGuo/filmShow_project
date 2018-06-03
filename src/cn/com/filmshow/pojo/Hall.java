package cn.com.filmshow.pojo;

/**
 * @title Hall.java
 *<p>Ӱ����
 * @author �ΰ
 * @time 2018��3��29��/����9:15:11
 */
public class Hall {
    private Integer id;

    private String hallName;

    private Integer cinemaId;

    private String hallRow;

    private String hallColumn;

    private String black1;

    private String black2;

    private String black3;

    private String black4;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHallName() {
        return hallName;
    }

    public void setHallName(String hallName) {
        this.hallName = hallName == null ? null : hallName.trim();
    }

    public Integer getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(Integer cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getHallRow() {
        return hallRow;
    }

    public void setHallRow(String hallRow) {
        this.hallRow = hallRow == null ? null : hallRow.trim();
    }

    public String getHallColumn() {
        return hallColumn;
    }

    public Hall() {
		super();
	}

	public Hall(Integer id, String hallName, Integer cinemaId, String hallRow, String hallColumn, String black1,
			String black2, String black3, String black4) {
		super();
		this.id = id;
		this.hallName = hallName;
		this.cinemaId = cinemaId;
		this.hallRow = hallRow;
		this.hallColumn = hallColumn;
		this.black1 = black1;
		this.black2 = black2;
		this.black3 = black3;
		this.black4 = black4;
	}

	@Override
	public String toString() {
		return "Hall [id=" + id + ", hallName=" + hallName + ", cinemaId=" + cinemaId + ", hallRow=" + hallRow
				+ ", hallColumn=" + hallColumn + ", black1=" + black1 + ", black2=" + black2 + ", black3=" + black3
				+ ", black4=" + black4 + "]";
	}

	public void setHallColumn(String hallColumn) {
        this.hallColumn = hallColumn == null ? null : hallColumn.trim();
    }

    public String getBlack1() {
        return black1;
    }

    public void setBlack1(String black1) {
        this.black1 = black1 == null ? null : black1.trim();
    }

    public String getBlack2() {
        return black2;
    }

    public void setBlack2(String black2) {
        this.black2 = black2 == null ? null : black2.trim();
    }

    public String getBlack3() {
        return black3;
    }

    public void setBlack3(String black3) {
        this.black3 = black3 == null ? null : black3.trim();
    }

    public String getBlack4() {
        return black4;
    }

    public void setBlack4(String black4) {
        this.black4 = black4 == null ? null : black4.trim();
    }
}