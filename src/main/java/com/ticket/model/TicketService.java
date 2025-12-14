package com.ticket.model;

import java.util.List;

public class TicketService {

	public TicketDAO_interface tao;

	public TicketService() {
		tao = new TicketDAO();
	}

	public TicketVO addTicket(String TicketName, Integer TicketPrice,
			String TicketDescription, byte[] TicketImage ) {

		TicketVO ticketVO = new TicketVO();

		ticketVO.setTicketName(TicketName);
		ticketVO.setTicketPrice(TicketPrice);
		ticketVO.setTicketDescription(TicketDescription);
		ticketVO.setTicketImage(TicketImage);
		tao.insert(ticketVO);

		return ticketVO;
	}

	// 在 TicketService.java 裡

	public TicketVO updateTicket(Integer ticketID, String ticketName,
	                             Integer ticketPrice, String ticketDescription,
	                             byte[] ticketImage) {

	    TicketVO ticketVO = new TicketVO();
	    ticketVO.setTicketID(ticketID);               // ★ 要帶 ID 進去，才知道要改哪一筆
	    ticketVO.setTicketName(ticketName);
	    ticketVO.setTicketPrice(ticketPrice);
	    ticketVO.setTicketDescription(ticketDescription);
	    ticketVO.setTicketImage(ticketImage);

	    tao.update(ticketVO);                         // ★ 呼叫 DAO 做 UPDATE
	    return ticketVO;
	}


	public void deleteTicket(Integer TicketID) {
		tao.delete(TicketID);
	}

	public TicketVO getOneticket(Integer TicketID) {
		return tao.findByPrimaryKey(TicketID);
	}

	public List<TicketVO> getAll() {
		return tao.getAll();
	}

	public TicketVO getOneTicket(Integer TicketID) {
		// TODO Auto-generated method stub
		return tao.findByPrimaryKey(TicketID);
	}


}
