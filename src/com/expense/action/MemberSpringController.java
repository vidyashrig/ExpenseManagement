package com.expense.action;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

@Controller
public class MemberSpringController {

	@RequestMapping(value={"/"}, method={RequestMethod.GET,RequestMethod.POST})
	public String index(WebRequest webRequest, HttpServletRequest request,
			HttpServletResponse response){
		
		return "index";
	}
	
	@RequestMapping(value={"/expenseMain"}, method={RequestMethod.GET,RequestMethod.POST})
	public String expenseMain(WebRequest webRequest, HttpServletRequest request,
			HttpServletResponse response){
		
		return "expenseMain";
	}
	
	@RequestMapping(value={"/manpower1"}, method={RequestMethod.GET,RequestMethod.POST})
	public String manpower1(WebRequest webRequest, HttpServletRequest request,
			HttpServletResponse response){
		List<String> weekList = new ArrayList<String>();
		Calendar calendar = new GregorianCalendar();
		calendar.set(java.util.Calendar.DAY_OF_MONTH, Calendar.SATURDAY);  
		calendar.set(java.util.Calendar.MONTH, Calendar.JANUARY);
		calendar.add(Calendar.DAY_OF_MONTH, -7);
		weekList.add("WK:1"+"/"+calendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault()).substring(0,3)+"-"+calendar.get(Calendar.DAY_OF_MONTH)); 
		for(int i=0;i<=50;i++){
			calendar.add(Calendar.DAY_OF_MONTH, 7);
			int val = calendar.get(Calendar.WEEK_OF_YEAR);
			val = val+1;
			weekList.add("WK:"+val+"/"+calendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault()).substring(0,3)+"-"+calendar.get(Calendar.DAY_OF_MONTH));	
		}
		request.setAttribute("weekList", weekList);
		return "manpower1";
	}
}
