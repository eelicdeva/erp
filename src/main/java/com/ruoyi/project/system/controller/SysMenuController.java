package com.ruoyi.project.system.controller;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.utils.MessageUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.system.domain.SysMenu;
import com.ruoyi.project.system.service.ISysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 菜单信息
 * 
 * @author ruoyi
 */
@RestController
@RequestMapping("/system/menu")
public class SysMenuController extends BaseController
{
    @Autowired
    private ISysMenuService menuService;

    /**
     * 获取菜单列表
     */
    @PreAuthorize("@ss.hasPermi('system:menu:list')")
    @GetMapping("/list")
    public AjaxResult list(SysMenu menu)
    {
        List<SysMenu> menus = menuService.selectMenuList(menu, getUserId(), getLoginUser().getLangUser());
        return AjaxResult.success(menus);
    }

    /**
     * 根据菜单编号获取详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:menu:query')")
    @GetMapping(value = "/{menuId}")
    public AjaxResult getInfo(@PathVariable Long menuId)
    {
        return AjaxResult.success(menuService.selectMenuById(menuId,getLoginUser().getLangUser()));
    }

    /**
     * 获取菜单下拉树列表
     */
    @GetMapping("/treeselect")
    public AjaxResult treeselect(SysMenu menu)
    {
        List<SysMenu> menus = menuService.selectMenuList(menu, getUserId(), getLoginUser().getLangUser());
        return AjaxResult.success(menuService.buildMenuTreeSelect(menus));
    }

    /**
     * 加载对应角色菜单列表树
     */
    @GetMapping(value = "/roleMenuTreeselect/{roleId}")
    public AjaxResult roleMenuTreeselect(@PathVariable("roleId") Long roleId)
    {
        List<SysMenu> menus = menuService.selectMenuList(getUserId(), getLoginUser().getLangUser());
        AjaxResult ajax = AjaxResult.success();
        ajax.put("checkedKeys", menuService.selectMenuListByRoleId(roleId));
        ajax.put("menus", menuService.buildMenuTreeSelect(menus));
        return ajax;
    }

    /**
     * 新增菜单
     */
    @PreAuthorize("@ss.hasPermi('system:menu:add')")
    @Log(title = "菜单管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysMenu menu)
    {
        if (UserConstants.NOT_UNIQUE.equals(menuService.checkMenuNameUnique(menu,getUserId())))
        {
//            "新增菜单'" + menu.getMenuName() + "'失败，菜单名称已存在"
            return AjaxResult.error(MessageUtils.message("add.menu") + menu.getMenuName() + MessageUtils.message("failed.menu"));
        }
        else if (UserConstants.YES_FRAME.equals(menu.getIsFrame()) && !StringUtils.ishttp(menu.getPath()))
        {
//            "新增菜单'" + menu.getMenuName() + "'失败，地址必须以http(s)://开头"
            return AjaxResult.error(MessageUtils.message("add.menu") + menu.getMenuName() + MessageUtils.message("failed.address"));
        }
        menu.setCreateBy(getUsername());
        return toAjax(menuService.insertMenu(menu));
    }

    /**
     * 修改菜单
     */
    @PreAuthorize("@ss.hasPermi('system:menu:edit')")
    @Log(title = "菜单管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysMenu menu)
    {
        if (UserConstants.NOT_UNIQUE.equals(menuService.checkMenuNameUnique(menu, getUserId())))
        {
//            "修改菜单'" + menu.getMenuName() + "'失败，菜单名称已存在"
            return AjaxResult.error(MessageUtils.message("modify.menu") + menu.getMenuName() + MessageUtils.message("failed.menu"));
        }
        else if (UserConstants.YES_FRAME.equals(menu.getIsFrame()) && !StringUtils.ishttp(menu.getPath()))
        {
//            "修改菜单'" + menu.getMenuName() + "'失败，地址必须以http(s)://开头"
            return AjaxResult.error(MessageUtils.message("modify.menu")  + menu.getMenuName() +  MessageUtils.message("failed.address"));
        }
        else if (menu.getMenuId().equals(menu.getParentId()))
        {
//            "修改菜单'" + menu.getMenuName() + "'失败，上级菜单不能选择自己"
            return AjaxResult.error(MessageUtils.message("modify.menu") + menu.getMenuName() + MessageUtils.message("failed.parent.menu"));
        }
        menu.setUpdateBy(getUsername());
        return toAjax(menuService.updateMenu(menu,getLoginUser().getLangUser()));
    }

    /**
     * 删除菜单
     */
    @PreAuthorize("@ss.hasPermi('system:menu:remove')")
    @Log(title = "菜单管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{menuId}")
    public AjaxResult remove(@PathVariable("menuId") Long menuId)
    {
        if (menuService.hasChildByMenuId(menuId))
        {
//            "存在子菜单,不允许删除"
            return AjaxResult.error(MessageUtils.message("submenu.exist"));
        }
        if (menuService.checkMenuExistRole(menuId))
        {
//            "菜单已分配,不允许删除"
            return AjaxResult.error(MessageUtils.message("menu.has.assigned"));
        }
        return toAjax(menuService.deleteMenuById(menuId));
    }
}