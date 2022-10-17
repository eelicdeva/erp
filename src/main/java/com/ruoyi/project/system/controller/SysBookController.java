package com.ruoyi.project.system.controller;

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
import com.ruoyi.project.system.domain.SysBook;
import com.ruoyi.project.system.service.ISysBookService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * System Book EelicController
 * 
 * @author ruoyi
 * @date 2022-09-07
 */
@RestController
@RequestMapping("/system/book")
public class SysBookController extends BaseController
{
    @Autowired
    private ISysBookService sysBookService;

    /**
     * 查询System Book Eelic列表
     */
    @PreAuthorize("@ss.hasPermi('system:book:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysBook sysBook)
    {
        startPage();
        List<SysBook> list = sysBookService.selectSysBookList(sysBook);
        return getDataTable(list);
    }

    /**
     * 导出System Book Eelic列表
     */
    @PreAuthorize("@ss.hasPermi('system:book:export')")
    @Log(title = "System Book Eelic", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBook sysBook)
    {
        List<SysBook> list = sysBookService.selectSysBookList(sysBook);
        ExcelUtil<SysBook> util = new ExcelUtil<SysBook>(SysBook.class);
        util.exportExcel(response, list, "Book Management");
    }

    /**
     * 获取System Book Eelic详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:book:query')")
    @GetMapping(value = "/{bookId}")
    public AjaxResult getInfo(@PathVariable("bookId") String bookId)
    {
        return AjaxResult.success(sysBookService.selectSysBookByBookId(bookId));
    }

    /**
     * 新增System Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('system:book:add')")
    @Log(title = "System Book Eelic", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBook sysBook)
    {
        return toAjax(sysBookService.insertSysBook(sysBook));
    }

    /**
     * 修改System Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('system:book:edit')")
    @Log(title = "System Book Eelic", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBook sysBook)
    {
        return toAjax(sysBookService.updateSysBook(sysBook));
    }

    /**
     * 删除System Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('system:book:remove')")
    @Log(title = "System Book Eelic", businessType = BusinessType.DELETE)
	@DeleteMapping("/{bookIds}")
    public AjaxResult remove(@PathVariable String[] bookIds)
    {
        return toAjax(sysBookService.deleteSysBookByBookIds(bookIds));
    }
}
