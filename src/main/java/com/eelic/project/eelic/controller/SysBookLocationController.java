package com.eelic.project.eelic.controller;

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
import com.eelic.project.eelic.domain.SysBookLocation;
import com.eelic.project.eelic.service.ISysBookLocationService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * locationController
 * 
 * @author ruoyi
 * @date 2022-10-01
 */
@RestController
@RequestMapping("/hr/location")
public class SysBookLocationController extends BaseController
{
    @Autowired
    private ISysBookLocationService sysBookLocationService;

    /**
     * 查询location列表
     */
    @PreAuthorize("@ss.hasPermi('hr:location:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysBookLocation sysBookLocation)
    {
        startPage();
        List<SysBookLocation> list = sysBookLocationService.selectSysBookLocationList(sysBookLocation);
        return getDataTable(list);
    }

    /**
     * 导出location列表
     */
    @PreAuthorize("@ss.hasPermi('hr:location:export')")
    @Log(title = "location", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBookLocation sysBookLocation)
    {
        List<SysBookLocation> list = sysBookLocationService.selectSysBookLocationList(sysBookLocation);
        ExcelUtil<SysBookLocation> util = new ExcelUtil<SysBookLocation>(SysBookLocation.class);
        util.exportExcel(response, list, "location数据");
    }

    /**
     * 获取location详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:location:query')")
    @GetMapping(value = "/{locationId}")
    public AjaxResult getInfo(@PathVariable("locationId") String locationId)
    {
        return AjaxResult.success(sysBookLocationService.selectSysBookLocationByLocationId(locationId));
    }

    /**
     * 新增location
     */
    @PreAuthorize("@ss.hasPermi('hr:location:add')")
    @Log(title = "location", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBookLocation sysBookLocation)
    {
        return toAjax(sysBookLocationService.insertSysBookLocation(sysBookLocation));
    }

    /**
     * 修改location
     */
    @PreAuthorize("@ss.hasPermi('hr:location:edit')")
    @Log(title = "location", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBookLocation sysBookLocation)
    {
        return toAjax(sysBookLocationService.updateSysBookLocation(sysBookLocation));
    }

    /**
     * 删除location
     */
    @PreAuthorize("@ss.hasPermi('hr:location:remove')")
    @Log(title = "location", businessType = BusinessType.DELETE)
	@DeleteMapping("/{locationIds}")
    public AjaxResult remove(@PathVariable String[] locationIds)
    {
        return toAjax(sysBookLocationService.deleteSysBookLocationByLocationIds(locationIds));
    }
}
