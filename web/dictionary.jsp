<%--
  Created by IntelliJ IDEA.
  User: Minh Lee
  Date: 20/09/2018
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("bye", "Tạm biệt");
    dic.put("wisdom", "Khôn ngoan");
    dic.put("love", "tình yêu");
    dic.put("daddy", "ba");
    dic.put("mommy", "mẹ");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }

%>
</body>
</html>
