<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.ticket.model.*"%>

<%
  TicketVO ticketVO = (TicketVO) request.getAttribute("ticketVO");
%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>票種資料修改 - update_ticket_input.jsp</title>

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
		 <h3>票種資料修改 - update_ticket_input.jsp</h3></td><td>
		 <h4><a href="<%=request.getContextPath()%>/back_end/ticket/listAllTicket.jsp"><img src="<%=request.getContextPath()%>/resources/images/bugcat.png" width="100" height="100" border="0"><br>回首頁<br></a></h4>
	</td></tr>
</table>

<h3>資料修改:</h3>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>票種資料修改 - update_ticket_input.jsp</title>
</head>
<body>

<c:if test="${not empty errorMsgs}">
  <ul>
    <c:forEach var="message" items="${errorMsgs}">
      <li style="color:red">${message}</li>
    </c:forEach>
  </ul>
</c:if>

<form method="post"
      action="${pageContext.request.contextPath}/ticket/ticket.do"
      enctype="multipart/form-data">

<table>
  <tr>
    <td>票種編號:</td>
    <td><%= ticketVO.getTicketID() %></td>
  </tr>
  <tr>
    <td>票種名稱:</td>
    <td><input type="text" name="ticketName" value="<%= ticketVO.getTicketName() %>"></td>
  </tr>
  <tr>
    <td>票價:</td>
    <td><input type="text" name="ticketPrice" value="<%= ticketVO.getTicketPrice() %>"></td>
  </tr>
  <tr>
    <td>內容描述:</td>
    <td><input type="text" name="ticketDescription" value="<%= ticketVO.getTicketDescription() %>"></td>
  </tr>
  <tr>
    <td>更新圖片（可不選）:</td>
    <td><input type="file" name="ticketImage"></td>
  </tr>
</table>

<input type="hidden" name="action" value="update">
<input type="hidden" name="ticketID" value="<%= ticketVO.getTicketID() %>">
<input type="submit" value="送出修改">

</form>

</body>
</html>
