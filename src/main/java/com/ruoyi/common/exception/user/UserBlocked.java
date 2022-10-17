package com.ruoyi.common.exception.user;

/**
 * 用户密码不正确或不符合规范异常类
 * 
 * @author ruoyi
 */
public class UserBlocked extends UserException
{
    private static final long serialVersionUID = 1L;

    public UserBlocked()
    {
        super("user.blocked", null);
    }
}
