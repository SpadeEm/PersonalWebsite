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
<title>学习笔记</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/blog.css">
<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
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
        <li><a href="../photo/getAllAlbums.do">picture</a></li>
        <li><a href="#">link</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-4" style="border:1px solid #F0F0F0">
			<div id="menu">
				<h2 class="mynote">我的笔记<a id="addNote"  href="##" class="glyphicon glyphicon-plus" data-toggle="modal" data-target="#myModal"></a></h2>
			</div>
			<div id="noteGroup" class="list-group">
			  <c:forEach items="${PageInfo.list }" var="notes">
			  <a href="#${notes.noteTitle}" role="tab" data-toggle="tab" class="list-group-item " id="left-title"><h3>${notes.noteTitle}</h3></a>
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
		<div class="col-md-8" border="1">
			<div class="tab-content">
			  <c:forEach items="${PageInfo.list }" var="notes">  
			  <div role="tabpanel" class="tab-pane" id="${notes.noteTitle}">
			  	<div class="title">
			  		<h1>${notes.noteTitle} <a href="##" class="glyphicon glyphicon-pencil" id="noteEdit"></a></h1> 
			  		<p>创建于<fmt:formatDate value="${notes.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
			  	</div>		 
			  	<div>${notes.noteContent}</div>
			  </div> 
			  </c:forEach>
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
		  <input type="text" class="form-control" placeholder="Title" id="title">
		</div>
		<form>
            <textarea name=noteContent id="noteContent" rows="10" cols="80">
            </textarea>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"  id="noteSave">保存</button>
      </div>
    </div>
  </div>
</div>

<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace( 'noteContent' );
    $(function(){
    	$("#noteSave").click(function(){
    		if($("#title").val().length=0||!$("#title").val().trim()){
    			alert("题目不能为空");
    			return;
    		}
    		$.ajax({
    			url:'<%=basePath%>/note/addNotes.do',
    			data:{
    				noteTitle:$("#title").val(),
    				noteContent:CKEDITOR.instances.noteContent.getData()
    			},
    			dataType:'json',
    			type:'post',
    			success:function(data){
    				if(data.result==true){
    					$("#myModal").modal("hide");
    					alert("保存成功");
    					window.location.reload();
    				}else{
    					alert("保存失败");
    				}
    			}
    		}); 
    	});
    }); 
</script>
</body>
</html>