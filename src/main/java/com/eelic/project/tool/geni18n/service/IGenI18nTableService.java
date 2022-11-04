package com.eelic.project.tool.geni18n.service;

import java.util.List;
import java.util.Map;
import com.eelic.project.tool.geni18n.domain.GenI18nTable;

/**
 * 业务 服务层
 * 
 * @author ruoyi
 */
public interface IGenI18nTableService
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
     * 查询业务信息
     * 
     * @param id 业务ID
     * @return 业务信息
     */
    public GenI18nTable selectGenTableById(Long id);

    /**
     * 修改业务
     * 
     * @param genI18nTable 业务信息
     * @return 结果
     */
    public void updateGenTable(GenI18nTable genI18nTable);

    /**
     * 删除业务信息
     * 
     * @param tableIds 需要删除的表数据ID
     * @return 结果
     */
    public void deleteGenTableByIds(Long[] tableIds);

    /**
     * 导入表结构
     * 
     * @param tableList 导入表列表
     */
    public void importGenTable(List<GenI18nTable> tableList);

    /**
     * 预览代码
     * 
     * @param tableId 表编号
     * @return 预览数据列表
     */
    public Map<String, String> previewCode(Long tableId);

    /**
     * 生成代码（下载方式）
     * 
     * @param tableName 表名称
     * @return 数据
     */
    public byte[] downloadCode(String tableName);

    /**
     * 生成代码（自定义路径）
     * 
     * @param tableName 表名称
     * @return 数据
     */
    public void generatorCode(String tableName);

    /**
     * 同步数据库
     * 
     * @param tableName 表名称
     */
    public void synchDb(String tableName);

    /**
     * 批量生成代码（下载方式）
     * 
     * @param tableNames 表数组
     * @return 数据
     */
    public byte[] downloadCode(String[] tableNames);

    /**
     * 修改保存参数校验
     * 
     * @param genI18nTable 业务信息
     */
    public void validateEdit(GenI18nTable genI18nTable);
}
