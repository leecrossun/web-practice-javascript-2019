/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.61
 * Generated at: 2019-11-14 14:43:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.Practice24;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calc_005fresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" <!--문헌정보학과 20170581 이효선\r\n");
      out.write("    웹브라우저 최적화 : 크롬 브라우저-->\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Calculator</title>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<style>\r\n");
      out.write("\t\t#blue {\r\n");
      out.write("\t\t\tbackground-color:rgb(56,200,254);\r\n");
      out.write("\t\t\tfont-weight: bolder;\r\n");
      out.write("            font-size: 60px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            font-style: italic;\r\n");
      out.write("\t\t}\r\n");
      out.write("        * {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            font-weight: 100;\r\n");
      out.write("        }\r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	String op = request.getParameter("op");
	int result = 0;
	
	if (op.equals("+"))
		result = num1 + num2;
	else if (op.equals("-"))
		result = num1 + num2;
	else if (op.equals("-"))
		result = num1 + num2;
	else if (op.equals("*"))
		result = num1 * num2;
	else if (op.equals("/"))
		result = num1 / num2;


      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write(" var result = calc(num1, num2, op);\r\n");
      out.write("</script>\r\n");
      out.write("<form>\r\n");
      out.write("\t\t<table style=\"margin-left: auto; margin-right: auto;\" width=\"600\" height=\"100\">\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"blue\" height=\"40\">CalCuLaTor</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr><td rowspan=\"2\"><img src=\"image/cal.jpg\" width=\"300\"></td></tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<tr><td width=\"300\">\r\n");
      out.write("\t\t\t\t<input type=\"text\" size=\"10\" name = \"num1\" value=");
      out.print( num1 );
      out.write(" readonly>\r\n");
      out.write("\t\t\t\t<br><br>\r\n");
      out.write("\t\t\t\t<select name=\"op\">\r\n");
      out.write("\t\t\t\t\t\t<option value=\"+\">+</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"-\">-</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"*\">*</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"/\">/</option>\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t<br><br><input type=\"text\" size=\"10\" name = \"num2\" value=");
      out.print( num2 );
      out.write(" readonly>\r\n");
      out.write("\t\t\t\t<br><br><input type=\"submit\" value=\"=\" >\r\n");
      out.write("\t\t\t\t<br><br><input type=\"text\" size=\"10\" value= ");
      out.print( result );
      out.write("></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"blue\" height=\"100\"><br></td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr><td><br></td></tr>\r\n");
      out.write("\t\t</table>\r\n");
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
