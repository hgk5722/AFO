/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-05-25 09:16:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import bbs.BbsDAO;
import bbs.Bbs;
import java.util.ArrayList;

public final class bbs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/fix/header.jsp", Long.valueOf(1684651070000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.io.PrintWriter");
    _jspx_imports_classes.add("bbs.Bbs");
    _jspx_imports_classes.add("bbs.BbsDAO");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\", initial-scale=\"1.0\" >\n");
      out.write("\n");
      out.write("<title> AFO 전체 게시판 </title>\n");
      out.write("\n");
      out.write("<!-- 링크에 파란불 안들어오게 하기 -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"fix/text_decoration.css\">\n");
      out.write("\n");
      out.write("<!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
 
	    String userID = null;
	    if (session.getAttribute("userID") != null){
	        userID = (String) session.getAttribute("userID");
	    }
	    int pageNumber = 1; // 기본 페이지로 1을 설정
	    if (request.getParameter("pageNumber") != null){
	    	pageNumber = Integer.parseInt(request.getParameter("pageNumber")); // 가져온 pageNumber를 정수형으로 변화해서 저장
	    }
    
      out.write("\n");
      out.write("\n");
      out.write("	<!-- 공통 네비게이션 바  -->\n");
      out.write("	");
      out.write('\n');
      out.write('\n');
 request.setCharacterEncoding("UTF-8"); 
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width\", initial-scale=\"1\">\n");
      out.write("<title> header.jsp </title>\n");
      out.write("\n");
      out.write("<!-- CSS only -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("<!-- 부트스트랩 아이콘 cdn -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- TOP BTN[S] -->\n");
      out.write("<a id=\"MOVE_TOP_BTN\" href=\"#\">TOP</a>\n");
      out.write("<style>\n");
      out.write("a#MOVE_TOP_BTN {\n");
      out.write("	position: fixed;\n");
      out.write("	right: 2%;\n");
      out.write("	bottom: 50px;\n");
      out.write("	display: none;\n");
      out.write("	z-index: 999;\n");
      out.write("	padding:10px;\n");
      out.write("	background-color:#2490BF;\n");
      out.write("	color:#FFFFE0;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script src=\"//code.jquery.com/jquery.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("    $(function() {\n");
      out.write("        $(window).scroll(function() {\n");
      out.write("            if ($(this).scrollTop() > 500) {\n");
      out.write("                $('#MOVE_TOP_BTN').fadeIn();\n");
      out.write("            } else {\n");
      out.write("                $('#MOVE_TOP_BTN').fadeOut();\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        $(\"#MOVE_TOP_BTN\").click(function() {\n");
      out.write("            $('html, body').animate({\n");
      out.write("                scrollTop : 0\n");
      out.write("            }, 400);\n");
      out.write("            return false;\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("</script>\n");
      out.write("<!-- TOP BTN[E] -->\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");

	String id = null;		// 네비게이션 바에서 로그인의 유무만 파악하는 변수
	if (session.getAttribute("userID") != null) {
		id = (String) session.getAttribute("userID");
	}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- 네비게이션 바 -->\n");
      out.write("<nav class=\"navbar navbar-expand-lg bg-light\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.jsp\"> <img src=\"logo/AFO_logo.png\" alt=\"AFO_logo\" style=\"width:100px; height: 40px; border: 0;\">  </a>\n");
      out.write("    \n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    \n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("      <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"Movie.jsp\"> <b> Movie </b> </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"Drama.jsp\">\n");
      out.write("          <b> Drama </b> </a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" aria-current=\"page\" href=\"Webtoon.jsp\">\n");
      out.write("          <b> Webtoon </b> </a>\n");
      out.write("        </li>  \n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    ");

    	if (id != null) {
   	
      out.write("\n");
      out.write("   		<button type=\"button\" class=\"btn btn-outline-success\" onclick=\"location.href='logoutAction.jsp'\">로그아웃</button>\n");
      out.write("   		<button type=\"button\" class=\"btn btn-outline-danger\" onclick=\"location.href='userInfo.jsp'\">내정보</button>\n");
      out.write("   		<button type=\"button\" class=\"btn btn-outline-primary\" onclick=\"location.href='jjimBbs.jsp?pageNumber=1'\"> 찜목록 </button>\n");
      out.write("    ");

    	} else {
    
      out.write("\n");
      out.write("    	<button type=\"button\" onclick=\"location.href='userLogin.jsp'\" class=\"btn btn-outline-success\">로그인</button>\n");
      out.write("    ");
 
    	} 
    
      out.write("\n");
      out.write("    \n");
      out.write("    <button type=\"button\" onclick=\"location.href='bbs_collection.jsp'\" class=\"btn btn-outline-dark\">게시판</button>    \n");
      out.write("    \n");
      out.write("<form method=\"post\" name=\"search\" action=\"searchbbs.jsp\">\n");
      out.write("    <div style=\"display:flex; align-items:center;\">\n");
      out.write("        <select class=\"form-select\" aria-label=\"Default select example\" name=\"searchField\" style=\"flex:0.5;\">\n");
      out.write("            <option value=\"0\"> 선택 </option>\n");
      out.write("            <option value=\"bbsTitle\"> 제목 </option>\n");
      out.write("            <option value=\"userID\"> 작성자 </option>\n");
      out.write("        </select>\n");
      out.write("        <input type=\"text\" class=\"form-control\" placeholder=\"검색어 입력\" name=\"searchText\" maxlength=\"100\" style=\"flex:2;\">\n");
      out.write("        <button type=\"submit\" class=\"btn btn-outline-success\">검색</button>\n");
      out.write("    </div>\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<!-- JavaScript Bundle with Popper -->\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("    \n");
      out.write("	<div class= \"container\">\n");
      out.write("	    	<div= \"row\">\n");
      out.write("	    	    <table class= \"table table-stripped\" style= \"text-align: center; boarder: 1px solid #dddddd\">\n");
      out.write("	    	    	<thead>\n");
      out.write("	    	    	<tr>\n");
      out.write("	    	    		<th style= \"background-color: #000000; text-align: center; color:#F4FFFF;\">번호</th>\n");
      out.write("	    	    		<th style= \"background-color: #000000; text-align: center; color:#F4FFFF;\">제목</th>\n");
      out.write("	    	    		<th style= \"background-color: #000000; text-align: center; color:#F4FFFF;\">작성자</th>\n");
      out.write("	    	    		<th style= \"background-color: #000000; text-align: center; color:#F4FFFF;\">작성일</th>\n");
      out.write("	    	    		<th style= \"background-color: #000000; text-align: center; color:#F4FFFF;\">조회수</th>\n");
      out.write("	    	    	</tr>\n");
      out.write("	    	    	</thead>\n");
      out.write("	    	    	<tbody>\n");
      out.write("	    	    		<tr>\n");
      out.write("	    	    			");

	    	    				BbsDAO bbsDAO = new BbsDAO();
	    	    				ArrayList<Bbs> list = bbsDAO.getList(pageNumber); // list는 현재의 pageNumber에서 가져온 게시글 리스트가 된다.
	    	    				for (int i = 0; i < list.size(); i++) { // list크기 만큼 반복(getList()의 쿼리가 10개까지 잘라서 사이즈는 항상 10이다.)
	    	    			
      out.write("\n");
      out.write("	    	    			<tr>\n");
      out.write("	    	    				<td> <b> ");
      out.print( list.get(i).getBbsID() );
      out.write(" </b> </td> <!-- 현재 게시글의 게시판 번호 -->\n");
      out.write("	    	    				<td style=\"background-color:#dcdcdc\"> <b> <a href =\"view.jsp?bbsID=");
      out.print( list.get(i).getBbsID());
      out.write('"');
      out.write('>');
      out.print(list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">", "&gt;").replaceAll("\n","<br>") );
      out.write("</a> </b> </td>\n");
      out.write("	 <!-- 제목을 누를 때는 해당 게시글의 내용을 보여주는 페이지로 넘어가야 하기에 view.jsp페이지로 해당 게시글 번호를 bbsID변수로 보내줌. 그래서 <a>태그안에 있음 -->   \n");
      out.write("	    	    				<td> <b> ");
      out.print( list.get(i).getUserID() );
      out.write(" </b> </td> <!-- 작성자(userID) -->\n");
      out.write("	    	    				<td> <b> ");
      out.print( list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" );
      out.write(" </b> </td> <!-- 시간표현 -->\n");
      out.write("	    	    				<td> <b> ");
      out.print(list.get(i).getBbsCount());
      out.write(" </b> </td> <!-- 표에 카운트 추가 -->\n");
      out.write("	    	    			</tr>\n");
      out.write("	    	    			");

	    	    				}
	    	    			
      out.write("\n");
      out.write("	    	    		</tr>\n");
      out.write("	    	    			\n");
      out.write("	    	    	</tbody>\n");
      out.write("	    	    </table>\n");
      out.write("	    	    \n");
      out.write("	    	    ");

	    	    	if(pageNumber != 1) {
	    	    
      out.write("		<!-- 첫번째 페이지가 아니므로 이전 버튼 생성 -->\n");
      out.write("	    	    		<a href= \"bbs.jsp?pageNumber=");
      out.print(pageNumber -1);
      out.write("\" class=\"btn btn-outline-success\">이전</a>\n");
      out.write("	    	    ");
 
	    	    	}	
	    	    if(bbsDAO.nextPage(pageNumber + 1)) {
	    	    
      out.write("		<!-- pageNumber를 1 크게한 자기자신을 호출 -> 앞의 if문에서 request로 pageNumber갱신 --> \n");
      out.write("	    	    		<a href= \"bbs.jsp?pageNumber=");
      out.print(pageNumber +1);
      out.write("\" class=\"btn btn-outline-success\">다음</a>\n");
      out.write("	    	    		\n");
      out.write("	    	    ");
 
	    	    	}
	    	    
      out.write("\n");
      out.write("	    	    <a href= \"write.jsp\" class=\"btn btn-primary\" style=\"color : #F4FFFF;\" >토론방 생성</a>\n");
      out.write("	    	</div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- JavaScript Bundle with Popper -->\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
