package com.VAANI.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.VAANI.model.*;
import com.VAANI.service.*;


@Controller
public class DisabledUserController {
	
	@Autowired
	DisabledUserService disabledUserService;
	
	@RequestMapping(value="/admin/addDisabledUser.html",method=RequestMethod.GET)
	public ModelAndView loadaddDisabledUser(@ModelAttribute("disabledUserData") DisabledUserVO disabledUserVO)
	{
		return new ModelAndView("admin/addDisabledUser","disabledUserData",disabledUserVO);
		
	}
	
	@RequestMapping(value="/admin/insertDisabledUser.html",method=RequestMethod.POST)
	public ModelAndView insertDisabledUser(DisabledUserVO disabledUserVO1)
	{
		disabledUserVO1.setDeleteStatus("active");
		this.disabledUserService.insertDisabledUser(disabledUserVO1);
		return new ModelAndView("redirect:/admin/viewDisabledUser.html");
	}
	@RequestMapping(value="/admin/viewDisabledUser.html",method=RequestMethod.GET)
	public ModelAndView loadViewDisabledUser()
	{
		List viewDisabledUserList=new ArrayList();
		viewDisabledUserList=this.disabledUserService.viewDisabledUser();
		return new ModelAndView("admin/viewDisabledUser","disabledUserList",viewDisabledUserList);
	}
	@RequestMapping(value="/admin/editDisabledUser.html")
	public ModelAndView loadeditDisabledUser(@RequestParam("editDisabledUserId") int editDisabledUserId,DisabledUserVO disabledUserVO1)
	{
		disabledUserVO1.setDisabledUserId(editDisabledUserId);
		List disabledUserList=this.disabledUserService.edit(disabledUserVO1);
		return new ModelAndView("admin/editDisabledUser","editDisabledUserData",(DisabledUserVO)disabledUserList.get(0));
	}
	
	@RequestMapping(value="/admin/updateDisabledUser.html")
	public ModelAndView updateDisabledUser(@ModelAttribute("editDisabledUserData") DisabledUserVO disabledUserVO2)
	{
		this.disabledUserService.update(disabledUserVO2);
		return new ModelAndView("redirect:/admin/viewDisabledUser.html");
	}
	
	@RequestMapping(value="/admin/deleteDisabledUser.html")
	public ModelAndView deleteDisabledUser(@RequestParam("deleteDisabledUserId") int deleteDisabledUserId, DisabledUserVO disabledUserVO3)
	{
		disabledUserVO3.setDisabledUserId(deleteDisabledUserId);
		this.disabledUserService.delete(disabledUserVO3);
		return new ModelAndView("redirect:/admin/viewDisabledUser.html");
	}
}