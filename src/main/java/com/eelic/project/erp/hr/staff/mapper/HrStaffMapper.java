package com.eelic.project.erp.hr.staff.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.eelic.project.erp.hr.staff.domain.HrStaff;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author eelic
 * @date 2023-03-03
 */
public interface HrStaffMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public HrStaff selectHrStaffByStaffId(@Param("staffId") String staffId, @Param("langUser") String langUser);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<HrStaff> selectHrStaffList(@Param("hrStaff") HrStaff hrStaff, @Param("langUser") String langUser);

    /**
     * 新增【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */

    public int insertHrStaff(@Param("hrStaff") HrStaff hrStaff);

    /**
     * 修改【请填写功能名称】
     * 
     * @param hrStaff 【请填写功能名称】
     * @return 结果
     */
    public int updateHrStaff(@Param("hrStaff") HrStaff hrStaff, @Param("langUser") String langUser);

    /**
     * 删除【请填写功能名称】
     * 
     * @param staffId 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteHrStaffByStaffId(String staffId);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param staffIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteHrStaffByStaffIds(String[] staffIds);
}
