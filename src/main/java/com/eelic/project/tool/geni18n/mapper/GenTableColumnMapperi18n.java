package com.eelic.project.tool.geni18n.mapper;

import java.util.List;
import com.eelic.project.tool.geni18n.domain.GenTableColumni18n;

/**
 * 业务字段 数据层
 * 
 * @author ruoyi
 */
public interface GenTableColumnMapperi18n
{
    /**
     * 根据表名称查询列信息
     * 
     * @param tableName 表名称
     * @return 列信息
     */
    public List<GenTableColumni18n> selectDbTableColumnsByName(String tableName);

    /**
     * 查询业务字段列表
     * 
     * @param tableId 业务字段编号
     * @return 业务字段集合
     */
    public List<GenTableColumni18n> selectGenTableColumnListByTableId(Long tableId);

    /**
     * 新增业务字段
     * 
     * @param genTableColumni18n 业务字段信息
     * @return 结果
     */
    public int insertGenTableColumn(GenTableColumni18n genTableColumni18n);

    /**
     * 修改业务字段
     * 
     * @param genTableColumni18n 业务字段信息
     * @return 结果
     */
    public int updateGenTableColumn(GenTableColumni18n genTableColumni18n);

    /**
     * 删除业务字段
     * 
     * @param genTableColumni18ns 列数据
     * @return 结果
     */
    public int deleteGenTableColumns(List<GenTableColumni18n> genTableColumni18ns);

    /**
     * 批量删除业务字段
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGenTableColumnByIds(Long[] ids);
}