package com.ruoyi.framework.security.service;

import com.ruoyi.common.utils.MessageUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;
import com.ruoyi.common.enums.UserStatus;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.security.LoginUser;
import com.ruoyi.project.system.domain.SysUser;
import com.ruoyi.project.system.service.ISysUserService;

/**
 * 用户验证处理
 *
 * @author ruoyi
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService
{
    private static final Logger log = LoggerFactory.getLogger(UserDetailsServiceImpl.class);

    @Autowired
    private ISysUserService userService;

    @Autowired
    private SysPermissionService permissionService;

    @Override
    public UserDetails loadUserByUsername(String username)
    {
        SysUser user = userService.selectUserByUserName(username);
        if (StringUtils.isNull(user))
        {
            log.info(MessageUtils.message("login.user") + " {} " + MessageUtils.message("doesnt.exist"), username);
            throw new ServiceException(MessageUtils.message("login.user") + username + " " + MessageUtils.message("doesnt.exist"));
        }
        else if (UserStatus.DELETED.getCode().equals(user.getDelFlag()))
        {
            log.info(MessageUtils.message("login.user") + " {} " + MessageUtils.message("has.been.deleted"), username);
            throw new ServiceException(MessageUtils.message("sorry.account") + username + " " + MessageUtils.message("deleted"));
        }
        else if (UserStatus.DISABLE.getCode().equals(user.getStatus()))
        {
            log.info(MessageUtils.message("login.user") + " {} " + MessageUtils.message("has.been.disabled"), username);
            throw new ServiceException(MessageUtils.message("sorry.account") + username + " " + MessageUtils.message("disabled"));
        }

        return createLoginUser(user);
    }

    public UserDetails createLoginUser(SysUser user)
    {
        return new LoginUser(user.getUserId(), user.getDeptId(), user, permissionService.getMenuPermission(user));
    }
}
