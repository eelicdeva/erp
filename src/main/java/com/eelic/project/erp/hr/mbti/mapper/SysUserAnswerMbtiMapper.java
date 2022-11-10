package com.eelic.project.erp.hr.mbti.mapper;

import java.util.List;
import com.eelic.project.erp.hr.mbti.domain.SysUserAnswerMbti;

/**
 * MBTI TestMapper接口
 * 
 * @author ruoyi
 * @date 2022-10-19
 */
public interface SysUserAnswerMbtiMapper 
{
    /**
     * 查询MBTI Test
     * 
     * @param userId MBTI Test主键
     * @return MBTI Test
     */
    public SysUserAnswerMbti selectSysUserAnswerMbtiByUserId(String userId);

    /**
     * 查询MBTI Test列表
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return MBTI Test集合
     */
    public List<SysUserAnswerMbti> selectSysUserAnswerMbtiList(SysUserAnswerMbti sysUserAnswerMbti);

    /**
     * 新增MBTI Test
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return 结果
     */
    public int insertSysUserAnswerMbti(SysUserAnswerMbti sysUserAnswerMbti);

    /**
     * 修改MBTI Test
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return 结果
     */
    public int updateSysUserAnswerMbti(SysUserAnswerMbti sysUserAnswerMbti);

    /**
     * 删除MBTI Test
     * 
     * @param userId MBTI Test主键
     * @return 结果
     */
    public int deleteSysUserAnswerMbtiByUserId(String userId);

    /**
     * 批量删除MBTI Test
     * 
     * @param userIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysUserAnswerMbtiByUserIds(String[] userIds);
}
