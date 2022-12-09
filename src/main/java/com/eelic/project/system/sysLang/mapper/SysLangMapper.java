package com.eelic.project.system.sysLang.mapper;

import java.util.List;

import com.eelic.project.system.sysLang.domain.SysLang;

/**
 * langMapper接口
 * 
 * @author eelic
 * @date 2022-12-03
 */
public interface SysLangMapper 
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
    public int updateBookTitle(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateSynopsis(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateCategoryName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateNoticeTitle(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateMenuName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateConfigName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateDeptName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateDictLabel(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateDictName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateJobName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updatePostName(SysLang sysLang);

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    public int updateRoleName(SysLang sysLang);

    /**
     * 修改lang
     * 
     * @param sysLang lang
     * @return 结果
     */
    public int updateSysLang(SysLang sysLang);

    /**
     * 删除lang
     * 
     * @param langId lang主键
     * @return 结果
     */
    public int deleteSysLangByLangId(String langId);

    /**
     * 批量删除lang
     * 
     * @param langIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysLangByLangIds(String[] langIds);

    public void cleanLangRecord();
}
