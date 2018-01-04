<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>主页</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 导航栏 -->
<nav id="nav" class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="margin-left:35%">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<%=basePath%>home.jsp">home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li ><a href="<%=basePath%>/note/getAllNotes.do">blog <span class="sr-only">(current)</span></a></li>
        <li><a href="<%=basePath%>/photo/getAllAlbums.do">picture</a></li>
        <li><a href="#">link</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div id="myCarousel" class="carousel slide">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item active">
			<img alt="第一张" src="images/slide-4.jpg">
		</div>
		<div class="item">
			<img alt="第二张" src="images/slide-5.jpg">
		</div>
		<div class="item">
			<img alt="第三张" src="images/slide-6.jpg">
		</div>
	</div>
	<a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>

</div>


</body>
</html>