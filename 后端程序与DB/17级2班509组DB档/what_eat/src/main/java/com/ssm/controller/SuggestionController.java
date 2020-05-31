package com.ssm.controller;

import com.ssm.dto.Param;
import com.ssm.model.Menu;
import com.ssm.model.Suggestion;
import com.ssm.service.MenuService;
import com.ssm.service.SuggestionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import sun.misc.Request;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
@CrossOrigin(origins = {"*"}, maxAge = 3600)
@RestController
@RequestMapping("/suggestion")
public class SuggestionController {

    @Resource
    private MenuService menuService;

    @Resource
    private SuggestionService suggestionService;

    @RequestMapping(value="/id/form",method = RequestMethod.POST)
    public Object suggestionForm(@RequestBody Param param, HttpServletRequest request, HttpServletResponse response){
//        response.setHeader("Access-Control-Allow-Origin", "*");
//        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
//        response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Token,Accept, Connection, User-Agent, Cookie");
//        response.setHeader("Access-Control-Max-Age", "3628800");
//        System.out.println("设置跨域请求");
        System.out.println("/id/form");
        System.out.println(param.toString());
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd  hh:mm:ss");
        String format = dateFormat.format(date);
        Menu menu = menuService.queryById(param.getId());
        Suggestion suggestion = new Suggestion();
        suggestion.setCategory(menu.getCategory());
        suggestion.setMethod(menu.getMethod());
        suggestion.setIdea(param.getType());
        suggestion.setName(menu.getName());
        suggestion.setUrl(menu.getUrl());
        suggestion.setDate(format);
        suggestionService.insertSuggestion(suggestion);
        return "success";
    }

    @RequestMapping(value="/id/form/detail",method = RequestMethod.POST)
    public Object formdetail(@RequestBody Param param,HttpServletRequest request,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
        response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Token,Accept, Connection, User-Agent, Cookie");
        response.setHeader("Access-Control-Max-Age", "3628800");
        System.out.println("设置跨域请求");
        System.out.println("/id/form/detail");
        System.out.println(param.toString());
        HashMap<String, Object> map = new HashMap<String, Object>();
        Suggestion suggestion = suggestionService.queryById(param.getId());
        map.put("suggestion",suggestion);
        return map;
    }

    @RequestMapping(value="/list",method = RequestMethod.GET)
    public Object suggestionList(HttpServletRequest request,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
        response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Token,Accept, Connection, User-Agent, Cookie");
        response.setHeader("Access-Control-Max-Age", "3628800");
        System.out.println("设置跨域请求");
        System.out.println("/list");
        List<Suggestion> suggestions = suggestionService.queryUnreviewed();
        return suggestions;
    }

    @RequestMapping(value="/id/review",method = RequestMethod.POST)
    public Object suggestionReview(@RequestBody Param param,HttpServletRequest request,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, PATCH");
        response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Token,Accept, Connection, User-Agent, Cookie");
        response.setHeader("Access-Control-Max-Age", "3628800");
        System.out.println("设置跨域请求");
        System.out.println("/id/review");
        System.out.println(param.toString());
        if("yes".equals(param.getType())){
            suggestionService.passed(param.getId());
        }
        else{
            suggestionService.noPassed(param.getId());
        }
        List<Suggestion> suggestions = suggestionService.queryUnreviewed();
        return suggestions;
    }
}
