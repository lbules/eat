package com.ssm.service;

import com.ssm.model.Menu;
import com.ssm.model.Suggestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MenuService {

    List<Menu> queryByName(String menuName);

    List<Menu> queryAll();

    List<Menu> selectAll();

    Menu queryById(Integer menuId);

    void collectMenu(@Param("id") Integer menuId);

    void deleteMenu(@Param("id") Integer menuId);

    List<Menu> queryCollect();

    List<Menu> queryDelete();

    void collectCancel(@Param("id") Integer menuId);

    void deleteCancel(@Param("id") Integer menuId);

    void updateUrl( Menu menu);

}
