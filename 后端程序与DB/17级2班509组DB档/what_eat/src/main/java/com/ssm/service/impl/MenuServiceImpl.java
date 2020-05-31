package com.ssm.service.impl;

import com.ssm.dao.MenuDao;
import com.ssm.model.Menu;
import com.ssm.service.MenuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Resource
    private MenuDao menuDao;


    public List<Menu> queryByName(String menuName) {
        return menuDao.queryByName(menuName);
    }

    public List<Menu> queryAll() {
        return menuDao.queryAll();
    }

    //测试分页
    public List<Menu> selectAll() {
        return menuDao.queryAll();
    }

    public Menu queryById(Integer menuId) {
        return menuDao.queryById(menuId);
    }

    public void collectMenu(Integer menuId) {
        menuDao.collectMenu(menuId);
    }

    public void collcetMenu(Integer menuId) {
        menuDao.collectMenu(menuId);
    }

    public void deleteMenu(Integer menuId) {
        menuDao.deleteMenu(menuId);
    }

    public List<Menu> queryCollect() {
        return menuDao.queryCollect();
    }

    public List<Menu> queryDelete() {
        return menuDao.queryDelete();
    }

    public void collectCancel(Integer menuId) {
        menuDao.collectCancel(menuId);
    }

    public void deleteCancel(Integer menuId) {
        menuDao.deleteCancel(menuId);
    }

    public void updateUrl( Menu menu) {
        menuDao.updateUrl(menu);
    }


}
