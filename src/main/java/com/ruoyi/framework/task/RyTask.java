package com.ruoyi.framework.task;

import com.ruoyi.common.utils.MessageUtils;
import org.apache.xmlbeans.impl.jam.mutable.MElement;
import org.springframework.stereotype.Component;
import com.ruoyi.common.utils.StringUtils;

/**
 * 定时任务调度测试
 * 
 * @author ruoyi
 */
@Component("ryTask")
public class RyTask
{
    public void ryMultipleParams(String s, Boolean b, Long l, Double d, Integer i)
    {
        System.out.println(StringUtils.format(MessageUtils.message("execute.multi.argument"), s, b, l, d, i));
    }

    public void ryParams(String params)
    {
//        "执行有参方法："
        System.out.println(MessageUtils.message("execute.parameterized") + params);
    }

    public void ryNoParams()
    {
//        "执行无参方法"
        System.out.println(MessageUtils.message("execute.no-argument"));
    }
}
