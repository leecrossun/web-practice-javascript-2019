/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-12-10 17:36:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice45;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import jspbook.pr45.*;

public final class addr_005flist_005fgroup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      jspbook.pr45.AddrManager am = null;
      synchronized (application) {
        am = (jspbook.pr45.AddrManager) _jspx_page_context.getAttribute("am", javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        if (am == null){
          am = new jspbook.pr45.AddrManager();
          _jspx_page_context.setAttribute("am", am, javax.servlet.jsp.PageContext.APPLICATION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("<h2>주소록(그룹별 보기)</h2>\r\n");
      out.write("<hr>\r\n");
      out.write("<a href=\"addr_form.jsp\">주소추가</a>\r\n");
      out.write("<table border=\"1\" width=\"500\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");

		for(AddrBean ab : am.getAddrGroupList()){
	
      out.write("\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>");
      out.print(ab.getUsername() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(ab.getTel() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(ab.getEmail() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(ab.getSex() );
      out.write("</td>\r\n");
      out.write("\t\t<td>");
      out.print(ab.getGroup() );
      out.write("</td>\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
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