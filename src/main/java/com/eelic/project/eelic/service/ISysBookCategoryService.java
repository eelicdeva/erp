package com.eelic.project.eelic.service;

import java.util.List;
import com.eelic.project.eelic.domain.SysBookCategory;

/**
 * book categoryService接口
 * 
 * @author ruoyi
 * @date 2022-09-30
 */
public interface ISysBookCategoryService 
{
    /**
     * 查询book category
     * 
     * @param categoryId book category主键
     * @return book category
     */
    public SysBookCategory selectSysBookCategoryByCategoryId(String categoryId, String langUser);

    /**
     * 查询book category列表
     * 
     * @param sysBookCategory book category
     * @return book category集合
     */
    public List<SysBookCategory> selectSysBookCategoryList(SysBookCategory sysBookCategory, String langUser);

    /**
     * 新增book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    public int insertSysBookCategory(SysBookCategory sysBookCategory);

    /**
     * 修改book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    public int updateSysBookCategory(SysBookCategory sysBookCategory);

    /**
     * 批量删除book category
     * 
     * @param categoryIds 需要删除的book category主键集合
     * @return 结果
     */
    public int deleteSysBookCategoryByCategoryIds(String[] categoryIds);

    /**
     * 删除book category信息
     * 
     * @param categoryId book category主键
     * @return 结果
     */
    public int deleteSysBookCategoryByCategoryId(String categoryId);
}
