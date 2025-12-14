<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ticket.model.*"%>

<%
   TicketVO ticketVO = (TicketVO) request.getAttribute("ticketVO");
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>票種資料新增 - addTicket.jsp</title>

<style>
  table#table-1 {
	background-color: #7cb9e8;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>票種資料新增 - addTicket.jsp</h3></td><td>
		 <h4><a href="select_page.jsp"><img src="<%=request.getContextPath()%>/resources/images/bugcat.png" width="100" height="100" border="0">回首頁</a></h4>
	</td></tr>
</table>

<h3>資料新增:</h3>

<!-- 錯誤訊息 -->

<c:if test="${not empty errorMsgs}">
    <font style="color:red">請修正以下錯誤:</font>
    <ul>
        <c:forEach var="message" items="${errorMsgs}">
            <li style="color:red">${message}</li>
        </c:forEach>
    </ul>
</c:if>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>票種資料新增 - addTicket.jsp</title>
</head>
<body>

<form method="post"
      action="${pageContext.request.contextPath}/back_end/ticket/ticket.do"
      enctype="multipart/form-data">

    票種名稱：
    <input type="text" name="ticketName" value="${ticketVO.ticketName}"><br><br>

    票價：
    <input type="text" name="ticketPrice" value="${ticketVO.ticketPrice}"><br><br>

    內容描述：
    <input type="text" name="ticketDescription" value="${ticketVO.ticketDescription}"><br><br>

    票種圖片：
    <input type="file" name="ticketImage"><br><br>

    <input type="hidden" name="action" value="insert">
    <input type="submit" value="送出新增">
</form>

</body>
</html>
