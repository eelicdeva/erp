package com.eelic.project.tool.demo.service;

import java.util.List;
import static com.ruoyi.common.translator.Translator.*;
import com.eelic.project.tool.demo.domain.ErpProductDemo;

/**
 * product demoService接口
 *
 * @author eelic
 * @date 2022-11-14
 */
public interface IErpProductDemoService
{
    /**
     * 查询product demo
     *
     * @param idProductLa product demo主键
     * @return product demo
     */
    public ErpProductDemo selectErpProductDemoByIdProductLa(Long idProductLa, String langUser);

    /**
     * 查询product demo列表
     *
     * @param erpProductDemo product demo
     * @return product demo集合
     */
    public List<ErpProductDemo> selectErpProductDemoList(ErpProductDemo erpProductDemo, String langUser);

    /**
     * 新增product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */
    public int insertErpProductDemo(ErpProductDemo erpProductDemo);

    /**
     * 修改product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */
    public int updateErpProductDemo(ErpProductDemo erpProductDemo, String langUser);

    /**
     * 批量删除product demo
     *
     * @param idProductLas 需要删除的product demo主键集合
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLas(Long[] idProductLas);

    /**
     * 删除product demo信息
     *
     * @param idProductLa product demo主键
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLa(Long idProductLa);
}
