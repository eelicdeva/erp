package com.eelic.project.tool.geni18n.mapper;

import java.util.List;
import com.eelic.project.tool.geni18n.domain.GenI18nTable;

/**
 * 业务 数据层
 * 
 * @author ruoyi
 */
public interface GenI18nTableMapper
{
    /**
     * 查询业务列表
     * 
     * @param genI18nTable 业务信息
     * @return 业务集合
     */
    public List<GenI18nTable> selectGenTableList(GenI18nTable genI18nTable);

    /**
     * 查询据库列表
     * 
     * @param genI18nTable 业务信息
     * @return 数据库表集合
     */
    public List<GenI18nTable> selectDbTableList(GenI18nTable genI18nTable);

    /**
     * 查询据库列表
     * 
     * @param tableNames 表名称组
     * @return 数据库表集合
     */
    public List<GenI18nTable> selectDbTableListByNames(String[] tableNames);

    /**
     * 查询所有表信息
     * 
     * @return 表信息集合
     */
    public List<GenI18nTable> selectGenTableAll();

    /**
     * 查询表ID业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
    public GenI18nTable selectGenTableById(Long id);

    /**
     * 查询表名称业务信息
     * 
     * @param tableName 表名称
     * @return 业务信息
     */
    public GenI18nTable selectGenTableByName(String tableName);

    /**
     * 新增业务
     * 
     * @param genI18nTable 业务信息
     * @return 结果
     */
    public int insertGenTable(GenI18nTable genI18nTable);

    /**
     * 修改业务
     * 
     * @param genI18nTable 业务信息
     * @return 结果
     */
    public int updateGenTable(GenI18nTable genI18nTable);

    /**
     * 批量删除业务
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteGenTableByIds(Long[] ids);
}