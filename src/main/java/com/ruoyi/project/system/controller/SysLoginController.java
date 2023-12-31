package com.ruoyi.project.system.controller;

import java.util.List;
import java.util.Locale;
import java.util.Set;
import com.ruoyi.common.utils.RsaUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.constant.Constants;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.framework.security.LoginBody;
import com.ruoyi.framework.security.service.SysLoginService;
import com.ruoyi.framework.security.service.SysPermissionService;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.project.system.domain.SysMenu;
import com.ruoyi.project.system.domain.SysUser;
import com.ruoyi.project.system.service.ISysMenuService;

/**
 * 登录验证
 * 
 * @author ruoyi
 */
@RestController
public class SysLoginController
{
    @Autowired
    private SysLoginService loginService;

    @Autowired
    private ISysMenuService menuService;

    @Autowired
    private SysPermissionService permissionService;

    /**
     * 登录方法
     * 
     * @param loginBody 登录信息
     * @return 结果
     */
    @PostMapping("/login")
    public AjaxResult login(@RequestBody LoginBody loginBody)
    {
        AjaxResult ajax = AjaxResult.success();

        String langUser = loginBody.getLang();

        if(!langUser.isEmpty()) {
            if(langUser.equals("en")){
                LocaleContextHolder.setLocale(Locale.ENGLISH);
            }
            if(langUser.equals("zh")){
                LocaleContextHolder.setLocale(Locale.CHINA);
            }
            if(langUser.equals("id")){
                Locale localeIndo = new Locale("in", "ID");
                LocaleContextHolder.setLocale(localeIndo);
            }
        }

        // 生成令牌
        String token = loginService.login(loginBody.getUsername(), loginBody.getPassword(), loginBody.getCode(),
                loginBody.getUuid(), loginBody.getLang());
        ajax.put(Constants.TOKEN, token);
        return ajax;
    }

    /**
     * 获取用户信息
     * 
     * @return 用户信息
     */
    @GetMapping("getInfo")
    public AjaxResult getInfo()
    {
        SysUser user = SecurityUtils.getLoginUser().getUser();
        // 角色集合
        Set<String> roles = permissionService.getRolePermission(user);
        // 权限集合
        Set<String> permissions = permissionService.getMenuPermission(user);
        AjaxResult ajax = AjaxResult.success();
        ajax.put("user", user);
        ajax.put("roles", roles);
        ajax.put("permissions", permissions);
        return ajax;
    }

    /**
     * 获取路由信息
     * 
     * @return 路由信息
     */
    @GetMapping("getRouters")
    public AjaxResult getRouters()
    {
        Long userId = SecurityUtils.getUserId();
        List<SysMenu> menus = menuService.selectMenuTreeByUserId(userId, SecurityUtils.getLoginUser().getLangUser());
        return AjaxResult.success(menuService.buildMenus(menus));
    }

    /**
     * 获取公钥 前端用来密码加密
     *
     * @return
     */
    @GetMapping("/publicKey")
    public RsaUtils.RsaKeyPair publicKey() {
        //便于测试 公私秘钥都传了 可改为只传公钥
        //RsaUtils.RsaKeyPair rsaKeyPair = new RsaUtils.RsaKeyPair();
        //rsaKeyPair.setPublicKey(RsaUtils.getPublicKey());
        //return rsaKeyPair;
        return RsaUtils.rsaKeyPair();
    }
}
