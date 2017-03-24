<%@ page contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://code.ionicframework.com/1.0.0-beta.13/css/ionic.css">
		<script src="http://code.ionicframework.com/1.0.0-beta.13/js/ionic.bundle.js"></script>
		<title>登录界面</title>
		
	</head>
	<body>
		<form action="Login.action" method="post" >
			<table border="1">
				<tr>
					<td>用户名：</td>
					<td>
						<input type="text" name="user.username">
				</td>
				<td>(hxf)</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<input type="password" name="user.password"></td>
					<td>(1234)</td>
				</tr>
				<tr>
					<td>
						<input type="reset" value="重填"></td>
					<td>
						<input type="submit" value="登录"></td>
				</tr>
			</table>
			
		</form>
	</body>
	
</html>