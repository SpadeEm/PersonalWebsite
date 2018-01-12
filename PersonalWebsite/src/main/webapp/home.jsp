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
<link rel="stylesheet" type="text/css" href="css/home.css">
<script type="text/javascript" src="js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 导航栏 -->
<nav id="nav" class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" style="margin-left:40%">
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
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle glyphicon glyphicon-user" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li id="userLogin"><a href="#" class="glyphicon glyphicon-list" data-toggle="modal"  data-target="#loginModal">登录</a></li>
            <li><a href="#" class="glyphicon glyphicon-globe">资料</a></li>
            <li><a href="#" class="glyphicon glyphicon-cog">设置</a></li>
            <li><a href="#" class="glyphicon glyphicon-off">注销</a></li>
          </ul>
        </li>
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

<!-- 登录界面 -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="width: 500px;">
    <div class="modal-content">
      <div class="modal-header">
      	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <center><h3 class="modal-title" id="noteTitle">登录</h3></center>
      </div>
      <div class="modal-body">
        <div class="dvide"></div>
       	<div class="input-group" class="username-group" >
		  <span class="input-group-addon">账&nbsp;&nbsp;&nbsp;号</span>
		  <input type="text" class="form-control" placeholder="username" id="username">
		</div>
		<div class="dvide"></div>
		<div class="input-group" class="password-group" >
		  <span class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</span>
		  <input type="password" class="form-control" placeholder="password" id="password">
		</div>
		<div class="dvide"></div>
      </div>
      <div class="modal-footer">
      	<div class="center">
	      	<center>
	        	<button type="button" class="btn btn-primary"  id="login">登录</button>
	        </center>
	    </div>
	    <div>
	    	<center>
	    		
	    	</center>
	    </div>
      </div>
    </div>
  </div>
</div>
</body>
<script type="text/javascript">
$(function(){
	$("#login").click(function(){
		$.ajax({
			url:'<%=basePath%>/user/login.do',
			data:{
				userName:$("#username").val(),
				password:$("#password").val()
			},
			dataType:'json',
			type:'post',
			success:function(data){
				if(data.result==true){
					$("#loginModal").modal('hide');
					$("#userLogin").hide();
				}else{
					alert("保存失败");
				}
			}
		});
	});
	$('#loginModal').on('hidden.bs.modal', function (e) {
		$("#username").val("");
		$("#password").val("");
	});
});
</script>
</html>