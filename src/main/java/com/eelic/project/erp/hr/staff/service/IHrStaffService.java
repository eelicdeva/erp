package com.eelic.project.erp.hr.staff.service;

import java.util.List;

import com.eelic.project.erp.hr.staff.domain.HrStaff;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author eelic
 * @date 2023-03-03
 */
public interface IHrStaffService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public HrStaff selectHrStaffByStaffId(String staffId, String langUser);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<HrStaff> selectHrStaffList(HrStaff hrStaff, String langUser);

    /**
     * 新增【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */
    public int insertHrStaff(HrStaff hrStaff);

    /**
     * 修改【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */
    public int updateHrStaff(HrStaff hrStaff, String langUser);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param staffIds 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteHrStaffByStaffIds(String[] staffIds);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteHrStaffByStaffId(String staffId);
}
