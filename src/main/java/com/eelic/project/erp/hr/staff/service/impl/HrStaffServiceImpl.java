package com.eelic.project.erp.hr.staff.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.erp.hr.staff.mapper.HrStaffMapper;
import com.eelic.project.erp.hr.staff.domain.HrStaff;
import com.eelic.project.erp.hr.staff.service.IHrStaffService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author eelic
 * @date 2023-03-03
 */
@Service
public class HrStaffServiceImpl implements IHrStaffService 
{
    @Autowired
    private HrStaffMapper hrStaffMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public HrStaff selectHrStaffByStaffId(String staffId, String langUser)
    {
        return hrStaffMapper.selectHrStaffByStaffId(staffId, langUser);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<HrStaff> selectHrStaffList(HrStaff hrStaff, String langUser)
    {
        return hrStaffMapper.selectHrStaffList(hrStaff, langUser);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertHrStaff(HrStaff hrStaff)
    {
        try {
            return hrStaffMapper.insertHrStaff(hrStaff);
        } catch (Exception e) {
            try{
                return hrStaffMapper.insertHrStaff(hrStaff);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateHrStaff(HrStaff hrStaff, String langUser)
    {
        return hrStaffMapper.updateHrStaff(hrStaff, langUser);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param staffIds 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteHrStaffByStaffIds(String[] staffIds)
    {
        return hrStaffMapper.deleteHrStaffByStaffIds(staffIds);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteHrStaffByStaffId(String staffId)
    {
        return hrStaffMapper.deleteHrStaffByStaffId(staffId);
    }
}
