<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Kadai16" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録確認画面</title>
</head>
<body>
	<p>下記の内容で登録します。よろしいですか？</p>
	<%
		Kadai16 kadai16 = (Kadai16)session.getAttribute("input_data");
	%>
	名前：<%=kadai16.getName() %><br>
	年齢：<%=kadai16.getAge() %><br>
	性別：<%=kadai16.getGender() %><br>
	メール：<%=kadai16.getMail() %><br>
	電話番号：<%=kadai16.getPhone_number() %><br>
	パスワード：********<br>
	<a href="RegisterExecuteServlet2">OK</a><br>
	<a href="RegisterFormServlet2">戻る</a>
</body>
</html>