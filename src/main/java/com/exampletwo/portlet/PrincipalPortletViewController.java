package com.exampletwo.portlet;

import java.util.Map;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.ActionMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.exampletwo.models.Persona;

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
	public String Form(Map<String, Object> map){
		Persona persona = new Persona();
		map.put("persona", persona);
		return FORM;
	}
	
	@RenderMapping(params = "action=success")
	public String viewSuccess() {
	    return "success"; 
	}
	@ActionMapping(value = "handleCustomer")
    public void getCustomerData(@ModelAttribute("persona") Persona persona, ActionRequest actionRequest, ActionResponse actionResponse, Model model) {
        actionResponse.setRenderParameter("action", "success");
        model.addAttribute("successModel", persona);
    }
	
	
}
