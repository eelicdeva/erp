package com.eelic.project.eelic.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.eelic.mapper.SysUserAnswerMbtiMapper;
import com.eelic.project.eelic.domain.SysUserAnswerMbti;
import com.eelic.project.eelic.service.ISysUserAnswerMbtiService;

/**
 * MBTI TestService业务层处理
 * 
 * @author ruoyi
 * @date 2022-10-19
 */
@Service
public class SysUserAnswerMbtiServiceImpl implements ISysUserAnswerMbtiService 
{
    @Autowired
    private SysUserAnswerMbtiMapper sysUserAnswerMbtiMapper;

    /**
     * 查询MBTI Test
     * 
     * @param userId MBTI Test主键
     * @return MBTI Test
     */
    @Override
    public SysUserAnswerMbti selectSysUserAnswerMbtiByUserId(String userId)
    {
        return sysUserAnswerMbtiMapper.selectSysUserAnswerMbtiByUserId(userId);
    }

    /**
     * 查询MBTI Test列表
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return MBTI Test
     */
    @Override
    public List<SysUserAnswerMbti> selectSysUserAnswerMbtiList(SysUserAnswerMbti sysUserAnswerMbti)
    {
        return sysUserAnswerMbtiMapper.selectSysUserAnswerMbtiList(sysUserAnswerMbti);
    }

    /**
     * 新增MBTI Test
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return 结果
     */
    @Override
    public int insertSysUserAnswerMbti(SysUserAnswerMbti sysUserAnswerMbti)
    {
        return sysUserAnswerMbtiMapper.insertSysUserAnswerMbti(sysUserAnswerMbti);
    }

    /**
     * 修改MBTI Test
     * 
     * @param sysUserAnswerMbti MBTI Test
     * @return 结果
     */
    @Override
    public int updateSysUserAnswerMbti(SysUserAnswerMbti sysUserAnswerMbti)
    {
        return sysUserAnswerMbtiMapper.updateSysUserAnswerMbti(sysUserAnswerMbti);
    }

    /**
     * 批量删除MBTI Test
     * 
     * @param userIds 需要删除的MBTI Test主键
     * @return 结果
     */
    @Override
    public int deleteSysUserAnswerMbtiByUserIds(String[] userIds)
    {
        return sysUserAnswerMbtiMapper.deleteSysUserAnswerMbtiByUserIds(userIds);
    }

    /**
     * 删除MBTI Test信息
     * 
     * @param userId MBTI Test主键
     * @return 结果
     */
    @Override
    public int deleteSysUserAnswerMbtiByUserId(String userId)
    {
        return sysUserAnswerMbtiMapper.deleteSysUserAnswerMbtiByUserId(userId);
    }
}
