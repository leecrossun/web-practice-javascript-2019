package jspbook.pr40;
import java.util.*;
public class LectureManager {
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];
	private int[][] titleMatrix = {
			{1,1,1,1,1},
			{1,1,1,1,1},
			{1,1,1,1,1},
			{1,1,1,1,1},
			{1,1,1,1,1},
			{1,1,1,1,1}
	};
	private int[][] spanMatrix = {
			{-1,-1,-1,-1,-1},
			{-1,-1,-1,-1,-1},
			{-1,-1,-1,-1,-1},
			{-1,-1,-1,-1,-1},
			{-1,-1,-1,-1,-1},
			{-1,-1,-1,-1,-1}
	};
	
	public int[][] getTypeMatrix() {
		return typeMatrix;
	}

	public void setTypeMatrix(int[][] typeMatrix) {
		this.typeMatrix = typeMatrix;
	}

	public int[][] getTitleMatrix() {
		return titleMatrix;
	}

	public void setTitleMatrix(int[][] titleMatrix) {
		this.titleMatrix = titleMatrix;
	}

	public int[][] getSpanMatrix() {
		return spanMatrix;
	}

	public void setSpanMatrix(int[][] spanMatrix) {
		this.spanMatrix = spanMatrix;
	}
	ArrayList<LectureBean> lecturelist = new ArrayList<LectureBean>();
	
	public List<LectureBean> getLectureList()
	{
		return lecturelist;
	}
	
	public void add(LectureBean lbean)
	{
		lecturelist.add(lbean);
	}
	
	public void buildMatrix()
	{
		for (int i = 0; i < lecturelist.size(); i++)
		{
				typeMatrix[getLectureList().get(i).getTime()-1][getLectureList().get(i).getDay()] = getLectureList().get(i).getType()+1;
				titleMatrix[getLectureList().get(i).getTime()-1][getLectureList().get(i).getDay()] = getLectureList().get(i).getTitle();
				spanMatrix[getLectureList().get(i).getTime()-1][getLectureList().get(i).getDay()] = getLectureList().get(i).getConsecutive();
				if (getLectureList().get(i).getConsecutive()!=1)
				{
					int j = 1;
					while (j < getLectureList().get(i).getConsecutive()) 
					{
						spanMatrix[getLectureList().get(i).getTime()-1+j][getLectureList().get(i).getDay()] = 0;
						j++;
					}
				}
		}
	}
	public static void printMatrix(int[][] matrix)
	{
		for (int i = 0; i < times; i++)
		{
			for (int j = 0; j < days; j++)
			{
				System.out.print(matrix[i][j] + " ");
			}
			System.out.println("");
		}
	}
}
