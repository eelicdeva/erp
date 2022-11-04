package com.eelic.project.tool.geni18n.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.common.core.text.Convert;
import com.eelic.project.tool.geni18n.domain.GenTableColumni18n;
import com.eelic.project.tool.geni18n.mapper.GenTableColumnMapperi18n;

/**
 * 业务字段 服务层实现
 * 
 * @author ruoyi
 */
@Service
public class GenTableColumnServicei18nImpli18N implements IGenTableColumnServicei18n
{
	@Autowired
	private GenTableColumnMapperi18n genTableColumnMapperi18n;

	/**
     * 查询业务字段列表
     * 
     * @param tableId 业务字段编号
     * @return 业务字段集合
     */
	@Override
	public List<GenTableColumni18n> selectGenTableColumnListByTableId(Long tableId)
	{
	    return genTableColumnMapperi18n.selectGenTableColumnListByTableId(tableId);
	}
	
    /**
     * 新增业务字段
     * 
     * @param genTableColumni18n 业务字段信息
     * @return 结果
     */
	@Override
	public int insertGenTableColumn(GenTableColumni18n genTableColumni18n)
	{
	    return genTableColumnMapperi18n.insertGenTableColumn(genTableColumni18n);
	}
	
	/**
     * 修改业务字段
     * 
     * @param genTableColumni18n 业务字段信息
     * @return 结果
     */
	@Override
	public int updateGenTableColumn(GenTableColumni18n genTableColumni18n)
	{
	    return genTableColumnMapperi18n.updateGenTableColumn(genTableColumni18n);
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
		return genTableColumnMapperi18n.deleteGenTableColumnByIds(Convert.toLongArray(ids));
	}
}