package com.ruoyi.common.exception.user;

/**
 * 用户密码不正确或不符合规范异常类
 * 
 * @author ruoyi
 */
public class LimitLoginException extends UserException
{
    private static final long serialVersionUID = 1L;

    public LimitLoginException()
    {
        super("user.password.retry.limit.exceed", null);
    }
}
