package com.eelic.project.erp.book.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.eelic.project.erp.book.domain.SysBookLoan;
import com.eelic.project.erp.book.service.ISysBookLoanService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * Book Loan ManagementController
 * 
 * @author ruoyi
 * @date 2022-09-26
 */
@RestController
@RequestMapping("/hr/loan")
public class SysBookLoanController extends BaseController
{
    @Autowired
    private ISysBookLoanService sysBookLoanService;

    /**
     * 查询Book Loan Management列表
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysBookLoan sysBookLoan)
    {
        startPage();
        List<SysBookLoan> list = sysBookLoanService.selectSysBookLoanList(sysBookLoan, getLoginUser().getLangUser());
        return getDataTable(list);
    }

    /**
     * 导出Book Loan Management列表
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:export')")
    @Log(title = "Book Loan Management", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBookLoan sysBookLoan)
    {
        List<SysBookLoan> list = sysBookLoanService.selectSysBookLoanList(sysBookLoan, getLoginUser().getLangUser());
        ExcelUtil<SysBookLoan> util = new ExcelUtil<SysBookLoan>(SysBookLoan.class);
        util.exportExcel(response, list, "Book Loan Management数据");
    }

    /**
     * 获取Book Loan Management详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:query')")
    @GetMapping(value = "/{loanId}")
    public AjaxResult getInfo(@PathVariable("loanId") String loanId)
    {
        return AjaxResult.success(sysBookLoanService.selectSysBookLoanByLoanId(loanId, getLoginUser().getLangUser()));
    }


    /**
     * 获取Book Loan Management详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:statistics:list')")
    @GetMapping(value = "/countBookLoan")
    public AjaxResult countBookLoan()
    {

        return AjaxResult.success(sysBookLoanService.countBookLoan());
    }

    /**
     * 新增Book Loan Management
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:add')")
    @Log(title = "Book Loan Management", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBookLoan sysBookLoan)
    {
        return toAjax(sysBookLoanService.insertSysBookLoan(sysBookLoan));
    }

    /**
     * 修改Book Loan Management
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:edit')")
    @Log(title = "Book Loan Management", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBookLoan sysBookLoan)
    {
        return toAjax(sysBookLoanService.updateSysBookLoan(sysBookLoan));
    }

    /**
     * 删除Book Loan Management
     */
    @PreAuthorize("@ss.hasPermi('hr:loan:remove')")
    @Log(title = "Book Loan Management", businessType = BusinessType.DELETE)
	@DeleteMapping("/{loanIds}")
    public AjaxResult remove(@PathVariable String[] loanIds)
    {
        return toAjax(sysBookLoanService.deleteSysBookLoanByLoanIds(loanIds));
    }
}
