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
import com.eelic.project.erp.book.domain.SysBook;
import com.eelic.project.erp.book.service.ISysBookService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * hr Book EelicController
 * 
 * @author ruoyi
 * @date 2022-09-22
 */
@RestController
@RequestMapping("/hr/book")
public class SysBookController extends BaseController
{
    @Autowired
    private ISysBookService sysBookService;

    /**
     * 查询hr Book Eelic列表
     */
    @PreAuthorize("@ss.hasPermi('hr:book:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysBook sysBook)
    {
        startPage();
        List<SysBook> list = sysBookService.selectSysBookList(sysBook, getLoginUser().getLangUser());
        return getDataTable(list);
    }

    /**
     * 导出hr Book Eelic列表
     */
    @PreAuthorize("@ss.hasPermi('hr:book:export')")
    @Log(title = "hr Book Eelic", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysBook sysBook)
    {
        List<SysBook> list = sysBookService.selectSysBookList(sysBook, getLoginUser().getLangUser());
        ExcelUtil<SysBook> util = new ExcelUtil<SysBook>(SysBook.class);
        util.exportExcel(response, list, "hr Book Eelic数据");
    }

    /**
     * 获取hr Book Eelic详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:book:query')")
    @GetMapping(value = "/{bookId}")
    public AjaxResult getInfo(@PathVariable("bookId") String bookId)
    {
        return AjaxResult.success(sysBookService.selectSysBookByBookId(bookId,getLoginUser().getLangUser()));
    }

    /**
     * 获取hr Book Eelic详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:statistics:list')")
    @GetMapping(value = "/getAll")
    public AjaxResult getAll()
    {
        List<SysBook> books = sysBookService.selectAllBook();
        return AjaxResult.success(books);
    }

    /**
     * 获取hr Book Eelic详细信息
     */
    @PreAuthorize("@ss.hasPermi('hr:statistics:list')")
    @GetMapping(value = "/countBookCategory")
    public AjaxResult countBookCategory()
    {
        return AjaxResult.success(sysBookService.countBookCategory(getLoginUser().getLangUser()));
    }

    /**
     * 新增hr Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('hr:book:add')")
    @Log(title = "hr Book Eelic", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysBook sysBook)
    {
        sysBook.setCreateBy(getUsername());
        return toAjax(sysBookService.insertSysBook(sysBook));
    }

    /**
     * 修改hr Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('hr:book:edit')")
    @Log(title = "hr Book Eelic", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysBook sysBook)
    {
        sysBook.setUpdateBy(getUsername());
        return toAjax(sysBookService.updateSysBook(sysBook,getLoginUser().getLangUser()));
    }

    @PreAuthorize("@ss.hasPermi('hr:book:edit')")
    @Log(title = "hr Book Eelic", businessType = BusinessType.UPDATE)
    @PutMapping("/changeCdStatus")
    public AjaxResult changeCdStatus(@RequestBody SysBook sysBook)
    {
        sysBook.setUpdateBy(getUsername());
        return toAjax(sysBookService.updateSysBook(sysBook,getLoginUser().getLangUser()));
    }

    /**
     * 删除hr Book Eelic
     */
    @PreAuthorize("@ss.hasPermi('hr:book:remove')")
    @Log(title = "hr Book Eelic", businessType = BusinessType.DELETE)
	@DeleteMapping("/{bookIds}")
    public AjaxResult remove(@PathVariable String[] bookIds)
    {
        return toAjax(sysBookService.deleteSysBookByBookIds(bookIds));
    }
}
