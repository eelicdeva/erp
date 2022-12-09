package com.eelic.project.system.sysLang.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * lang对象 sys_lang
 * 
 * @author eelic
 * @date 2022-12-03
 */
public class SysLang extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String langId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String zhCn;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String enUs;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String idId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String langIdx;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String langKey;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String langTb;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String langFn;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String status;

    public void setLangId(String langId) 
    {
        this.langId = langId;
    }

    public String getLangId() 
    {
        return langId;
    }
    public void setZhCn(String zhCn) 
    {
        this.zhCn = zhCn;
    }

    public String getZhCn() 
    {
        return zhCn;
    }
    public void setEnUs(String enUs) 
    {
        this.enUs = enUs;
    }

    public String getEnUs() 
    {
        return enUs;
    }
    public void setIdId(String idId) 
    {
        this.idId = idId;
    }

    public String getIdId() 
    {
        return idId;
    }
    public void setLangIdx(String langIdx) 
    {
        this.langIdx = langIdx;
    }

    public String getLangIdx() 
    {
        return langIdx;
    }
    public void setLangKey(String langKey) 
    {
        this.langKey = langKey;
    }

    public String getLangKey() 
    {
        return langKey;
    }
    public void setLangTb(String langTb) 
    {
        this.langTb = langTb;
    }

    public String getLangTb() 
    {
        return langTb;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getlangFn() {
        return langFn;
    }
    public void setlangFn(String langFn) {
        this.langFn = langFn;
    }

    public String getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("langId", getLangId())
            .append("zhCn", getZhCn())
            .append("enUs", getEnUs())
            .append("idId", getIdId())
            .append("langIdx", getLangIdx())
            .append("langKey", getLangKey())
            .append("langTb", getLangTb())
            .append("langFn", getlangFn())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }

}
