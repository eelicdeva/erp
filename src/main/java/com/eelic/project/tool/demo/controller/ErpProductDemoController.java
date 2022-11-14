package com.eelic.project.tool.demo.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.framework.web.page.TableDataInfo;
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
import com.eelic.project.tool.demo.domain.ErpProductDemo;
import com.eelic.project.tool.demo.service.IErpProductDemoService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 产品DemoController
 * 
 * @author eelic
 * @date 2022-11-07
 */
@RestController
@RequestMapping("/demo/productdemo")
public class ErpProductDemoController extends BaseController
{
    @Autowired
    private IErpProductDemoService erpProductDemoService;

    /**
     * 查询产品Demo列表
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:list')")
    @GetMapping("/list")
    public TableDataInfo list(ErpProductDemo erpProductDemo)
    {
        startPage();
        List<ErpProductDemo> list = erpProductDemoService.selectErpProductDemoList(erpProductDemo, getLoginUser().getLangUser());
        return getDataTable(list);
    }

    /**
     * 导出产品Demo列表
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:export')")
    @Log(title = "产品Demo", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ErpProductDemo erpProductDemo)
    {
        List<ErpProductDemo> list = erpProductDemoService.selectErpProductDemoList(erpProductDemo, getLoginUser().getLangUser());
        ExcelUtil<ErpProductDemo> util = new ExcelUtil<ErpProductDemo>(ErpProductDemo.class);
        util.exportExcel(response, list, "产品Demo数据");
    }

    /**
     * 获取产品Demo详细信息
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:query')")
    @GetMapping(value = "/{idProductLa}")
    public AjaxResult getInfo(@PathVariable("idProductLa") Long idProductLa)
    {
        return AjaxResult.success(erpProductDemoService.selectErpProductDemoByIdProductLa(idProductLa, getLoginUser().getLangUser()));
    }

    /**
     * 新增产品Demo
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:add')")
    @Log(title = "产品Demo", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ErpProductDemo erpProductDemo)
    {
        return toAjax(erpProductDemoService.insertErpProductDemo(erpProductDemo));
    }

    /**
     * 修改产品Demo
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:edit')")
    @Log(title = "产品Demo", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ErpProductDemo erpProductDemo)
    {
        return toAjax(erpProductDemoService.updateErpProductDemo(erpProductDemo, getLoginUser().getLangUser()));
    }

    /**
     * 删除产品Demo
     */
    @PreAuthorize("@ss.hasPermi('demo:productdemo:remove')")
    @Log(title = "产品Demo", businessType = BusinessType.DELETE)
	@DeleteMapping("/{idProductLas}")
    public AjaxResult remove(@PathVariable Long[] idProductLas)
    {
        return toAjax(erpProductDemoService.deleteErpProductDemoByIdProductLas(idProductLas));
    }
}
