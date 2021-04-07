<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice22</title>
</head>
<body>
<%! 
String[] mChoices = {"hobby"};
String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
String[] telCompany = {"010", "011", "017", "070"};
String[] gNames = {"남", "여"};

ArrayList<String> getParameterNames(HttpServletRequest request)
{
	ArrayList<String> arr = new ArrayList<String>();
	Enumeration<String> e = request.getParameterNames();
	while (e.hasMoreElements())
	{
		arr.add(e.nextElement());
	}
	return arr;
}
boolean isMultipleChoice(String paramName)
{
	if (paramName == mChoices[0])
		return true;
	else
		return false;
}
%>
<%
	ArrayList<String> arr = new ArrayList<String>();
	arr = getParameterNames(request);
	
	for (int i = 0; i < arr.size(); i++)
	{
		if (isMultipleChoice(arr.get(i)) == true)
		{
			String values[] = request.getParameterValues(arr.get(i));
			out.print(arr.get(i) + ": ");
			for (int j = 0; j < values.length; j++)
			{
				out.println(values[j] + "/");
			}
			out.println("<br>");
		}
		else
		{
			String value = request.getParameter(arr.get(i));
			out.println(arr.get(i) + ": " + value + "<br>");
		}
	}
	
	out.println("<hr><h1>Processing Parameters</h1>");
	
	for (int i = 0; i < arr.size(); i++)
	{
		if (isMultipleChoice(arr.get(i)) == true)
		{
			String values[] = request.getParameterValues(arr.get(i));
			out.print(arr.get(i) + ": ");
			for (int j = 0; j < values.length; j++)
				out.println(hobbyNames[Integer.parseInt(values[i])] + "/");
			out.println("<br>");
		}
		else if (arr.get(i) == "gender")
			out.println(arr.get(i) + ": " + gNames[Integer.parseInt(request.getParameter(arr.get(i)))]);
		else if (arr.get(i) == "phone1")
			out.println(arr.get(i) + ": " + telCompany[Integer.parseInt(request.getParameter(arr.get(i)))]);
		else
		{
			String value = request.getParameter(arr.get(i));
			out.println(arr.get(i) + ": " + value + "<br>");
		}
	}
%>
</body>
</html>