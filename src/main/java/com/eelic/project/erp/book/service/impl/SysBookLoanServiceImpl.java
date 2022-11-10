package com.eelic.project.erp.book.service.impl;

import java.text.SimpleDateFormat;
import java.util.List;

import com.eelic.project.erp.book.domain.SysCountBookLoan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.erp.book.mapper.SysBookLoanMapper;
import com.eelic.project.erp.book.domain.SysBookLoan;
import com.eelic.project.erp.book.service.ISysBookLoanService;

/**
 * Book Loan ManagementService业务层处理
 * 
 * @author ruoyi
 * @date 2022-09-26
 */
@Service
public class SysBookLoanServiceImpl implements ISysBookLoanService 
{
    @Autowired
    private SysBookLoanMapper sysBookLoanMapper;

    /**
     * 查询Book Loan Management
     * 
     * @param loanId Book Loan Management主键
     * @return Book Loan Management
     */
    @Override
    public SysBookLoan selectSysBookLoanByLoanId(String loanId, String langUser)
    {
        return sysBookLoanMapper.selectSysBookLoanByLoanId(loanId, langUser);
    }

    /**
     * 查询Book Loan Management列表
     * 
     * @param sysBookLoan Book Loan Management
     * @return Book Loan Management
     */
    @Override
    public List<SysBookLoan> selectSysBookLoanList(SysBookLoan sysBookLoan, String langUser)
    {
        return sysBookLoanMapper.selectSysBookLoanList(sysBookLoan, langUser);
    }


    public SysCountBookLoan countBookLoan(){
        SimpleDateFormat dt1 = new SimpleDateFormat("yyyyy-mm-dd");
        return new SysCountBookLoan(sysBookLoanMapper.selectCheckoutDateBookLoan(),sysBookLoanMapper.countBookLoan());
    }

    /**
     * 新增Book Loan Management
     * 
     * @param sysBookLoan Book Loan Management
     * @return 结果
     */
    @Override
    public int insertSysBookLoan(SysBookLoan sysBookLoan)
    {
        return sysBookLoanMapper.insertSysBookLoan(sysBookLoan);
    }

    /**
     * 修改Book Loan Management
     * 
     * @param sysBookLoan Book Loan Management
     * @return 结果
     */
    @Override
    public int updateSysBookLoan(SysBookLoan sysBookLoan)
    {
        return sysBookLoanMapper.updateSysBookLoan(sysBookLoan);
    }

    /**
     * 批量删除Book Loan Management
     * 
     * @param loanIds 需要删除的Book Loan Management主键
     * @return 结果
     */
    @Override
    public int deleteSysBookLoanByLoanIds(String[] loanIds)
    {
        return sysBookLoanMapper.deleteSysBookLoanByLoanIds(loanIds);
    }

    /**
     * 删除Book Loan Management信息
     * 
     * @param loanId Book Loan Management主键
     * @return 结果
     */
    @Override
    public int deleteSysBookLoanByLoanId(String loanId)
    {
        return sysBookLoanMapper.deleteSysBookLoanByLoanId(loanId);
    }
}
