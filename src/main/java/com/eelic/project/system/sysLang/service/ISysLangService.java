package com.eelic.project.system.sysLang.service;

import java.util.List;

import com.eelic.project.system.sysLang.domain.SysLang;

/**
 * langService接口
 * 
 * @author eelic
 * @date 2022-12-03
 */
public interface ISysLangService 
{
    /**
     * 查询lang
     * 
     * @param langId lang主键
     * @return lang
     */
    public SysLang selectSysLangByLangId(String langId);

    /**
     * 查询lang列表
     * 
     * @param sysLang lang
     * @return lang集合
     */
    public List<SysLang> selectSysLangList(SysLang sysLang);

    /**
     * 查询lang列表
     *
     * @param sysLang lang
     * @return lang集合
     */
    public List<SysLang> selectI18nRecord(SysLang sysLang);

    /**
     * 新增lang
     * 
     * @param sysLang lang
     * @return 结果
     */
    public int insertSysLang(SysLang sysLang);

    /**
     * 修改lang
     * 
     * @param sysLang lang
     * @return 结果
     */
    public int updateSysLang(SysLang sysLang);

    /**
     * 批量删除lang
     * 
     * @param langIds 需要删除的lang主键集合
     * @return 结果
     */
    public int deleteSysLangByLangIds(String[] langIds);

    /**
     * 删除lang信息
     * 
     * @param langId lang主键
     * @return 结果
     */
    public int deleteSysLangByLangId(String langId);


    public void cleanLangRecord();
}
