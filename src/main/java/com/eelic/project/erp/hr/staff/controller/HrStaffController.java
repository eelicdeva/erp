package com.eelic.project.erp.hr.staff.controller;

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
import com.eelic.project.erp.hr.staff.domain.HrStaff;
import com.eelic.project.erp.hr.staff.service.IHrStaffService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author eelic
 * @date 2023-03-03
 */
@RestController
@RequestMapping("/project/staff")
public class HrStaffController extends BaseController
{
    @Autowired
    private IHrStaffService hrStaffService;

    /**
     * 查询【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('project:staff:list')")
    @GetMapping("/list")
    public TableDataInfo list(HrStaff hrStaff)
    {
        startPage();
        List<HrStaff> list = hrStaffService.selectHrStaffList(hrStaff, getLoginUser().getLangUser());
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('project:staff:export')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, HrStaff hrStaff)
    {
        List<HrStaff> list = hrStaffService.selectHrStaffList(hrStaff, getLoginUser().getLangUser());
        ExcelUtil<HrStaff> util = new ExcelUtil<HrStaff>(HrStaff.class);
        util.exportExcel(response, list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @PreAuthorize("@ss.hasPermi('project:staff:query')")
    @GetMapping(value = "/{staffId}")
    public AjaxResult getInfo(@PathVariable("staffId") String staffId)
    {
        return AjaxResult.success(hrStaffService.selectHrStaffByStaffId(staffId, getLoginUser().getLangUser()));
    }

    /**
     * 新增【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('project:staff:add')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HrStaff hrStaff)
    {
        return toAjax(hrStaffService.insertHrStaff(hrStaff));
    }

    /**
     * 修改【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('project:staff:edit')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HrStaff hrStaff)
    {
        return toAjax(hrStaffService.updateHrStaff(hrStaff, getLoginUser().getLangUser()));
    }

    /**
     * 删除【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('project:staff:remove')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{staffIds}")
    public AjaxResult remove(@PathVariable String[] staffIds)
    {
        return toAjax(hrStaffService.deleteHrStaffByStaffIds(staffIds));
    }
}
