package jspbook.pr36;
import java.util.*;
public class LectureManager {
	private static final int times = 6;
	private static final int days = 5;
	private int[][] typeMatrix = new int[times][days];
	private int[][] titleMatrix = new int[times][days];
	private int[][] spanMatrix = new int[times][days];
	
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
