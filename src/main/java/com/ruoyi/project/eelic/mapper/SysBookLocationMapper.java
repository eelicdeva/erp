package com.ruoyi.project.eelic.mapper;

import java.util.List;
import com.ruoyi.project.eelic.domain.SysBookLocation;

/**
 * locationMapper接口
 * 
 * @author ruoyi
 * @date 2022-10-01
 */
public interface SysBookLocationMapper 
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
     * 删除location
     * 
     * @param locationId location主键
     * @return 结果
     */
    public int deleteSysBookLocationByLocationId(String locationId);

    /**
     * 批量删除location
     * 
     * @param locationIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysBookLocationByLocationIds(String[] locationIds);
}
