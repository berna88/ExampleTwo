package com.exampletwo.controllers;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
 
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
 
/**
 *
 * @author Hamidul Islam
 *
 */
@Controller("helloWorldController")
@RequestMapping(value="VIEW2")
public class ExampleControllerOne {
 
    private Log log = LogFactoryUtil.getLog(ExampleControllerOne.class.getName());
 
     @RenderMapping
        public String viewHomePage(RenderRequest request, RenderResponse response){ 
           log.info("#############################Calling viewHomePage##################################");
          return "try";
 
        }
}

