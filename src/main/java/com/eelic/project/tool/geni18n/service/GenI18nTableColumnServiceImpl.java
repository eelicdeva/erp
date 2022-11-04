package com.eelic.project.tool.geni18n.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.core.text.Convert;
import com.eelic.project.tool.geni18n.domain.GenI18nTableColumn;
import com.eelic.project.tool.geni18n.mapper.GenI18nTableColumnMapper;

/**
 * 业务字段 服务层实现
 * 
 * @author ruoyi
 */
@Service
public class GenI18nTableColumnServiceImpl implements IGenI18nTableColumnService
{
	@Autowired
	private GenI18nTableColumnMapper genI18nTableColumnMapper;

	/**
     * 查询业务字段列表
     * 
     * @param tableId 业务字段编号
     * @return 业务字段集合
     */
	@Override
	public List<GenI18nTableColumn> selectGenTableColumnListByTableId(Long tableId)
	{
	    return genI18nTableColumnMapper.selectGenTableColumnListByTableId(tableId);
	}
	
    /**
     * 新增业务字段
     * 
     * @param genI18nTableColumn 业务字段信息
     * @return 结果
     */
	@Override
	public int insertGenTableColumn(GenI18nTableColumn genI18nTableColumn)
	{
	    return genI18nTableColumnMapper.insertGenTableColumn(genI18nTableColumn);
	}
	
	/**
     * 修改业务字段
     * 
     * @param genI18nTableColumn 业务字段信息
     * @return 结果
     */
	@Override
	public int updateGenTableColumn(GenI18nTableColumn genI18nTableColumn)
	{
	    return genI18nTableColumnMapper.updateGenTableColumn(genI18nTableColumn);
	}

	/**
     * 删除业务字段对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteGenTableColumnByIds(String ids)
	{
		return genI18nTableColumnMapper.deleteGenTableColumnByIds(Convert.toLongArray(ids));
	}
}