/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-12-05 13:53:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice38;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class printing_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tags/greeting.tag", Long.valueOf(1575553996483L));
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

      out.write("<!--문헌정보학과 20170581 이효선\r\n");
      out.write("         웹브라우저 : 크롬 -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
 request.setCharacterEncoding("UTF-8"); 
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Practice 38</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

session.setAttribute("ID", request.getParameter("username"));
session.setAttribute("PW", request.getParameter("passwd"));

      out.write('\r');
      out.write('\n');
      if (_jspx_meth_ddwutag_005fgreeting_005f0(_jspx_page_context))
        return;
      out.write('\r');
      out.write('\n');
      if (_jspx_meth_ddwutag_005fgreeting_005f1(_jspx_page_context))
        return;
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

  private boolean _jspx_meth_ddwutag_005fgreeting_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  ddwutag:greeting
    org.apache.jsp.tag.webgreeting_tag _jspx_th_ddwutag_005fgreeting_005f0 = (new org.apache.jsp.tag.webgreeting_tag());
    _jsp_instancemanager.newInstance(_jspx_th_ddwutag_005fgreeting_005f0);
    _jspx_th_ddwutag_005fgreeting_005f0.setJspContext(_jspx_page_context);
    // /Practice38/printing.jsp(18,0) name = color type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_ddwutag_005fgreeting_005f0.setColor("pink");
    _jspx_th_ddwutag_005fgreeting_005f0.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_ddwutag_005fgreeting_005f0);
    return false;
  }

  private boolean _jspx_meth_ddwutag_005fgreeting_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  ddwutag:greeting
    org.apache.jsp.tag.webgreeting_tag _jspx_th_ddwutag_005fgreeting_005f1 = (new org.apache.jsp.tag.webgreeting_tag());
    _jsp_instancemanager.newInstance(_jspx_th_ddwutag_005fgreeting_005f1);
    _jspx_th_ddwutag_005fgreeting_005f1.setJspContext(_jspx_page_context);
    // /Practice38/printing.jsp(19,0) name = color type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_ddwutag_005fgreeting_005f1.setColor("green");
    _jspx_th_ddwutag_005fgreeting_005f1.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_ddwutag_005fgreeting_005f1);
    return false;
  }
}
