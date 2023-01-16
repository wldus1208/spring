package dev.mvc.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dev.mvc.users.UsersVO;

@Component("dev.mvc.event.EventService")
public class EventService implements EventServiceImpl {
	@Autowired
	private EventDAO eventDAO;
	
	public EventService() {
		
	}
	
	@Override
	public int insert(EventVO eventVO) {
		int cnt = this.eventDAO.insert(eventVO);
		return cnt;
	}

}
