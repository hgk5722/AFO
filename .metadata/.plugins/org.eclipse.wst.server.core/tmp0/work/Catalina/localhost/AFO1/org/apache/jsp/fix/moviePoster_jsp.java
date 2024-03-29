/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.70
 * Generated at: 2023-01-06 11:07:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.fix;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class moviePoster_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>poster.jsp</title>\n");
      out.write("\n");
      out.write("<!-- 영화 포스터 크기 조절 css -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"fix/MovieCSS.css\">\n");
      out.write("\n");
      out.write("<!-- 슬릭 css -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css\"/>\n");
      out.write("\n");
      out.write("<!-- 슬릭 제이쿼리 -->\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- 슬릭 js -->\n");
      out.write("<script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- 폰트 어썸 cdn -->\n");
      out.write("<script src=\"https://kit.fontawesome.com/f727c89db8.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("	$(function(){\n");
      out.write("		 $('.slider-for').slick({\n");
      out.write("			  slidesToShow: 1,\n");
      out.write("			  slidesToScroll: 1,\n");
      out.write("			  arrows: false,\n");
      out.write("			  fade: true,\n");
      out.write("			  asNavFor: '.slider-nav'\n");
      out.write("			});\n");
      out.write("			\n");
      out.write("	});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("	$(function(){\n");
      out.write("		$('.slider-nav').slick({\n");
      out.write("			  slidesToShow: 3,\n");
      out.write("			  slidesToScroll: 1,\n");
      out.write("			  asNavFor: '.slider-for',\n");
      out.write("			  dots: true,\n");
      out.write("			  centerMode: true,\n");
      out.write("			  focusOnSelect: true,\n");
      out.write("			  arrows: true, /* 화살표  */\n");
      out.write("				prevArrow: \"<i class='prev_arrow fa-solid fa-circle-arrow-left'></i>\",\n");
      out.write("				  //prevArrow: \"<button type='button' class='slick-prev'>이전</button>\",\n");
      out.write("				nextArrow: \"<i class='next_arrow fa-solid fa-circle-arrow-right'></i>\",\n");
      out.write("			  \n");
      out.write("			});	\n");
      out.write("	})\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script> \n");
      out.write("	$(function()	{\n");
      out.write("		$('.mainSlide').slick({\n");
      out.write("			slidesToShow: 3,\n");
      out.write("			slidesToScroll: 3,\n");
      out.write("			arrows: true,\n");
      out.write("			prevArrow: \"<i class='prev_arrow fa-solid fa-circle-chevron-left'></i>\",\n");
      out.write("			  //prevArrow: \"<button type='button' class='slick-prev'>이전</button>\",\n");
      out.write("			nextArrow: \"<i class='next_arrow fa-thin fa-circle-chevron-right'></i>\",\n");
      out.write("			dots: true,\n");
      out.write("			\n");
      out.write("			\n");
      out.write("		});\n");
      out.write("	}); \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script> \n");
      out.write("	$(function()	{\n");
      out.write("		$('.multiple-items').slick({\n");
      out.write("			  infinite: true,\n");
      out.write("			  slidesToShow: 3,\n");
      out.write("			  slidesToScroll: 3,\n");
      out.write("			  autoplay: true,\n");
      out.write("			  autoplaySpeed: 2000,\n");
      out.write("			  arrows: true,\n");
      out.write("			  prevArrow: \"<i class='prev_arrow fa-solid fa-circle-arrow-left'></i>\",\n");
      out.write("			  //prevArrow: \"<button type='button' class='slick-prev'>이전</button>\",\n");
      out.write("			  nextArrow: \"<i class='next_arrow fa-solid fa-circle-arrow-right'></i>\",\n");
      out.write("			  //nextArrow: \"<button type='button' class='slick-next'>다음</button>\"\n");
      out.write("			});\n");
      out.write("	}); \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("	$(function()	{\n");
      out.write("		$('.test').slick({\n");
      out.write("			  infinite: true,\n");
      out.write("			  slidesToShow: 3,\n");
      out.write("			  slidesToScroll: 3,\n");
      out.write("			  dots: true,\n");
      out.write("			  dotsClass: true,\n");
      out.write("			  \n");
      out.write("			  autoplay: true,\n");
      out.write("			  autoplaySpeed: 2000, \n");
      out.write("			  arrows: true,\n");
      out.write("			  prevArrow: \"<i class='prev_arrow fa-solid fa-circle-arrow-left'></i>\",\n");
      out.write("			  //prevArrow: \"<button type='button' class='slick-prev'>이전</button>\",\n");
      out.write("			  nextArrow: \"<i class='next_arrow fa-solid fa-circle-arrow-right'></i>\",\n");
      out.write("		});\n");
      out.write("	}); \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<script> \n");
      out.write("	$(function()	{\n");
      out.write("		$('.test2').slick({\n");
      out.write("			infinite: true , /* 맨끝이미지에서 끝나지 않고 다시 맨앞으로 이동 */\n");
      out.write("	        slidesToShow: 3, /* 화면에 보여질 이미지 갯수*/\n");
      out.write("	        slidesToScroll: 3,  /*  스크롤시 이동할 이미지 갯수 */\n");
      out.write("	        autoplay: true, /* 자동으로 다음이미지 보여주기 */\n");
      out.write("	        arrows: true, /* 화살표  */\n");
      out.write("			prevArrow: \"<i class='prev_arrow fa-solid fa-circle-arrow-left'></i>\",\n");
      out.write("			  //prevArrow: \"<button type='button' class='slick-prev'>이전</button>\",\n");
      out.write("			nextArrow: \"<i class='next_arrow fa-solid fa-circle-arrow-right'></i>\",\n");
      out.write("	        \n");
      out.write("	        dots:true, /*  아래점  */\n");
      out.write("	        \n");
      out.write("	        autoplaySpeed:10000,/* 다음이미지로 넘어갈 시간 */\n");
      out.write("	        speed:1000 , /* 다음이미지로 넘겨질때 걸리는 시간 */\n");
      out.write("	        pauseOnHover:true, /*  마우스 호버시 슬라이드 이동 멈춤 */\n");
      out.write("	       //vertical:true,/*  세로방향으로 슬라이드를 원하면 추가하기// 기본값 가로방향 슬라이드*/\n");
      out.write("	       responsive: [\n");
      out.write("	         { /* 반응형웹*/\n");
      out.write("	                 breakpoint: 960, /*  기준화면사이즈 */\n");
      out.write("	                 settings: {slidesToShow:2 } /*  사이즈에 적용될 설정 */\n");
      out.write("	          },\n");
      out.write("	          { /* 반응형웹*/\n");
      out.write("	                 breakpoint: 768, /*  기준화면사이즈 */\n");
      out.write("	                 settings: {slidesToShow:1 } /*  사이즈에 적용될 설정 */\n");
      out.write("	          }\n");
      out.write("	        ]\n");
      out.write("			});\n");
      out.write("	}); \n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("	<p> <h2> <b> 박스오피스 순위 </b> </h2> </p>\n");
      out.write("	\n");
      out.write("	\n");
      out.write("	<div class=\"multiple-items\">\n");
      out.write("			<div><img src=\"source/avatar2.jpg\">아바타 물의 길</div>\n");
      out.write("			<div><img src=\"source/영웅.jpeg\">영웅</div>\n");
      out.write("			<div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("			<div><img src=\"source/올빼미.jpeg\">올빼미</div>\n");
      out.write("			<div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("	<p> <h2> <b> slider-for, slider-nav 동기화 </b> </h2> </p>\n");
      out.write("	<div class=\"	slider-for\">\n");
      out.write("	  <div><img src=\"source/avatar2.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("	  <div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/psy_age.png\"></div>\n");
      out.write("	</div>\n");
      out.write("<p> 동기화 구분선 </p>\n");
      out.write("	<div class=\"	slider-nav slick-dots\">\n");
      out.write("	  <div><img src=\"source/avatar2.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("	  <div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/psy_age.png\"></div>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("\n");
      out.write("\n");
      out.write("	<p> <h2> <b> mainSlide 넷플릭스 top 영화 </b> </h2> </p>\n");
      out.write("	<div class=\"mainSlide\">\n");
      out.write("	  <div><img src=\"source/avatar2.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	  <div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("	  <div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("	  <div><img src=\"source/psy_age.png\"></div>\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("	<br>\n");
      out.write("	<p> <h2> <b> multiple-items 왓챠 top 영화 </b> </h2>\n");
      out.write("	<div class=\"multiple-items\">\n");
      out.write("			<div><img src=\"source/avatar2.jpg\"></div>\n");
      out.write("			<div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("			<div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("	\n");
      out.write("	\n");
      out.write("	\n");
      out.write("	<br>\n");
      out.write("	<p> <h2> <b> test 뭘 적어야 할지 모르겠다 </b> </h2>\n");
      out.write("	<div class=\"test slick-dots\">\n");
      out.write("			<div><img src=\"source/avatar2.jpg\">아바타2</div>\n");
      out.write("			<div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("			<div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("	<br>\n");
      out.write("	<p> <h2> <b> test2 뭘 적으면 좋을까2 </b> </h2>\n");
      out.write("	<div class=\"test2 slick-dots\">\n");
      out.write("			<div><img src=\"source/avatar2.jpg\"></div>\n");
      out.write("			\n");
      out.write("			<div><img src=\"source/신비아파트.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/영웅.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/오늘 밤, 이 세계에서 이 사랑이 사라진다 해도.png\"></div>\n");
      out.write("			<div><img src=\"source/올빼미.jpeg\"></div>\n");
      out.write("			<div><img src=\"source/인터스텔라.jpg\"></div>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("	\n");
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
