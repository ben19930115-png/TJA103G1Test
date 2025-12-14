<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.ticket.model.*"%>


<%
TicketService ticketSvc = new TicketService();
List<TicketVO> list = ticketSvc.getAll();
pageContext.setAttribute("list", list);
%>


<html>
<head>
<title>所有資料 - listAllTicket.jsp</title>

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
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
}

table, th, td {
	border: 1px solid #CCCCFF;
}

th, td {
	padding: 5px;
	text-align: center;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>所有資料 - listAllTicket.jsp</h3>
				<h4>
					<a
						href="<%=request.getContextPath()%>/back_end/ticket/select_page.jsp"><img
						src="<%=request.getContextPath()%>/resources/images/bugcat.png"
						width="100" height="100" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>票種編號</th>
			<th>票種名稱</th>
			<th>價格</th>
			<th>內容</th>
			<th>圖示</th>
		</tr>

		<%@ include file="page1.file"%>
		<c:forEach var="ticketVO" items="${list}" begin="<%=pageIndex%>"
			end="<%=pageIndex+rowsPerPage-1%>">

			<tr>
				<td>${ticketVO.ticketID}</td>
				<td>${ticketVO.ticketName}</td>
				<td>${ticketVO.ticketPrice}</td>
				<td>${ticketVO.ticketDescription}</td>
				<td><img
					src="<%=request.getContextPath()%>/back_end/ticket/ticket.do?ticketID=${ticketVO.ticketID}"
					width="100" height="80" /></td>

				<td>
					<form method="post"
						action="<%=request.getContextPath()%>/ticket/ticket.do">
						<input type="hidden" name="action" value="getOne_For_Update">
						<input type="hidden" name="ticketID" value="${ticketVO.ticketID}">
						<input type="submit" value="修改">
					</form>
				</td>
				<td>
					<FORM METHOD="post"
						ACTION="<%=request.getContextPath()%>/ticket/ticket.do">
						<input type="submit" value="刪除"> <input type="hidden"
							name="ticket_id" value="${ticketVO.ticketID}"> <input
							type="hidden" name="action" value="delete">
					</FORM>
				</td>
			</tr>

		</c:forEach>
	</table>
	<%@ include file="page2.file"%>

</body>
</html>