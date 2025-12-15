<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Showise Ticket: Home </title>

<style>
  table#table-1 {
	width: 500px;
	background-color: #7cb9e8;
	margin-top: 10px;
	margin-bottom: 20px;
    border: 3px ridge Gray;
    height: 80px;
    text-align: center;
  }
  table#table-1 h4 {
    color: blue;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
   <tr><td><h3>Showise Ticket: Home</h3><h4>( MVC )</h4></td></tr>
</table>

<p>This is the Home page for Showise Ticket: Home</p>

<h3>資料查詢:</h3>
	
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
	    <c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<ul>
  <li><a href="<%=request.getContextPath()%>/back_end/ticket/listAllTicket.jsp">
    List all Tickets.</a>
  <br><br></li>
  
  
  <li>
<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/ticket/ticket.do" >
    <b>輸入票種編號 (如1):</b>
    <input type="text" name="ticketID">
    <input type="hidden" name="action" value="getOne_For_Display">
    <input type="submit" value="送出">
</FORM>
  </li>

  <jsp:useBean id="ticketSvc" scope="page" class="com.ticket.model.TicketService" />
   
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/ticket/ticket.do" >
       <b>選擇票種名稱:</b>
       <select size="1" name="ticketName">
         <c:forEach var="TicketVO" items="${ticketSvc.all}" > 
          <option value="${TicketVO.ticketName}">${TicketVO.ticketName}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
    </FORM>
  </li>
  
  <li>
     <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/ticket/ticket.do" >
       <b>選擇票價:</b>
       <select size="1" name="ticketPrice">
         <c:forEach var="TicketVO" items="${ticketSvc.all}" > 
          <option value="${TicketVO.ticketPrice}">${TicketVO.ticketPrice}</option>
         </c:forEach>   
       </select>
       <input type="hidden" name="action" value="getOne_For_Display">
       <input type="submit" value="送出">
     </FORM>
  </li>
</ul>


<h3>票種管理</h3>

<ul>
  <li><a href='addTicket.jsp'>Add</a> a new Ticket.</li>
</ul>

</body>
</html>