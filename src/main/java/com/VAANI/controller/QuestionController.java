package com.VAANI.controller;

import java.util.List;

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
public class QuestionController {
	@Autowired
	QuestionService questionService;

	@RequestMapping(value="/admin/addQuestion.html")
	public ModelAndView loadaddQuestion()
	{
		return new ModelAndView("admin/addQuestion","questionData",new QuestionVO());
	}

	@RequestMapping(value="/admin/insertQuestion.html", method=RequestMethod.POST)
	public ModelAndView insertQuestion(@ModelAttribute QuestionVO questionVO)
	{
		questionVO.setDeleteStatus("active");
		this.questionService.insertQuestion(questionVO);
		return new ModelAndView("redirect:/admin/viewQuestion.html");
	}
	
	@RequestMapping(value="/admin/viewQuestion.html")
	public ModelAndView viewQuestion()
	{
		List viewQuestionLs=this.questionService.viewQuestion();
		return new ModelAndView("admin/viewQuestion","questionlist",viewQuestionLs);
	}
	@RequestMapping(value="/admin/editQuestion.html")
	public ModelAndView loadeditQuestion(@RequestParam("editQuestionId") int editQuestionId,QuestionVO questionVO1)
	{
		questionVO1.setQuestionId(editQuestionId);
		List editQuestionList=this.questionService.edit(questionVO1);
		return new ModelAndView("admin/editQuestion","editData",(QuestionVO)editQuestionList.get(0));
	}
	
	@RequestMapping(value="/admin/updateQuestion.html", method=RequestMethod.POST)
	public ModelAndView updateQuestion(@ModelAttribute("editData") QuestionVO questionVO2)
	{
		this.questionService.update(questionVO2);
		return new ModelAndView("redirect:/admin/viewQuestion.html");
	}
	
	@RequestMapping(value="/admin/deleteQuestion.html")
	public ModelAndView deleteQuestion(@RequestParam("deleteQuestionId") int deleteQuestionId, QuestionVO questionVO3)
	{
		questionVO3.setQuestionId(deleteQuestionId);
		this.questionService.delete(questionVO3);
		return new ModelAndView("redirect:/admin/viewQuestion.html");
	}
}
