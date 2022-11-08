package com.eelic.project.tool.demo.mapper;

import java.util.List;
import com.eelic.project.tool.demo.domain.ErpProductDemo;

/**
 * 产品DemoMapper接口
 * 
 * @author eelic
 * @date 2022-11-07
 */
public interface ErpProductDemoMapper 
{
    /**
     * 查询产品Demo
     * 
     * @param idProductLa 产品Demo主键
     * @return 产品Demo
     */
    public ErpProductDemo selectErpProductDemoByIdProductLa(Long idProductLa);

    /**
     * 查询产品Demo列表
     * 
     * @param erpProductDemo 产品Demo
     * @return 产品Demo集合
     */
    public List<ErpProductDemo> selectErpProductDemoList(ErpProductDemo erpProductDemo);

    /**
     * 新增产品Demo
     * 
     * @param erpProductDemo 产品Demo
     * @return 结果
     */
    public int insertErpProductDemo(ErpProductDemo erpProductDemo);

    /**
     * 修改产品Demo
     * 
     * @param erpProductDemo 产品Demo
     * @return 结果
     */
    public int updateErpProductDemo(ErpProductDemo erpProductDemo);

    /**
     * 删除产品Demo
     * 
     * @param idProductLa 产品Demo主键
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLa(Long idProductLa);

    /**
     * 批量删除产品Demo
     * 
     * @param idProductLas 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLas(Long[] idProductLas);
}
