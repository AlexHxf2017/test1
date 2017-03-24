<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Welcom</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
#div1{
    width:20%;
    height:100%;
	border:1px red solid;
	position:absolute;
}
#div2{
    width:80%;
    height:20%;
    border:1px red solid;
	position:relative;
	left:20.5%;
}
</style>

  </head>
  
  <body><div id="div1" ></div>
    <div id="div2">
    <s:property value="user.username" />,你好<br>
    <input type="text" id="key" name="key" value="what are you working on" onFocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){value=defaultValue;this.style.color='#999'}" style="color:#999999; width: 302px;height: 50%">
    </div>
  </body>
</html>
