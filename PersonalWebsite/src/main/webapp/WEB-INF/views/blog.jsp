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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>学习笔记</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/blog.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/msg.css">
<link rel="stylesheet" type="text/css" href="css/comment.css">
<link rel="shortcut icon" href="../images/favicon.ico"/>
<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../js/note.js"></script>
</head>
<body>
<!-- 导航栏 -->
<div>
	<nav id="nav" class="navbar navbar-inverse" role="navigation" style="position:relative;">
	  <div class="container-fluid" >
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header" id="navHead">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand glyphicon glyphicon-home" href="<%=basePath%>home.jsp">主页</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li ><a href="../note/getAllNotes.do" class="glyphicon glyphicon-book">学习笔记 <span class="sr-only">(current)</span></a></li>
	        <li><a href="../photo/getAllAlbums.do" class="glyphicon glyphicon-picture">相册</a></li>
	        <li><a href="<%=basePath%>/resume.jsp" class="glyphicon glyphicon-file">resume</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</div>
<div>
	<div class="container">
		<div class="row">
			<div class="col-md-4" style="border:1px solid #F0F0F0">
				<div id="menu">
					<h2 class="mynote">我的笔记<a id="addNote"  href="##" class="glyphicon glyphicon-plus" data-toggle="modal" data-target="#myModal"></a></h2>
				</div>
				<div id="noteGroup" class="list-group">
				  <c:forEach items="${PageInfo.list }" var="notes">
				  <a href="#${notes.noteId}" role="tab" data-toggle="tab" class="list-group-item leftTitle" id="left-title"><h3>${notes.noteTitle}</h3></a>
				  </c:forEach>
				</div>
				<div>
					当前第${PageInfo.pageNum}页，总共${PageInfo.pages}页，总共${PageInfo.total}条记录
				</div>
				<div>
					<nav aria-label="Page navigation">
					  <ul class="pagination">
					  	<li><a href="<%=basePath%>/note/getAllNotes.do?pn=1">首页</a></li>
					  	<c:if test="${PageInfo.hasPreviousPage}">
					  		<li>
						      <a href="<%=basePath%>/note/getAllNotes.do?pn=${PageInfo.pageNum-1}" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li> 
					  	</c:if>
					    
					    <c:forEach items="${PageInfo.navigatepageNums}" var="pageNum">
					    	<c:if test="${pageNum == PageInfo.pageNum}">
					    		<li class="active"><a href="<%=basePath%>/note/getAllNotes.do?pn=${pageNum}">${pageNum}</a></li>
					    	</c:if> 
					    	<c:if test="${pageNum != PageInfo.pageNum}">
					    		<li><a href="<%=basePath%>/note/getAllNotes.do?pn=${pageNum}">${pageNum}</a></li>
					    	</c:if>
					    	
					    </c:forEach>
					    <c:if test="${PageInfo.hasNextPage}">
					    	<li>
						      <a href="<%=basePath%>/note/getAllNotes.do?pn=${PageInfo.pageNum+1}" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
					    </c:if>
					    
					    <li><a href="<%=basePath%>/note/getAllNotes.do?pn=${PageInfo.pages}">末页</a></li>
					  </ul>
					</nav>
				</div>
			</div>
			<!-- 内容显示 -->
			<div class="col-md-8" border="1" style="background-color: #FFFFFF">
				<%-- <div class="tab-content">
				  <c:forEach items="${PageInfo.list }" var="notes">  
				  <div role="tabpanel" class="tab-pane" id="${notes.noteId}">
				  	<div class="title">
				  		<center>
					  		<h1>
					  			${notes.noteTitle} 
					  		</h1> 
				  		</center>
				  		<a href="##" class="glyphicon glyphicon-pencil editNote" data-toggle="modal"  data-target="#editModal" >修改</a>
				  		<a href=""  class="glyphicon glyphicon-trash editDelete" data-toggle="modal"  data-target="#deleteModal">删除</a>
				  		<a href="../note/downNote.do?noteId=${notes.noteId}" class="down">导出</a>
				  		<p>创建于<fmt:formatDate value="${notes.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
				  	</div>		 
				  	<div>${notes.noteContent}</div>
				  </div> 
				  </c:forEach>
				</div>  --%>
				<div id="showNote">
					<div class="title">
						<center><h1 id="noteHead"></h1></center>
						<p id="createTime"></p>
						<div class="noteId" id="noteId" style="display: none"></div>
						<a href="##" class="glyphicon glyphicon-pencil editNote" data-toggle="modal"  data-target="#editModal" >修改</a>
				  		<a href=""  class="glyphicon glyphicon-trash editDelete" data-toggle="modal"  data-target="#deleteModal">删除</a>
				  		<a href="" class="glyphicon glyphicon-download-alt down" id="down" style="display: none">导出</a>
					</div>
					<div style="padding: 20px;">
				 		<div id="content" class="content" name="content"></div>
					</div>
				</div>
				<!-- 评论区 -->
				<div id="msgBox">
				 	<h2>来 , 说说你在做什么 , 想什么</h2>
					<div>
						选择你的头像
				        <p id="face">
			            	<img src="../img/face1.gif" class="current" /><img src="../img/face2.gif" /><img src="../img/face3.gif" /><img src="../img/face4.gif" /><img src="../img/face5.gif" /><img src="../img/face6.gif" /><img src="../img/face7.gif" /><img src="../img/face8.gif" />
			            </p>
			        </div>
				    <form>
				        <div class="input-group">
				            <input id="userName" class="form-control f-text"  placeholder="输入你的名字" value="" />
				            <!-- <input id="userEmail" class="form-control f-text"  placeholder="输入你的邮箱" value="" /> --> 
				        </div>
				        <div><textarea id="conBox" class="f-text"></textarea></div>
				        <div class="tr">
				            <p>
				                <span class="countTxt">还能输入</span><strong class="maxNum">140</strong><span>个字</span>
				                <!-- <input id="sendBtn" type="button" class="btn btn-default" value="发表" title="快捷键 Ctrl+Enter" /> -->
				                <button id="sendBtn" class="btn btn-default" title="快捷键 Ctrl+Enter">发表</button>
				            </p>
				        </div>
				    </form>
				    <div class="list">
				        <h3><span>大家在说</span></h3>
				        <ul id="commentList">
				            <li>
				                <div class="userPic"><img src="../img/face.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">新增删除广播功能。</div>
				                    <div class="times"><span>07月05日 15:14</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				            <li>
				                <div class="userPic"><img src="../img/face1.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">新增Ctrl+Enter快捷键发送广播。</div>
				                    <div class="times"><span>07月05日 12:20</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				            <li>
				                <div class="userPic"><img src="../img/face2.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">新增选择头像功能。</div>
				                    <div class="times"><span>07月05日 12:08</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				            <li>
				                <div class="userPic"><img src="../img/face3.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">增加了记录广播时间的功能。</div>
				                    <div class="times"><span>07月04日 16:55</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				            <li>
				                <div class="userPic"><img src="../img/face4.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">增加了输入字符检测功能，英文/半角为半个字符，汉字/全角为一个字符。</div>
				                    <div class="times"><span>07月04日 08:30</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				            <li>
				    	        <div class="userPic"><img src="../img/face5.gif" /></div>
				                <div class="content">
				                    <div class="userName"><a href="javascript:;">永不上线</a>:</div>
				                    <div class="msgInfo">仿腾讯微博效果，欢迎大家测试！</div>
				                    <div class="times"><span>07月03日 20:19</span><a class="del" href="javascript:;">删除</a></div>
				                </div>
				            </li>
				        </ul>
				    </div>	
				</div>			
			</div>
		</div>
	</div>
	
	<!-- 新增笔记弹框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="noteTitle">新增笔记</h4>
	      </div>
	      <div class="modal-body">
	       	<div class="input-group">
			  <span class="input-group-addon">题目</span>
			  <input type="text" class="form-control" placeholder="Title" id="title" >
			</div>
			<form id="textContent">
	            <textarea name="noteContent" id="noteContent" rows="10" cols="80">
	            </textarea>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" id="nateClose">关闭</button>
	        <button type="button" class="btn btn-primary"  id="noteSave">保存</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- 编辑笔记弹框 -->
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="noteTitle">修改笔记</h4>
	      </div>
	      <div class="modal-body">
	      	
	       	<div class="input-group">
			  <span class="input-group-addon">题目</span>
			  <input type="text" class="form-control" placeholder="" id="showTitle" >
			</div>
			<form>
	            <textarea name="showNoteContent" id="showNoteContent" rows="10" cols="80">
	            </textarea>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
	        <button type="button" class="btn btn-primary"  id="noteUpdate">保存</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 删除提示框 -->
	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="noteTitle">提示</h4>
	      </div>
	      <div class="modal-body">
	      	您确定要删除该条笔记吗？
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal" >取消</button>
	        <button type="button" class="btn btn-danger"  id="noteDelete">删除</button>
	      </div>
	    </div>
	  </div>
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>