package com.eelic.project.system.sysLang.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.system.sysLang.mapper.SysLangMapper;
import com.eelic.project.system.sysLang.domain.SysLang;
import com.eelic.project.system.sysLang.service.ISysLangService;

/**
 * langService业务层处理
 * 
 * @author eelic
 * @date 2022-12-03
 */
@Service
public class SysLangServiceImpl implements ISysLangService 
{
    @Autowired
    private SysLangMapper sysLangMapper;

    /**
     * 查询lang
     * 
     * @param langId lang主键
     * @return lang
     */
    @Override
    public SysLang selectSysLangByLangId(String langId)
    {
        return sysLangMapper.selectSysLangByLangId(langId);
    }

    /**
     * 查询lang列表
     * 
     * @param sysLang lang
     * @return lang
     */
    @Override
    public List<SysLang> selectSysLangList(SysLang sysLang)
    {
        return sysLangMapper.selectSysLangList(sysLang);
    }

    /**
     * 查询lang列表
     *
     * @param sysLang lang
     * @return lang
     */
    @Override
    public List<SysLang> selectI18nRecord(SysLang sysLang) {
        return sysLangMapper.selectI18nRecord(sysLang);
    }

    /**
     * 新增lang
     * 
     * @param sysLang lang
     * @return 结果
     */
    @Override
    public int insertSysLang(SysLang sysLang)
    {
        try {
            return sysLangMapper.insertSysLang(sysLang);
        } catch (Exception e) {
            try{
                return sysLangMapper.insertSysLang(sysLang);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /**
     * 修改lang
     *
     * @param sysLang lang
     * @return 结果
     */
    @Override
    public int updateSysLang(SysLang sysLang)
    {

        switch (sysLang.getLangTb()) {
            case "sys_book":
                if (sysLang.getlangFn().equals("book_title")) {
                    return sysLangMapper.updateBookTitle(sysLang);
                } else if (sysLang.getlangFn().equals("synopsis")) {
                    return sysLangMapper.updateSynopsis(sysLang);
                }
                break;
            case "sys_book_category":
                if (sysLang.getlangFn().equals("category_name")) {
                    return sysLangMapper.updateCategoryName(sysLang);
                }
                break;
            case "sys_notice":
                if (sysLang.getlangFn().equals("notice_title")) {
                    return sysLangMapper.updateNoticeTitle(sysLang);
                }
                break;
            case "sys_menu":
                if (sysLang.getlangFn().equals("menu_name")) {
                    return sysLangMapper.updateMenuName(sysLang);
                }
                break;
            case "sys_config":
                if (sysLang.getlangFn().equals("config_name")) {
                    return sysLangMapper.updateConfigName(sysLang);
                }
                break;
            case "sys_dept":
                if (sysLang.getlangFn().equals("dept_name")) {
                    return sysLangMapper.updateDeptName(sysLang);
                }
                break;
            case "sys_dict_data":
                if (sysLang.getlangFn().equals("dict_label")) {
                    return sysLangMapper.updateDictLabel(sysLang);
                }
                break;
            case "sys_dict_type":
                if (sysLang.getlangFn().equals("dict_name")) {
                    return sysLangMapper.updateDictName(sysLang);
                }
                break;
            case "sys_job":
                if (sysLang.getlangFn().equals("job_name")) {
                    return sysLangMapper.updateJobName(sysLang);
                }
                break;
            case "sys_post":
                if (sysLang.getlangFn().equals("post_name")) {
                    return sysLangMapper.updatePostName(sysLang);
                }
                break;
        }
        return 0;
    }

    /**
     * 批量删除lang
     * 
     * @param langIds 需要删除的lang主键
     * @return 结果
     */
    @Override
    public int deleteSysLangByLangIds(String[] langIds)
    {
        return sysLangMapper.deleteSysLangByLangIds(langIds);
    }

    /**
     * 删除lang信息
     * 
     * @param langId lang主键
     * @return 结果
     */
    @Override
    public int deleteSysLangByLangId(String langId)
    {
        return sysLangMapper.deleteSysLangByLangId(langId);
    }

    @Override
    public void cleanLangRecord()
    {
        sysLangMapper.cleanLangRecord();
    }
}
