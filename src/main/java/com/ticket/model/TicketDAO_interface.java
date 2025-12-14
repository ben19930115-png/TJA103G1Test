package com.ticket.model;

import java.util.*;

public interface TicketDAO_interface {
          public void insert(TicketVO tktVO);
          public void update(TicketVO tktVO);
          public void delete(Integer tktno);
          public TicketVO findByPrimaryKey(Integer tktno);
          public List<TicketVO> getAll();
          //萬用複合查詢(傳入參數型態Map)(回傳 List)
//        public List<EmpVO> getAll(Map<String, String[]> map); 
}
