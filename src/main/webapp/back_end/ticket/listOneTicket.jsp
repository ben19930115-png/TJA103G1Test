<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ticket.model.*"%>


<%
  TicketVO ticketVO = (TicketVO) request.getAttribute("ticketVO"); 
%>

<html>
<head>
<title>票種資料 - listOneTicket.jsp</title>

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
	width: 600px;
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
	<tr><td>
		 <h3>票種資料 - listOneTicket.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/back_end/ticket/select_page.jsp"><img src="<%=request.getContextPath()%>/resources/images/bugcat.png" width="100" height="100" border="0">回首頁</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>票種編號</th>
		<th>票種名稱</th>
		<th>價格</th>
		<th>內容</th>
		<th>圖示</th>
	</tr>
	<tr>
		<td><%=ticketVO.getTicketID()%></td>
		<td><%=ticketVO.getTicketName()%></td>
		<td><%=ticketVO.getTicketPrice()%></td>
		<td><%=ticketVO.getTicketDescription()%></td>
		<td><%=ticketVO.getTicketImage()%></td>
	</tr>
</table>

</body>
</html>