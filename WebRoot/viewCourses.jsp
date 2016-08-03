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
  <link href="css/style.css" type="text/css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/table.css">
  <script type="text/javascript" src="http://libs.baidu.com/jquery/1.8.3/jquery.js">
  </script>
</head>
<body>
  <div id="container">

    <div id="banner">
    <!-- 代码部分begin -->
    <div id="main">
      <ul id="nav">
          <li class="on"><a href="#" class="first">首页</a><div class="second">首页</div></li>
            <li><a href="#">个人信息</a><div class="second">个人信息</div></li>
            <li><a href="#">修改信息</a><div class="second">修改信息</div></li>
            <li><a href="#">选课</a><div class="second">选课</div></li>
            <li><a href="#">选课结果</a><div class="second">选课结果</div></li>
            <li><a href="#">查看作业</a><div class="second">查看作业</div></li>
            <li><a href="#">成绩查询</a><div class="second">成绩查询</div></li>
            <li><a href="#">修改密码</a><div class="second">修改密码</div></li>
        </ul>
        <div class="dot"><ul><span></span></ul></div>
        <div id="slide"></div>
    </div>
    
    
    <script>
    $(function(){
      var liWidth = $('#main #nav li').width();
      var secondWidth = $('#main #nav2 .second').width(); 
      $('#main #nav li').hover(function(){
        var index = $(this).index();
        $('#main .dot span').stop().animate({
          left:liWidth*index+'px'
        },200);
        $(this).addClass('on').siblings().removeClass('on');
        $(this).find('.second').fadeIn(600);
        $('#main #slide').stop().animate({
          height:'250px'
        },400);
      },function(){
        $(this).find('.second').fadeOut(600);
        $('#main #slide').stop().animate({
          height:'0'
        },400);
      });
    });
    </script>
    <!-- 代码部分end -->
    </div>


    <div id="content">
    <center>
    <table align="center" border="1" cellpadding="5" class="tablecss" >
      <tr>
        <th style="text-align: center">课程号</th>
        <th style="text-align: center">课程名</th>
        <th style="text-align: center">开课学期</th>
        <th style="text-align: center">课程学时</th>
        <th style="text-align: center">课程学分</th>
        <th style="text-align: center">修改</th>
        <th style="text-align: center">删除</th>
      </tr>
      <s:iterator value='courses'>
        <tr>
          <td><s:property value="cid" /></td>
          <td><s:property value="cname" /></td>
          <td><s:property value='kkxq' /></td>
          <td><s:property value="xs" /></td>
          <td><s:property value="xf" /></td>
          <td><a
            href="ModifyCourse.action?course.id=<s:property value="id"/>">修改</a></td>
          <td><a
            href="DeleteCourse.action?course.id=<s:property value="id"/>">删除</a></td>
        </tr>
      </s:iterator>
    </table>
    <a href="addCourse.jsp">新增课程信息</a>
  </center>
    </div>


    <div id="foot">
      </br>
      </br>
          <p>copyright by Liu and Yang</p>
    </div>
  </div>
</body>
</html>