package com.exampletwo.controllers;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;

import com.exampletwo.models.Persona;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
 
/**
 *
 * @author Hamidul Islam
 *
 */
@Controller("helloWorldController")
@RequestMapping(value="VIEW")
public class ExampleControllerOne {
 
    private Log log = LogFactoryUtil.getLog(ExampleControllerOne.class.getName());
 
     @RenderMapping(params = "action=berni")
        public String viewHomePage(RenderRequest request, RenderResponse response){ 
           log.info("#############################Calling viewHomePage##################################");
           log.info(request.getContextPath()+"/portlet-application-context.xml");
           ApplicationContext context = new ClassPathXmlApplicationContext(new String[]{request.getContextPath()+"/portlet-application-context.xml"});
           Persona persona = (Persona) context.getBean("persona");
           log.info(persona.getName());
           log.info(persona.getAge());
          return "try";
 
        }
}

