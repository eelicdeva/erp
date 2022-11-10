package com.eelic.project.erp.hr.mbti.controller;

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
import com.eelic.project.erp.hr.mbti.domain.SysUserAnswerMbti;
import com.eelic.project.erp.hr.mbti.service.ISysUserAnswerMbtiService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * MBTI TestController
 * 
 * @author ruoyi
 * @date 2022-10-19
 */
@RestController
@RequestMapping("/hr/mbti")
public class SysUserAnswerMbtiController extends BaseController
{
    @Autowired
    private ISysUserAnswerMbtiService sysUserAnswerMbtiService;

    /**
     * 查询MBTI Test列表
     */
    @PreAuthorize("@ss.hasPermi('hr:mbti:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysUserAnswerMbti sysUserAnswerMbti)
    {
        startPage();
        List<SysUserAnswerMbti> list = sysUserAnswerMbtiService.selectSysUserAnswerMbtiList(sysUserAnswerMbti);
        return getDataTable(list);
    }

    /**
     * 导出MBTI Test列表
     */
    @PreAuthorize("@ss.hasPermi('hr:mbti:export')")
    @Log(title = "MBTI Test", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysUserAnswerMbti sysUserAnswerMbti)
    {
        List<SysUserAnswerMbti> list = sysUserAnswerMbtiService.selectSysUserAnswerMbtiList(sysUserAnswerMbti);
        ExcelUtil<SysUserAnswerMbti> util = new ExcelUtil<SysUserAnswerMbti>(SysUserAnswerMbti.class);
        util.exportExcel(response, list, "MBTI Test数据");
    }

    /**
     * 获取MBTI Test详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:mbti:query')")
    @GetMapping(value = "/{userId}")
    public AjaxResult getInfo(@PathVariable("userId") String userId)
    {
        return AjaxResult.success(sysUserAnswerMbtiService.selectSysUserAnswerMbtiByUserId(userId));
    }

    /**
     * 新增MBTI Test
     */
//    @PreAuthorize("@ss.hasPermi('hr:mbti:add')")
    @Log(title = "MBTI Test", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    public AjaxResult add(@RequestBody SysUserAnswerMbti sysUserAnswerMbti)
    {
        return toAjax(sysUserAnswerMbtiService.insertSysUserAnswerMbti(sysUserAnswerMbti));
    }

    /**
     * 修改MBTI Test
     */
    @PreAuthorize("@ss.hasPermi('hr:mbti:edit')")
    @Log(title = "MBTI Test", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysUserAnswerMbti sysUserAnswerMbti)
    {
        return toAjax(sysUserAnswerMbtiService.updateSysUserAnswerMbti(sysUserAnswerMbti));
    }

    /**
     * 删除MBTI Test
     */
    @PreAuthorize("@ss.hasPermi('hr:mbti:remove')")
    @Log(title = "MBTI Test", businessType = BusinessType.DELETE)
	@DeleteMapping("/{userIds}")
    public AjaxResult remove(@PathVariable String[] userIds)
    {
        return toAjax(sysUserAnswerMbtiService.deleteSysUserAnswerMbtiByUserIds(userIds));
    }
}
