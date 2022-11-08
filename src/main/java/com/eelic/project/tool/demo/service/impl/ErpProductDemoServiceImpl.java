package com.eelic.project.tool.demo.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.tool.demo.mapper.ErpProductDemoMapper;
import com.eelic.project.tool.demo.domain.ErpProductDemo;
import com.eelic.project.tool.demo.service.IErpProductDemoService;

/**
 * 产品DemoService业务层处理
 * 
 * @author eelic
 * @date 2022-11-07
 */
@Service
public class ErpProductDemoServiceImpl implements IErpProductDemoService 
{
    @Autowired
    private ErpProductDemoMapper erpProductDemoMapper;

    /**
     * 查询产品Demo
     * 
     * @param idProductLa 产品Demo主键
     * @return 产品Demo
     */
    @Override
    public ErpProductDemo selectErpProductDemoByIdProductLa(Long idProductLa)
    {
        return erpProductDemoMapper.selectErpProductDemoByIdProductLa(idProductLa);
    }

    /**
     * 查询产品Demo列表
     * 
     * @param erpProductDemo 产品Demo
     * @return 产品Demo
     */
    @Override
    public List<ErpProductDemo> selectErpProductDemoList(ErpProductDemo erpProductDemo)
    {
        return erpProductDemoMapper.selectErpProductDemoList(erpProductDemo);
    }

    /**
     * 新增产品Demo
     * 
     * @param erpProductDemo 产品Demo
     * @return 结果
     */
    @Override
    public int insertErpProductDemo(ErpProductDemo erpProductDemo)
    {
        erpProductDemo.setCreateTime(DateUtils.getNowDate());
        return erpProductDemoMapper.insertErpProductDemo(erpProductDemo);
    }

    /**
     * 修改产品Demo
     * 
     * @param erpProductDemo 产品Demo
     * @return 结果
     */
    @Override
    public int updateErpProductDemo(ErpProductDemo erpProductDemo)
    {
        erpProductDemo.setUpdateTime(DateUtils.getNowDate());
        return erpProductDemoMapper.updateErpProductDemo(erpProductDemo);
    }

    /**
     * 批量删除产品Demo
     * 
     * @param idProductLas 需要删除的产品Demo主键
     * @return 结果
     */
    @Override
    public int deleteErpProductDemoByIdProductLas(Long[] idProductLas)
    {
        return erpProductDemoMapper.deleteErpProductDemoByIdProductLas(idProductLas);
    }

    /**
     * 删除产品Demo信息
     * 
     * @param idProductLa 产品Demo主键
     * @return 结果
     */
    @Override
    public int deleteErpProductDemoByIdProductLa(Long idProductLa)
    {
        return erpProductDemoMapper.deleteErpProductDemoByIdProductLa(idProductLa);
    }
}
