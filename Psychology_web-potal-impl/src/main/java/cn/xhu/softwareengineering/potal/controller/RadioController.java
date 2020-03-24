package cn.xhu.softwareengineering.potal.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.util.AjaxResult;

@Controller
/*@RequestMapping("/radio/api")*/
@RequestMapping("/radio")
public class RadioController {
	private Logger logger = Logger.getLogger ( RadioController.class );
//    @RequestMapping ( value = "/check", method = RequestMethod.POST )
    @RequestMapping ( value = "/check",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult check () {
        logger.info("RadioController run");
        AjaxResult result = new AjaxResult();
        result.setMessage("SSM vue前后端框架搭建成功");
        System.out.println("controller");
        return result;
    }
    
    
}
