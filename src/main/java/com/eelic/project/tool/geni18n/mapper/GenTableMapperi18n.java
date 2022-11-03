package com.eelic.project.tool.geni18n.mapper;

import java.util.List;
import com.eelic.project.tool.geni18n.domain.GenTablei18n;

/**
 * 业务 数据层
 * 
 * @author ruoyi
 */
public interface GenTableMapperi18n
{
    /**
     * 查询业务列表
     * 
     * @param genTablei18n 业务信息
     * @return 业务集合
     */
    public List<GenTablei18n> selectGenTableList(GenTablei18n genTablei18n);

    /**
     * 查询据库列表
     * 
     * @param genTablei18n 业务信息
     * @return 数据库表集合
     */
    public List<GenTablei18n> selectDbTableList(GenTablei18n genTablei18n);

    /**
     * 查询据库列表
     * 
     * @param tableNames 表名称组
     * @return 数据库表集合
     */
    public List<GenTablei18n> selectDbTableListByNames(String[] tableNames);

    /**
     * 查询所有表信息
     * 
     * @return 表信息集合
     */
    public List<GenTablei18n> selectGenTableAll();

    /**
     * 查询表ID业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
    public GenTablei18n selectGenTableById(Long id);

    /**
     * 查询表名称业务信息
     * 
     * @param tableName 表名称
     * @return 业务信息
     */
    public GenTablei18n selectGenTableByName(String tableName);

    /**
     * 新增业务
     * 
     * @param genTablei18n 业务信息
     * @return 结果
     */
    public int insertGenTable(GenTablei18n genTablei18n);

    /**
     * 修改业务
     * 
     * @param genTablei18n 业务信息
     * @return 结果
     */
    public int updateGenTable(GenTablei18n genTablei18n);

    /**
     * 批量删除业务
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGenTableByIds(Long[] ids);
}