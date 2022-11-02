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
import com.eelic.project.eelic.domain.SysBookCategory;
import com.eelic.project.eelic.service.ISysBookCategoryService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * book categoryController
 * 
 * @author ruoyi
 * @date 2022-09-30
 */
@RestController
@RequestMapping("/hr/category")
public class SysBookCategoryController extends BaseController
{
    @Autowired
    private ISysBookCategoryService sysBookCategoryService;

    /**
     * 查询book category列表
     */
    @PreAuthorize("@ss.hasPermi('hr:category:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysBookCategory sysBookCategory)
    {
        startPage();
        List<SysBookCategory> list = sysBookCategoryService.selectSysBookCategoryList(sysBookCategory, getLoginUser().getLangUser());
        return getDataTable(list);
    }

    /**
     * 导出book category列表
     */
    @PreAuthorize("@ss.hasPermi('hr:category:export')")
    @Log(title = "book category", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBookCategory sysBookCategory)
    {
        List<SysBookCategory> list = sysBookCategoryService.selectSysBookCategoryList(sysBookCategory,  getLoginUser().getLangUser());
        ExcelUtil<SysBookCategory> util = new ExcelUtil<SysBookCategory>(SysBookCategory.class);
        util.exportExcel(response, list, "book category数据");
    }

    /**
     * 获取book category详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:category:query')")
    @GetMapping(value = "/{categoryId}")
    public AjaxResult getInfo(@PathVariable("categoryId") String categoryId)
    {
        return AjaxResult.success(sysBookCategoryService.selectSysBookCategoryByCategoryId(categoryId ,getLoginUser().getLangUser()));
    }

    /**
     * 新增book category
     */
    @PreAuthorize("@ss.hasPermi('hr:category:add')")
    @Log(title = "book category", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBookCategory sysBookCategory)
    {
        return toAjax(sysBookCategoryService.insertSysBookCategory(sysBookCategory));
    }

    /**
     * 修改book category
     */
    @PreAuthorize("@ss.hasPermi('hr:category:edit')")
    @Log(title = "book category", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBookCategory sysBookCategory)
    {
        return toAjax(sysBookCategoryService.updateSysBookCategory(sysBookCategory));
    }

    /**
     * 删除book category
     */
    @PreAuthorize("@ss.hasPermi('hr:category:remove')")
    @Log(title = "book category", businessType = BusinessType.DELETE)
	@DeleteMapping("/{categoryIds}")
    public AjaxResult remove(@PathVariable String[] categoryIds)
    {
        return toAjax(sysBookCategoryService.deleteSysBookCategoryByCategoryIds(categoryIds));
    }
}
