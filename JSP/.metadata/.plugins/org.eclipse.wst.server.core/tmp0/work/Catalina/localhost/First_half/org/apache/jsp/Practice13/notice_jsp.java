/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-10-10 08:21:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice13;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class notice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
    java.lang.Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus(javax.servlet.http.HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
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
      out.write("<head>\r\n");
      out.write("     <!--문헌정보학과 20170581 이효선\r\n");
      out.write("    웹브라우저 최적화 : 크롬 브라우저-->\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>오류 메시지</title>\r\n");
      out.write("    <style>\r\n");
      out.write("        *{\r\n");
      out.write("            font-weight: bolder;\r\n");
      out.write("        }\r\n");
      out.write("         table {\r\n");
      out.write("             align-content: center;\r\n");
      out.write("             text-align: center;\r\n");
      out.write("             width:600px;\r\n");
      out.write("        }\r\n");
      out.write("        #orange{\r\n");
      out.write("            background-color: #ffdab9;\r\n");
      out.write("        }\r\n");
      out.write("        #yellow{\r\n");
      out.write("            background-color: #ffefd5;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

out.println("<center>");
out.println(" <img src=\"image/eclass_title.jpg\">");      
out.println("<table cellpadding=\"10px\">");        
out.println("<tr>");
out.println("<td id=\"orange\">오류가 발생했습니다</td>");
out.println("</tr>");
out.println("<tr>");
out.println("<td id=\"yellow\">");
out.println("<br><br><br><br>");
out.println("<img src=\"image/flower.gif\">");

out.println("<br>오류 발생시간 : ");

      out.write('\r');
      out.write('\n');
      out.print( new java.util.Date() );
      out.write('\r');
      out.write('\n');

out.println("<br><br>최대한 빨리 조치하겠습니다.<br><br><br>");
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
