/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-11-06 17:01:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice22;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class member3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>member3</title>\r\n");
      out.write("<style>\r\n");
      out.write("\ttable {\r\n");
      out.write("\t\tborder: 1px solid #919191;\r\n");
      out.write("\t\tborder-collapse:collapse;\r\n");
      out.write("\t}\r\n");
      out.write("\t#title {\r\n");
      out.write("\t\ttext-align:center;\r\n");
      out.write("\t\tfont-weight:bold;\r\n");
      out.write("\t\tbackground-color:#ECECEC;\r\n");
      out.write("\t}\r\n");
      out.write("    input.imageAlign { vertical-align: middle; }\r\n");
      out.write("    \r\n");
      out.write("    textarea {\r\n");
      out.write("        width: 450px;\r\n");
      out.write("        height: 70px;\r\n");
      out.write("    }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form name=\"join\" method=\"POST\" action=\"Practice22.jsp\">\r\n");
      out.write("\t<div align=\"center\">\r\n");
      out.write("\t<img src=\"image/eclass_title.jpg\"><br>\r\n");
      out.write("\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<th colspan=\"2\" id=\"title\">회원가입</th>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">아이디</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" size=\"10\" name = \"id\">\r\n");
      out.write("\t\t\t\t\t<input type=image src=\"image/check.gif\" class=\"imageAlign\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">패스워드</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"password\" size=\"9px\" name = \"pw\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">성별</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"gender\" value=\"0\">남\r\n");
      out.write("\t\t\t\t\t<input type=\"radio\" name=\"gender\" value=\"1\" checked>여\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">국적</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" size=\"18px\" value=\"대한민국\">\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" value=\"국적변경\" disabled>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">휴대폰</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<select name = phone>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"0\">010</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"1\">011</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"2\">017</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"3\">070</option>\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" size=\"5px\" name = phone2>-\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" size=\"5px\" name = phone3>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">이메일</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"text\" size=\"40px\" name = \"email\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">생일</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"date\" name = \"birth\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">관심분야</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"hobby\" value=\"0\">뉴스\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"hobby\" value=\"1\" checked>맛집\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"hobby\" value=\"2\">책\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"hobby\" value=\"3\">영화\r\n");
      out.write("\t\t\t\t\t<input type=\"checkbox\" name=\"hobby\" value=\"4\">여행\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">가입인사</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<textarea name = \"memo\">회원들에게 간단한 가입인사를 남겨주세요</textarea>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td id=\"title\">증명사진</td>\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t<input type=\"file\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"title\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"가입하기\">\r\n");
      out.write("\t\t\t\t\t<input type=\"reset\" value=\"다시작성\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
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