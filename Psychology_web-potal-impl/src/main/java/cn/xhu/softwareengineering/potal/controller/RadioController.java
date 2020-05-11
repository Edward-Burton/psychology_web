package cn.xhu.softwareengineering.potal.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xhu.softwareengineering.bean.PsychoRadio;
import cn.xhu.softwareengineering.bean.RadioAnchor;
import cn.xhu.softwareengineering.bean.RadioComment;
import cn.xhu.softwareengineering.bean.RadioType;
import cn.xhu.softwareengineering.potal.service.RadioService;
import cn.xhu.softwareengineering.util.AjaxResult;

@Controller
/*@RequestMapping("/radio/api")*/
@RequestMapping("/radio")
public class RadioController{
	private Logger logger = Logger.getLogger ( RadioController.class );
	
	@Autowired
	private RadioService radioService;

	//@RequestMapping ( value = "/check", method = RequestMethod.POST )
    @RequestMapping ( value = "/check",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult check () {
        logger.info("RadioController run");
        AjaxResult result = new AjaxResult();
        result.setMessage("SSM vue前后端框架搭建成功!!!!");
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doRadioList",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doIndexRadioList (@RequestParam(value="typeid", required=false) Integer typeid, @RequestParam(value="anchorid", required=false)Integer anchorid,@RequestParam(value="id", required=false)Integer id) {
        AjaxResult result = new AjaxResult();
        Map<String,Object> paramMap = new HashMap<String, Object>();
        if(typeid!=null) {
        	paramMap.put("typeid", typeid);
        }else if(anchorid!=null){
        	paramMap.put("anchorid", anchorid);
        }else if(id!=null) {
        	paramMap.put("id", id);
        }
        
        try {
        	List<PsychoRadio> radioList = radioService.queryRadioIndexList(paramMap);
        	result.setSuccess(true);
        	result.setData(radioList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询电台失败");
        }
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doComment",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doCommentList (@RequestParam(value="radioid",required=true)Integer radioid) {
        AjaxResult result = new AjaxResult();
        try {
        	List<RadioComment> radioCommentList = radioService.queryRadioComment(radioid);
        	result.setSuccess(true);
        	result.setData(radioCommentList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询电台节目评论失败");
        }
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doLastest",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doLastestPlayList () {
        AjaxResult result = new AjaxResult();
        try {
        	List<PsychoRadio> playList = radioService.queryLastestPlayList();
        	result.setSuccess(true);
        	result.setData(playList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询最新电台列表失败");
        }
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doLikedMost",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doLikedMostPlayList () {
        AjaxResult result = new AjaxResult();
        try {
        	List<PsychoRadio> playList = radioService.queryLikedMostPlayList();
        	result.setSuccess(true);
        	result.setData(playList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询最热电台列表失败");
        }
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doTypeList",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doTypeList (Integer typeId) {
        AjaxResult result = new AjaxResult();
        try {
        	List<RadioType> moodList = radioService.queryMoodList(typeId);
        	result.setSuccess(true);
        	result.setData(moodList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询心情失败");
        }
        System.out.println("controller");
        return result;
    }
    
    @RequestMapping ( value = "/doAnchorList",method = RequestMethod.GET)
    @ResponseBody
    @CrossOrigin
    public AjaxResult doAnchorList () {
        AjaxResult result = new AjaxResult();
        try {
        	List<RadioAnchor> anchorList = radioService.querydoAnchorList();
        	result.setSuccess(true);
        	result.setData(anchorList);
        }catch(Exception e) {
        	e.printStackTrace();
        	result.setSuccess(false);
        	result.setMessage("查询心情失败");
        }
        System.out.println("controller");
        return result;
    }
    
}
