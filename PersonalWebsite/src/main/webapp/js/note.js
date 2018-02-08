$(function(){
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    //初始化CKeditor
    CKEDITOR.replace( 'noteContent' );
    CKEDITOR.replace( 'showNoteContent' );
	//初始化tooltip
	$('[data-toggle="tooltip"]').tooltip();
	$("#showNote").hide();
	$("#msgBox").hide();
	//清空modal中的内容
	var a;
	var str
	//验证是否登录
	$.ajax({
		url:'../user/LoginCheck.do',
		dataType:'json',
		type:'post',
		success:function(data){
			if (data.result==false) {
				$(".editNote").hide();
				$(".editDelete").hide();
				$("#addNote").hide();
				$("#down").hide();
			}
		},
		error:function(){
			 alert("验证登录失败");
		 }
	});
	$("#addNote").click(function(){
		$("#title").val("");
		CKEDITOR.instances.noteContent.setData('');
		//添加笔记
    	$("#noteSave").click(function(){
    		if($("#title").val().length=0||!$("#title").val().trim()){
    			alert("题目不能为空");
    			return;
    		}
    		$.ajax({
    			url:'../note/addNotes.do',
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
	
	//显示笔记内容
	$(".leftTitle").unbind('click').click(function(){
		//清空modal中的内容
		//$("#title").val("");
		//CKEDITOR.instances.noteContent.setData('');
		a =$(this).attr("href");
		$("#showNote").show();
		$("#msgBox").show();
		$("#showNoteContent").remove();
		//显示笔记内容
		$.ajax({
			url:'../note/getNoteById.do',
			data:{noteId:a},
			dataType:'json',
			type:'post',
			success:function(data){
				$("#noteHead").html(data.result.noteTitle);    				
				$("#createTime").html("创建于"+data.createTime);
				$("#content").html(data.result.noteContent);
				var noteTitle = $("#noteHead").text();
				str =$("#content").text();
	    		$("#down").attr('href','../note/downNote.do?noteTitle='+noteTitle+'&noteContent='+str+'');
			},
			error:function(){
			}
		});
		//显示评论
    	$.ajax({
    		url:'../comment/showCommentByNote.do',
    		type:'post',
    		data:{noteId:a},
    		dataType:'json',
    		success:function(data){
    			for (var i = 0; i < data.result.length; i++) {
    				$('#commentList').append("<li><div class='userPic'><img src=" + data.result[i].commentPic + "></div><div class='content'><div class='userName'>" + data.result[i].commentName + ":</div><div class='msgInfo'>" + data.result[i].commentContent + "</div><div class='times'><span>" + data.result[i].commentTime + "</span><a class='del'>删除</a></span></div> </div></li>");
    				//$('#commentList').append("<div class='content'><div class='userName'>" + data.result[i].commentName + ":</div><div class='msgInfo'>" + data.result[i].commentContent + "</div><div class='times'><span>" + data.result[i].commentTime + "</span><a class='del' href="javascript:;">zz</a></div> </div>");
    			}
    		},
    		error:function(){
    			alert("读取失败");
    		}
    	});
	});
	//编辑界面显示
	$(".editNote").click(function(){
   		$.ajax({
   			url:'../note/getNoteById.do',
   			data:{noteId:a},
   			dataType:'json',
   			type:'post',
   			success:function(data){
   				$("#showTitle").val(data.result.noteTitle);
   				$("#noteId").html(data.result.noteId);
   				CKEDITOR.instances.showNoteContent.setData(data.result.noteContent);
   			}
   		});
   		
	});
	//更新
	$("#noteUpdate").click(function(){
		if($("#showTitle").val().length=0||!$("#showTitle").val().trim()){
			alert("题目不能为空");
			return;
		}
		$.ajax({
			url:'../note/editNoteById.do',
			data:{
				noteId:a,
				noteTitle:$("#showTitle").val(),
				noteContent:CKEDITOR.instances.showNoteContent.getData()
				},
			dataType:'json',
			type:'post',
			success:function(data){
				if(data.result==true){
					$("#editModal").modal("hide");
					window.location.reload();
				}else{
					alert("保存失败");
				}
			},
			error:function(){
				alert("保存失败");
			}
		});
	});
	//删除
	$("#noteDelete").click(function(){
		$.ajax({
			url:'../note/deleteNoteById.do',
			data:{noteId:a},
			dataType:'json',
			type:'post',
			success:function(data){
				if(data.result==true){
					$("#deleteModal").modal("hide");
					window.location.reload();
				}else{
					alert("输出失败");
				}
			},
			error:function(){
				alert("删除失败");
			}
		});
	});
	//导出笔记文档
	/* $("#down").click(function(){
		
		$.ajax({
			url:'../note/downNote.do',
			data:{noteId:a,noteContent:str},
			type:'get',
			dataType:'json',
			success:function(data){
				
			},
			error:function(){
				alert("导出失败");
			}
		});
	}); */ 
	
	 $("#face img").mouseover(function(e){
		 $(this).addClass("hover");
	 });
	 $("#face img").mouseout(function(e){
		 $(this).removeClass("hover");
	 });
	 //选择头像
	 $("#face img").click(function(){
		 $("#face img").removeClass("current");
		 $(this).addClass("current");
	 });
	 //计算输入框内的字数
	$("#conBox").keyup(function(){
	     var length = 140;
	     var content_len = $("#conBox").val().length;
	     var in_len = length-content_len;
	     
	     if(in_len >=0){
	    	$(".countTxt").html("还能输入");
	    	$(".maxNum").css("color","black");
	        $(".maxNum").html(in_len);
	        // 可以继续执行其他操作
	     }else{
	    	$(".countTxt").html("已经超过");
	    	$(".maxNum").css("color","red");
	    	//求绝对值
	    	var z_len =Math.abs(in_len);
	        $(".maxNum").html(z_len);
	        return false;
	     }	    
	});
	
	//显示删除按钮
	$("#commentList li").mouseover(function(e){
		$(this).find(".del").css("display","block");
	});
	$("#commentList li").mouseout(function(e){
		$(this).find(".del").css("display","none");
	});
	
}); 