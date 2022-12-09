package com.eelic.project.system.sysLang.controller;

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
import com.eelic.project.system.sysLang.domain.SysLang;
import com.eelic.project.system.sysLang.service.ISysLangService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * langController
 * 
 * @author eelic
 * @date 2022-12-03
 */
@RestController
@RequestMapping("/sysLang/lang")
public class SysLangController extends BaseController
{
    @Autowired
    private ISysLangService sysLangService;

    /**
     * 查询lang列表
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysLang sysLang)
    {
        startPage();
        List<SysLang> list = sysLangService.selectSysLangList(sysLang);
        return getDataTable(list);
    }

    /**
     * 查询lang列表
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:list')")
    @GetMapping("/list/record")
    public TableDataInfo listRecord(SysLang sysLang)
    {
        startPage();
        List<SysLang> list = sysLangService.selectI18nRecord(sysLang);
        return getDataTable(list);
    }

    /**
     * 导出lang列表
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:export')")
    @Log(title = "lang", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysLang sysLang)
    {
        List<SysLang> list = sysLangService.selectSysLangList(sysLang);
        ExcelUtil<SysLang> util = new ExcelUtil<SysLang>(SysLang.class);
        util.exportExcel(response, list, "lang数据");
    }

    /**
     * 获取lang详细信息
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:query')")
    @GetMapping(value = "/{langId}")
    public AjaxResult getInfo(@PathVariable("langId") String langId)
    {
        return AjaxResult.success(sysLangService.selectSysLangByLangId(langId));
    }

    /**
     * 新增lang
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:add')")
    @Log(title = "lang", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysLang sysLang)
    {
        return toAjax(sysLangService.insertSysLang(sysLang));
    }

    /**
     * 修改lang
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:edit')")
    @Log(title = "lang", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysLang sysLang)
    {
        sysLangService.insertSysLang(sysLang);
        return toAjax(sysLangService.updateSysLang(sysLang));
    }

    /**
     * 删除lang
     */
    @PreAuthorize("@ss.hasPermi('sysLang:lang:remove')")
    @Log(title = "lang", businessType = BusinessType.DELETE)
	@DeleteMapping("/{langIds}")
    public AjaxResult remove(@PathVariable String[] langIds)
    {
        return toAjax(sysLangService.deleteSysLangByLangIds(langIds));
    }

    @PreAuthorize("@ss.hasPermi('sysLang:lang:remove')")
    @Log(title = "lang", businessType = BusinessType.CLEAN)
    @DeleteMapping("/clean")
    public AjaxResult clean()
    {
        sysLangService.cleanLangRecord();
        return AjaxResult.success();
    }
}
