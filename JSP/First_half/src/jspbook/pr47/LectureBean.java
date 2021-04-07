package jspbook.pr47;

public class LectureBean {
	static final String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
	static final String[] titleNames = {"웹프로그래밍","운영체제","소프트웨어프로그래밍","데이터베이스개론","자료구조","네트워크","창의와감성","사회봉사"};
	static final String[] days = {"월","화","수","목","금","토"};
	
	private int type, title, day, time, consecutive;

	public LectureBean() {
		this.type = -1;
		this.title = -1;
		this.day = -1;
		this.time = -1;
		this.consecutive = -1;
	}

	//toString
	public String toString()
	{
		return typeNames[type] + "/" + titleNames[title] + "/" + days[day] + "/" + time + "/" + consecutive;
	}
	
	// getter setter
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getTitle() {
		return title;
	}

	public void setTitle(int title) {
		this.title = title;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public int getConsecutive() {
		return consecutive;
	}

	public void setConsecutive(int consecutive) {
		this.consecutive = consecutive;
	}

	public static String[] getTypenames() {
		return typeNames;
	}

	public static String[] getTitlenames() {
		return titleNames;
	}
	
	public static String[] getDays() {
		return days;
	}
	
}
