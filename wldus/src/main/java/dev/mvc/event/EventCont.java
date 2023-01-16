package dev.mvc.event;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class EventCont {
	@Autowired
	@Qualifier("dev.mvc.event.EventService")
	private EventServiceImpl eventService = null;
	
	public EventCont() {
		
	}
	
	@RequestMapping(value="/event/event.do", method=RequestMethod.GET )
	  public ModelAndView list() {
	    ModelAndView mav = new ModelAndView();

	    mav.setViewName("/event/event");
	    return mav;
	}
	
	@RequestMapping(value = {"/event/tab1.do"}, method = RequestMethod.GET)
	  public String tab1() {

	      return "/event/tab1";
	}
	
	@RequestMapping(value = "/event/tab1.do", method = RequestMethod.POST)
	public ModelAndView insert(EventVO eventVO) {
		ModelAndView mav = new ModelAndView();
		
		int cnt = eventService.insert(eventVO);
		
		mav.addObject("cnt", cnt);
		mav.addObject("msg", "제출되었습니다. 이벤트에 참여해주셔서 감사합니다.");
		mav.setViewName("/users/msg");
		return mav;
	}
	
	@RequestMapping(value = {"/event/tab2.do"}, method = RequestMethod.GET)
	  public String tab2() {

	      return "/event/tab2";
	}
	
	@RequestMapping(value = {"/event/tab3.do"}, method = RequestMethod.GET)
	  public String tab3() {

	      return "/event/tab3";
	}
	
	@RequestMapping(value = {"/event/first.do"}, method = RequestMethod.GET)
	  public String first() {

	      return "/event/first";
	}
}
