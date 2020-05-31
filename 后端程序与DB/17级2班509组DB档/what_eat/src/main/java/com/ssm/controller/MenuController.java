package com.ssm.controller;

import com.ssm.dto.Param;
import com.ssm.model.Menu;
import com.ssm.service.MenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
//@CrossOrigin(origins = {"*"}, maxAge = 3600)
@RestController
@RequestMapping("/menu")
public class MenuController {

    @Resource
    private MenuService menuService;

    @RequestMapping(value="/list",method = RequestMethod.GET)
    public Object list(HttpServletRequest request,HttpServletResponse response){
        System.out.println("执行list");
        Enumeration<String> headerNames = request.getHeaderNames();
        List<Menu> menus = menuService.queryAll();
        return menus;
    }

    @RequestMapping(value="/list/operator",method = RequestMethod.POST)
    public Object collectedList(@RequestBody Param param){
        System.out.println("执行operatorList");
        System.out.println(param.toString());
        String type = param.getType();
        List<Menu> menus=null;
        if("collect".equals(type)){
            menus = menuService.queryCollect();
        }
        else if("delete".equals(type)){
            menus = menuService.queryDelete();
        }
        return menus;
    }

    @RequestMapping(value = "/id/detail",method = RequestMethod.POST)
    public Object detail(@RequestBody Param param){
        System.out.println("/id/detail");
        System.out.println(param.toString());
        Menu menu = menuService.queryById(param.getId());
        System.out.println(menu);
        HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("menu",menu);
        return map;
    }

    @RequestMapping(value="/menuName",method = RequestMethod.POST)
    public Object queryMenuByName(@RequestBody Param param){
        System.out.println("/menuName");
        System.out.println(param.toString());
        List<Menu> menus = menuService.queryByName(param.getMenuName());
//        HashMap<String, Object> map = new HashMap<String, Object>();
//        map.put("list",menus);
        System.out.println(menus.size());
        return menus;
    }

    @RequestMapping(value = "/id/collected",method = RequestMethod.POST)
    public Object collected(@RequestBody Param param){
        System.out.println("/id/collected");
        System.out.println(param.toString());
        menuService.collectMenu(param.getId());
        menuService.deleteCancel(param.getId());
        return "success";
    }

    @RequestMapping(value = "/id/cancel",method = RequestMethod.POST)
    public Object cancel(@RequestBody Param param){
        System.out.println("/id/cancel");
        System.out.println(param.toString());
        List<Menu> menus =null;
        if("collect".equals(param.getType())){
            menuService.collectCancel(param.getId());
            menuService.deleteMenu(param.getId());
            menus=menuService.queryCollect();
        }
        else{
            menuService.deleteCancel(param.getId());
            menus=menuService.queryDelete();
        }
        return menus;
    }
}
