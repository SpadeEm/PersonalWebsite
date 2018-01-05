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
<title>相册</title>
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href=../css/style.css>
<link rel="stylesheet" type="text/css" href=../css/photo.css>
<link rel="stylesheet" type="text/css" href=../bootstrap-fileinput/css/fileinput.min.css>
<script type="text/javascript" src="../js/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap-fileinput/js/fileinput.min.js"></script>
<script type="text/javascript" src="../bootstrap-fileinput/js/locales/zh.js"></script>
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

<div id="jum" class="jumbotron">
	<div class="container">
		<hgroup>
			<h2>相册</h2>
		</hgroup>
		<button class="btn btn-primary">新建</button>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-4" style="border:1px solid #F0F0F0">
			<div id="menu">
				<h2 class="mynote">
					我的相册	
					<a id="add-album" href="##" class="glyphicon glyphicon-plus"  data-toggle="modal"  data-target="#addModal"></a>				
				</h2>
			</div>
			<div id="noteGroup" class="list-group">
			  <c:forEach items="${PageInfo.list }" var="album">
			  <%-- <div class="leftAlbumId" style="display: none">${album.albumId}</div> --%>
			  <a href="${album.albumId}" role="tab" data-toggle="tab" class="list-group-item leftAlbum" >
			  	<img alt="" src="../images/pho_null.jpg" class="head-pic">
			  	${album.albumName}
			  </a>
			  </c:forEach>
			</div>
			<div>
				当前第${PageInfo.pageNum}页，总共${PageInfo.pages}页，总共${PageInfo.total}条记录
			</div>
			<div>
				<nav aria-label="Page navigation">
				  <ul class="pagination">
				  	<li><a href="../photo/getAllAlbums.do?pn=1">首页</a></li>
				  	<c:if test="${PageInfo.hasPreviousPage}">
				  		<li>
					      <a href="../photo/getAllAlbums.do?pn=${PageInfo.pageNum-1}" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li> 
				  	</c:if>
				    
				    <c:forEach items="${PageInfo.navigatepageNums}" var="pageNum">
				    	<c:if test="${pageNum == PageInfo.pageNum}">
				    		<li class="active"><a href="../photo/getAllAlbums.do?pn=${pageNum}">${pageNum}</a></li>
				    	</c:if> 
				    	<c:if test="${pageNum != PageInfo.pageNum}">
				    		<li><a href="../photo/getAllAlbums.do?pn=${pageNum}">${pageNum}</a></li>
				    	</c:if>
				    	
				    </c:forEach>
				    <c:if test="${PageInfo.hasNextPage}">
				    	<li>
					      <a href="../photo/getAllAlbums.do?pn=${PageInfo.pageNum+1}" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
				    </c:if>
				    
				    <li><a href="../photo/getAllAlbums.do?pn=${PageInfo.pages}">末页</a></li>
				  </ul>
				</nav>
			</div>
		</div>
		<!-- 相册内容显示 -->
		<div class="col-md-8" border="1">
			<%-- <div class="tab-content">
			  <c:forEach items="${PageInfo.list }" var="album">  
			  <div role="tabpanel" class="tab-pane" id="${album.albumId}">
			  	<div class="show-albumName">
			  		<h1>${album.albumName} <a href="##" class="glyphicon glyphicon-pencil" id="albumEdit"></a></h1> 
			  		<p>创建于<fmt:formatDate value="${album.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
			  		<div class="getAlbumId" style="display: none">${album.albumId}</div>
			  		<a href="${album.albumId}" class="glyphicon glyphicon-arrow-up uploadPho" data-toggle="modal"  data-target="#uploadModal">上传照片</a>
			  	</div>			  	
			  	<div class="show-pic">
			  		<c:forEach items="${album.listPho }" var="photo"> 
			  		<div class="col-md-2">
			  			<img alt="图" src="$photo.photoPath}">
			  		</div>
			  		</c:forEach>
			  	</div> 	
			  </div> 
			  </c:forEach>
			 </div> --%>
			 <div>
			  <div id="albumContent">
			  	<div class="show-albumName">
			  		<h1 id="albumHead"> <a href="##" class="glyphicon glyphicon-pencil" id="albumEdit"></a></h1> 
			  		<p id="creatTime"></p>
			  		<div class="getAlbumId" style="display: none">${album.albumId}</div>
			  		<a href="" class="glyphicon glyphicon-arrow-up" data-toggle="modal"  data-target="#uploadModal" id="uploadPho">上传照片</a>
			  	</div>
			  	<div class="showpic"></div>
			  </div>
			</div>
		</div>
	</div>
</div>

<!-- 新增相册弹框 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title">新增相册</h4>
      </div>
      <div class="modal-body">
       	<div class="input-group">
		  <span class="input-group-addon">相册名</span>
		  <input type="text" class="form-control"  id="albumName">
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary"  id="albumSave">保存</button>
      </div>
    </div>
  </div>
</div>

<!-- 上传照片弹框 -->
<div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">上传照片</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="file-loading"> 
    		<input id="file" name="file" type="file" multiple>
		</div>
        <div id="kartik-file-errors"></div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
$(function(){
	$("#albumContent").hide();
	//初始化tooltips插件
	$('[data-toggle="tooltip"]').tooltip('show');
	$("#albumSave").click(function(){
		if ($("#albumName").val().length=0||!$("#albumName").val().trim()) {
			alert("相册名不能为空");
			return;
		}
		$.ajax({
			url:'../photo/addAlbum.do',
			data:{albumName:$("#albumName").val()},
			type:'post',
			dataType:'json',
			success:function(data){
				if(data.result==true){
					$("#addModal").modal("hide");
					alert("保存成功");
					window.location.reload();
				}else{
					alert("保存失败");
				}
			}	
		});
	});
	
	$(".leftAlbum").click(function() {
		$("#albumContent").show();
	     var aId = $(this).attr("href");
	     $.ajax({
	    	 url:'../photo/getAlbumById.do',
	    	 type:'post',
	    	 data:{id:aId},
	    	 dataType:'json',
	    	 success:function(data){
	    		$("#albumHead").html(data.result.albumName);
	    		$("#creatTime").html("创建于"+data.createTime);
	    		$("#uploadPho").attr("href",data.result.albumId);
	    		$(".showpic").html("<img src="+data.result.listPho[0].photoPath+">")
	    	 }
	     });
	     
	   });
	
	$(".leftAlbum").click(function(){
		/* var a = $(".getAlbumId").val();
		alert(a); */
		var ablumId = $(this).attr("href");
		//初始化上传组件 
		$("#file").fileinput({
			language: 'zh', //设置语言
	        uploadUrl: "../photo/fileUploads.do", //上传的地址
	        showUpload: true,
	        uploadAsync:false,//是否为异步上传
	        maxFileCount: 10,
	        mainClass: "input-group-lg",
	       	allowedFileExtensions: ["jpg", "png", "gif"],
			msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
			removeFromPreviewOnError:true, //是否移除校验文件失败的文件  
			uploadExtraData:function (previewId, index) {
				return {
					'id': ablumId
					};
			}
	    }).on("filebatchuploadsuccess",function(event, data) {
	    	if(data.response.result==true)
	        {
	    		/* $('#file').fileinput('clear');  */ 
	    		alert('成功');
	        }else{
	        	alert('失败');
	        }
	    })
	     /* .on("fileuploaded", function(event, data) { //异步上传成功
	        if(data.response.result==true)
	        {
	        	$('#file').fileinput('clear');  
	        }else{
	        	alert('处理失败');
	        }
	    })
		 */
	}); 
	  
    
	 /* $('#file').fileinput('clear');//重置上传组件  */
	 
	
})


</script>

</body>
</html>