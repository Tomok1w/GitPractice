<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kadai16" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録画面</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String errorCode = request.getParameter("error");
		if(errorCode != null && errorCode.equals("1")){
			Kadai16 ac2 = (Kadai16)session.getAttribute("input_data");
	%>
		<p style="color:red">登録に失敗しました。</p>
		<h1>新規会員登録</h1>
		<form action="RegisterConfirmServlet2" method="post">
			名前：<input type="text" name="name" value="<%=ac2.getName()%>"><br>
			年齢：<input type="text" name="age" value="<%=ac2.getAge() %>"><br>
			性別：<input type="radio" name="gender" value="男">男
				  <input type="radio" name="gender" value="女">女<br>
			メール：<input type="email" name="mail" value="<%=ac2.getMail()%>"><br>
			電話番号：<input type="text" name="phone_number" value="<%=ac2.getPhone_number() %>"><br>
			パスワード：<input type="password" name="pw"><br>
			<input type="submit" value="登録">
		</form>
	<%
		} else {
	%>
	<h1>新規登録</h1>
	<form action="RegisterConfirmServlet2" method="post">
		名前：<input type="text" name="name"><br>
		年齢：<input type="text" name="age"><br>
		性別：<input type="radio" name="gender" value="男">男
			  <input type="radio" name="gender" value="女">女<br>
		メール：<input type="email" name="mail"><br>
		電話番号：<input type="text" name="phone_number"><br>
		パスワード：<input type="password" name="pw"><br>
		<input type="submit" value="登録">
	</form>
	<%
		}
	%>
</body>
</html>