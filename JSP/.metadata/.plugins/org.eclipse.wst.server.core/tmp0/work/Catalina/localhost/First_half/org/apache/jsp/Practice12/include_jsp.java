/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-10-16 14:25:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice12;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class include_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/Practice12/news.jsp", Long.valueOf(1570694291359L));
    _jspx_dependants.put("/Practice12/calendar.jsp", Long.valueOf(1571235907584L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<!--문헌정보학과 20170581 이효선\r\n");
      out.write("         웹브라우저 : 크롬 -->\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Practice 12</title>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

out.println("<h1 align=center>include 지시어 연습</h1><hr>");
out.println("<center>");
out.println("<table id=include>");
out.println("<tr>");
out.println("<td>");

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<!--문헌정보학과 20170581 이효선\r\n");
      out.write("         웹브라우저 : 크롬 -->\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>calendar</title>\r\n");
      out.write("<style>\r\n");
      out.write("\t#cal td{\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\twidth:30px; height:30px;\r\n");
      out.write("\tfont-weight:900;\r\n");
      out.write("\tborder:solid 1px gray;\r\n");
      out.write("\t} \r\n");
      out.write("\t#cal {\r\n");
      out.write("\tborder-collapse:collapse;\r\n");
      out.write("\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	out.println("<div align=center>");
	out.println("<table border=1px id=cal> ");
	out.println("<tr>");
	out.println("<td ><font color=red >일</font></td>");
	
	String s[] = {"월","화","수","목","금"};
	for (int i = 0; i < 5; i++)
		out.println("<th>" + s[i] + "</th>");
	
	out.println("<td><font color=blue >토</font></td>");
	out.println("</tr>");
	
	for (int i = 0; i < 4; i++)
	{
		out.println("<tr>");
		for (int j = 0; j < 7; j++)
			out.println("<td> &nbsp; </td>");
		out.println("</tr>");
	}
	
	out.println("</table>");
	out.println("</div>");

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
 
out.println("</td>");
out.println("<td width=30px></td>");
out.println("<td>");

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<!--문헌정보학과 20170581 이효선\r\n");
      out.write("         웹브라우저 : 크롬 -->\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>news</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

out.println("<h2 align=center >오늘의 공지사항</h2><hr>");
out.println("<ul>");
out.println("<li>차년도 약학대학 입학전형 기본계획 공지</li>");
out.println("<li>차년도 정시모집 원서접수 현황</li>");
out.println("</ul>");

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
 
out.println("</td>");
out.println("</tr>");
out.println("</table>");
out.println("</center>");

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}