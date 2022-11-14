package com.eelic.project.tool.demo.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.eelic.project.tool.demo.domain.ErpProductDemo;


/**
 * product demoMapper接口
 *
 * @author eelic
 * @date 2022-11-14
 */
public interface ErpProductDemoMapper
{
    /**
     * 查询product demo
     *
     * @param idProductLa product demo主键
     * @return product demo
     */
    public ErpProductDemo selectErpProductDemoByIdProductLa(@Param("idProductLa") Long idProductLa, @Param("langUser") String langUser);

    /**
     * 查询product demo列表
     *
     * @param erpProductDemo product demo
     * @return product demo集合
     */
    public List<ErpProductDemo> selectErpProductDemoList(@Param("erpProductDemo") ErpProductDemo erpProductDemo, @Param("langUser") String langUser);

    /**
     * 新增product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */

    public int insertErpProductDemo(@Param("erpProductDemo") ErpProductDemo erpProductDemo, @Param("skuNameLa") String[] skuNameLa, @Param("shortDescription") String[] shortDescription, @Param("description") String[] description);

    /**
     * 修改product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */
    public int updateErpProductDemo(@Param("erpProductDemo") ErpProductDemo erpProductDemo, @Param("langUser") String langUser);

    /**
     * 删除product demo
     *
     * @param idProductLa product demo主键
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLa(Long idProductLa);

    /**
     * 批量删除product demo
     *
     * @param idProductLas 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteErpProductDemoByIdProductLas(Long[] idProductLas);
}
