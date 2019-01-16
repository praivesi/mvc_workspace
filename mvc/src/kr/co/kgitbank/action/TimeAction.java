package kr.co.kgitbank.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimeAction {
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		Date d = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/dd-HH:mm:ss");
		
		String time = sdf.format(d);
		
		req.setAttribute("time", time);
		
		return "/time.jsp";
	}
}
