package com.eelic.project.erp.book.mapper;

import java.util.List;
import com.eelic.project.erp.book.domain.SysBookCategory;
import org.apache.ibatis.annotations.Param;

/**
 * book categoryMapper接口
 * 
 * @author ruoyi
 * @date 2022-09-30
 */
public interface SysBookCategoryMapper 
{
    /**
     * 查询book category
     * 
     * @param categoryId book category主键
     * @return book category
     */
    public SysBookCategory selectSysBookCategoryByCategoryId( String categoryId, String langUser);

    /**
     * 查询book category列表
     * 
     * @param sysBookCategory book category
     * @return book category集合
     */
    public List<SysBookCategory> selectSysBookCategoryList( @Param("category") SysBookCategory sysBookCategory, @Param("langUser") String langUser);

    /**
     * 新增book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    public int insertSysBookCategory(@Param("c") SysBookCategory sysBookCategory, @Param("categoryCat")String[] categoryCat);

    /**
     * 修改book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    public int updateSysBookCategory(SysBookCategory sysBookCategory);

    /**
     * 删除book category
     * 
     * @param categoryId book category主键
     * @return 结果
     */
    public int deleteSysBookCategoryByCategoryId(String categoryId);

    /**
     * 批量删除book category
     * 
     * @param categoryIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysBookCategoryByCategoryIds(String[] categoryIds);
}
