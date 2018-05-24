package com.exampletwo.portlet;

import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

/**
 * @author liferay
 */
@Controller
@RequestMapping("VIEW")
public class PrincipalPortletViewController {
	public static final String FORM = "form";

	@RenderMapping
	public String view(RenderRequest request, RenderResponse response) {
		return "view";
	}
	
	@RenderMapping(params = "action=showForm")
	public String Form(){
		return FORM;
	}
}