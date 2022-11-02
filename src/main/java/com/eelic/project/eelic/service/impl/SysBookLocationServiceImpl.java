package com.eelic.project.eelic.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.eelic.mapper.SysBookLocationMapper;
import com.eelic.project.eelic.domain.SysBookLocation;
import com.eelic.project.eelic.service.ISysBookLocationService;

/**
 * locationService业务层处理
 * 
 * @author ruoyi
 * @date 2022-10-01
 */
@Service
public class SysBookLocationServiceImpl implements ISysBookLocationService 
{
    @Autowired
    private SysBookLocationMapper sysBookLocationMapper;

    /**
     * 查询location
     * 
     * @param locationId location主键
     * @return location
     */
    @Override
    public SysBookLocation selectSysBookLocationByLocationId(String locationId)
    {
        return sysBookLocationMapper.selectSysBookLocationByLocationId(locationId);
    }

    /**
     * 查询location列表
     * 
     * @param sysBookLocation location
     * @return location
     */
    @Override
    public List<SysBookLocation> selectSysBookLocationList(SysBookLocation sysBookLocation)
    {
        return sysBookLocationMapper.selectSysBookLocationList(sysBookLocation);
    }

    /**
     * 新增location
     * 
     * @param sysBookLocation location
     * @return 结果
     */
    @Override
    public int insertSysBookLocation(SysBookLocation sysBookLocation)
    {
        sysBookLocation.setCreateTime(DateUtils.getNowDate());
        return sysBookLocationMapper.insertSysBookLocation(sysBookLocation);
    }

    /**
     * 修改location
     * 
     * @param sysBookLocation location
     * @return 结果
     */
    @Override
    public int updateSysBookLocation(SysBookLocation sysBookLocation)
    {
        sysBookLocation.setUpdateTime(DateUtils.getNowDate());
        return sysBookLocationMapper.updateSysBookLocation(sysBookLocation);
    }

    /**
     * 批量删除location
     * 
     * @param locationIds 需要删除的location主键
     * @return 结果
     */
    @Override
    public int deleteSysBookLocationByLocationIds(String[] locationIds)
    {
        return sysBookLocationMapper.deleteSysBookLocationByLocationIds(locationIds);
    }

    /**
     * 删除location信息
     * 
     * @param locationId location主键
     * @return 结果
     */
    @Override
    public int deleteSysBookLocationByLocationId(String locationId)
    {
        return sysBookLocationMapper.deleteSysBookLocationByLocationId(locationId);
    }
}
