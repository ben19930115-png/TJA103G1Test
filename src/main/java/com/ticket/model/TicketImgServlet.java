package com.ticket.model;
import java.io.IOException;
import java.io.OutputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

	
@WebServlet("/back_end/ticket/TicketImgServlet")
public class TicketImgServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("image/jpeg"); // 依照你的圖片格式可改成 image/png

        Integer ticketNo = Integer.valueOf(req.getParameter("ticketNo"));

        TicketService ticketSvc = new TicketService();
        TicketVO ticketVO = ticketSvc.getOneTicket(ticketNo);

        byte[] imgBytes = ticketVO.getTicketImage(); // 你的 BLOB 欄位 getter
        
        if (imgBytes != null) {
            OutputStream out = res.getOutputStream();
            out.write(imgBytes);
            out.flush();
            out.close();
        }
    }
}
