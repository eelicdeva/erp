package com.ruoyi.project.eelic.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.eelic.mapper.SysBookCategoryMapper;
import com.ruoyi.project.eelic.domain.SysBookCategory;
import com.ruoyi.project.eelic.service.ISysBookCategoryService;

import static com.ruoyi.common.translator.Translator.*;

/**
 * book categoryService业务层处理
 * 
 * @author ruoyi
 * @date 2022-09-30
 */
@Service
public class SysBookCategoryServiceImpl implements ISysBookCategoryService 
{
    @Autowired
    private SysBookCategoryMapper sysBookCategoryMapper;

    /**
     * 查询book category
     * 
     * @param categoryId book category主键
     * @return book category
     */
    @Override
    public SysBookCategory selectSysBookCategoryByCategoryId(String categoryId, String langUser)
    {
        return sysBookCategoryMapper.selectSysBookCategoryByCategoryId(categoryId, langUser);
    }

    /**
     * 查询book category列表
     * 
     * @param sysBookCategory book category
     * @return book category
     */
    @Override
    public List<SysBookCategory> selectSysBookCategoryList(SysBookCategory sysBookCategory, String langUser)
    {
        return sysBookCategoryMapper.selectSysBookCategoryList(sysBookCategory, langUser);
    }

    /**
     * 新增book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    @Override
    public int insertSysBookCategory(SysBookCategory sysBookCategory)
    {
        sysBookCategory.setCreateTime(DateUtils.getNowDate());
        try {
            return sysBookCategoryMapper.insertSysBookCategory(sysBookCategory, translateAll(sysBookCategory.getCategoryName()));
        } catch (Exception e) {
            try{
                return sysBookCategoryMapper.insertSysBookCategory(sysBookCategory, translateOffline(sysBookCategory.getCategoryName()));
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /**
     * 修改book category
     * 
     * @param sysBookCategory book category
     * @return 结果
     */
    @Override
    public int updateSysBookCategory(SysBookCategory sysBookCategory)
    {
        sysBookCategory.setUpdateTime(DateUtils.getNowDate());
        return sysBookCategoryMapper.updateSysBookCategory(sysBookCategory);
    }

    /**
     * 批量删除book category
     * 
     * @param categoryIds 需要删除的book category主键
     * @return 结果
     */
    @Override
    public int deleteSysBookCategoryByCategoryIds(String[] categoryIds)
    {
        return sysBookCategoryMapper.deleteSysBookCategoryByCategoryIds(categoryIds);
    }

    /**
     * 删除book category信息
     * 
     * @param categoryId book category主键
     * @return 结果
     */
    @Override
    public int deleteSysBookCategoryByCategoryId(String categoryId)
    {
        return sysBookCategoryMapper.deleteSysBookCategoryByCategoryId(categoryId);
    }
}
