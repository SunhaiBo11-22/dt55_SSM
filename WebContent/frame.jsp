<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 引入外部的js，css -->

<link href="<%=basePath%>css/assets-css/admin.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>css/assets-css/amazeui.css" rel="stylesheet" type="text/css">

<link href="<%=basePath%>css/personal.css" rel="stylesheet" type="text/css">

<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
<script src="../AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>

</body>
</html>