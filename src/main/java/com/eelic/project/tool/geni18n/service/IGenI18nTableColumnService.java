package com.eelic.project.tool.geni18n.service;

import java.util.List;
import com.eelic.project.tool.geni18n.domain.GenI18nTableColumn;

/**
 * 业务字段 服务层
 * 
 * @author ruoyi
 */
public interface IGenI18nTableColumnService
{
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
     * @param genI18NTableColumn 业务字段信息
     * @return 结果
     */
    public int insertGenTableColumn(GenI18nTableColumn genI18NTableColumn);

    /**
     * 修改业务字段
     * 
     * @param genI18NTableColumn 业务字段信息
     * @return 结果
     */
    public int updateGenTableColumn(GenI18nTableColumn genI18NTableColumn);

    /**
     * 删除业务字段信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGenTableColumnByIds(String ids);
}
