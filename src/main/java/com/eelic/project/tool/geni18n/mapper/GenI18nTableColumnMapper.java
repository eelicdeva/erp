package com.eelic.project.tool.geni18n.mapper;

import java.util.List;
import com.eelic.project.tool.geni18n.domain.GenI18nTableColumn;

/**
 * 业务字段 数据层
 * 
 * @author ruoyi
 */
public interface GenI18nTableColumnMapper
{
    /**
     * 根据表名称查询列信息
     * 
     * @param tableName 表名称
     * @return 列信息
     */
    public List<GenI18nTableColumn> selectDbTableColumnsByName(String tableName);

    /**
     * 查询业务字段列表
     * 
     * @param tableId 业务字段编号
     * @return 业务字段集合
     */
    public List<GenI18nTableColumn> selectGenTableColumnListByTableId(Long tableId);

    /**
     * 新增业务字段
     * 
     * @param genI18nTableColumn 业务字段信息
     * @return 结果
     */
    public int insertGenTableColumn(GenI18nTableColumn genI18nTableColumn);

    /**
     * 修改业务字段
     * 
     * @param genI18nTableColumn 业务字段信息
     * @return 结果
     */
    public int updateGenTableColumn(GenI18nTableColumn genI18nTableColumn);

    /**
     * 删除业务字段
     * 
     * @param genI18nTableColumns 列数据
     * @return 结果
     */
    public int deleteGenTableColumns(List<GenI18nTableColumn> genI18nTableColumns);

    /**
     * 批量删除业务字段
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGenTableColumnByIds(Long[] ids);
}