package com.eelic.project.erp.book.service;

import java.util.List;
import com.eelic.project.erp.book.domain.SysBookLocation;

/**
 * locationService接口
 * 
 * @author ruoyi
 * @date 2022-10-01
 */
public interface ISysBookLocationService 
{
    /**
     * 查询location
     * 
     * @param locationId location主键
     * @return location
     */
    public SysBookLocation selectSysBookLocationByLocationId(String locationId);

    /**
     * 查询location列表
     * 
     * @param sysBookLocation location
     * @return location集合
     */
    public List<SysBookLocation> selectSysBookLocationList(SysBookLocation sysBookLocation);

    /**
     * 新增location
     * 
     * @param sysBookLocation location
     * @return 结果
     */
    public int insertSysBookLocation(SysBookLocation sysBookLocation);

    /**
     * 修改location
     * 
     * @param sysBookLocation location
     * @return 结果
     */
    public int updateSysBookLocation(SysBookLocation sysBookLocation);

    /**
     * 批量删除location
     * 
     * @param locationIds 需要删除的location主键集合
     * @return 结果
     */
    public int deleteSysBookLocationByLocationIds(String[] locationIds);

    /**
     * 删除location信息
     * 
     * @param locationId location主键
     * @return 结果
     */
    public int deleteSysBookLocationByLocationId(String locationId);
}
