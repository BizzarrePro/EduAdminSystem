<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>功能导航</title>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/menustyle.css">
  <link rel="stylesheet" type="text/css" href="css/table.css">
  <link href="css/style.css" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="js/nav.js"></script>
  <link href="css/nav.css" type="text/css" rel="stylesheet" />
  <script type="text/javascript" src="http://libs.baidu.com/jquery/1.8.3/jquery.js">
  </script>
</head>
<body>
  <div id="container">

    <div id="banner">
  
    <script type="text/javascript">
  function dropMenu(obj){
  $(obj).each(function(){
    var theSpan = $(this);
    var theMenu = theSpan.find(".submenu");
    var tarHeight = theMenu.height();
    theMenu.css({height:0,opacity:0});
    theSpan.hover(
      function(){
        $(this).addClass("selected");
        theMenu.stop().show().animate({height:tarHeight,opacity:1},400);
      },
      function(){
        $(this).removeClass("selected");
        theMenu.stop().animate({height:0,opacity:0},400,function(){
          $(this).css({display:"none"});
        });
      }
    );
  });
}

$(document).ready(function(){
  
  dropMenu(".drop-menu-effect");

});
</script>
<div class="navbox">
  <div class="nav">
    <ul class="clearfix">
      <li><a class="drop-menu-effect" target="-self" href="homepage_student.jsp"><span>首页</span></a></li>
      <li class="drop-menu-effect"> <a target="-self" href="#"><span>个人信息</span></a>
        <ul class="submenu">
          <li><a href="viewStudent.jsp">查看个人信息</a></li>
          <li><a href="modifyStudent.jsp">更改个人信息</a></li>
        </ul>
      </li>
      <li class="drop-menu-effect"> <a target="-self" href="#"><span>选课</span></a>
        <ul class="submenu">
          <li><a href="addCourse.jsp">选课</a></li>
          <li><a href="viewCourses.jsp">查看课程信息</a></li>
          <li><a href="viewMyCourses.jsp">查看选课结果</a></li>
        </ul>
      </li>
      <li class="drop-menu-effect"> <a target="-self" href="#"><span>查看成绩</span></a>
        <ul class="submenu">
          <li><a href="viewGrade.jsp">查看个人成绩</a></li>
          <li><a href="viewGrade.jsp">查看全班成绩</a></li>
        </ul>
      </li>
      <li class="drop-menu-effect"> <a target="-self" href="#"><span>考试安排</span></a>
        <ul class="submenu">
          <li><a href="#">考试管理规定</a></li>
          <li><a href="viewExam.jsp">考试安排表</a></li>
        </ul>
      </li>
      <li><a class="drop-menu-effect" target="_self" href="#"><span>修改密码</span></a></li>
    </ul>
  </div>

</div>
    </div>


    <div id="content">
      
      
      <div class="left">
        <a href="http://kczx.hnu.cn/" class="t a"><img src="images/p1.jpg"> </a>
        <label>课程中心</label><br/><br/>
        <a href="http://hdjw1.hnu.cn/" class="t b"><img src="images/p2.jpg"></a>
        <label>教务系统</label><br/><br/>
        <a href="http://lib.hnu.cn/" class="t c"><img src="images/p3.jpg"></a>
        <label>图书馆</label><br/><br/>
      </div>
      
    </div>
    

    <div id="foot">
      </br>
          <p>copyright by Liu and Yang</p>
    </div>
  </div>
</body>
</html>