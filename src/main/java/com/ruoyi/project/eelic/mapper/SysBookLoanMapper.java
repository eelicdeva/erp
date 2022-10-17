package com.ruoyi.project.eelic.mapper;

import java.util.Date;
import java.util.List;
import com.ruoyi.project.eelic.domain.SysBookLoan;
import org.apache.ibatis.annotations.Param;

/**
 * Book Loan ManagementMapper接口
 * 
 * @author ruoyi
 * @date 2022-09-26
 */
public interface SysBookLoanMapper 
{
    /**
     * 查询Book Loan Management
     * 
     * @param loanId Book Loan Management主键
     * @return Book Loan Management
     */
    public SysBookLoan selectSysBookLoanByLoanId(String loanId, String langUser);

    /**
     * 查询Book Loan Management列表
     * 
     * @param sysBookLoan Book Loan Management
     * @return Book Loan Management集合
     */
    public List<SysBookLoan> selectSysBookLoanList(@Param("BookLoan")SysBookLoan sysBookLoan, @Param("langUser") String langUser);

    /**
     * 新增Book Loan Management
     * 
     * @param sysBookLoan Book Loan Management
     * @return 结果
     */
    public int insertSysBookLoan(SysBookLoan sysBookLoan);

    /**
     * 修改Book Loan Management
     * 
     * @param sysBookLoan Book Loan Management
     * @return 结果
     */
    public int updateSysBookLoan(SysBookLoan sysBookLoan);

    /**
     * 删除Book Loan Management
     * 
     * @param loanId Book Loan Management主键
     * @return 结果
     */
    public int deleteSysBookLoanByLoanId(String loanId);

    /**
     * 批量删除Book Loan Management
     * 
     * @param loanIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysBookLoanByLoanIds(String[] loanIds);

    public List<Integer> countBookLoan();
    public List<String> selectCheckoutDateBookLoan();
}
