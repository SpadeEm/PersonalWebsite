<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	你好！！
	<%-- <img alt="图" src="${url}" /> --%>
	
	<h4>下载界面</h4>
	<c:forEach items="${listImg }" var = "img">
		${img.imgName}<a href="../upload/downfile.do?id=${img.imgId}">下载</a>
	</c:forEach>
	
</body>
</html>