package com.eelic.project.erp.demo.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.erp.demo.mapper.SysProductMapper;
import com.eelic.project.erp.demo.domain.SysProduct;
import com.eelic.project.erp.demo.service.ISysProductService;

/**
 * 产品Service业务层处理
 * 
 * @author eelic
 * @date 2022-11-02
 */
@Service
public class SysProductServiceImpl implements ISysProductService 
{
    @Autowired
    private SysProductMapper sysProductMapper;

    /**
     * 查询产品
     * 
     * @param productId 产品主键
     * @return 产品
     */
    @Override
    public SysProduct selectSysProductByProductId(Long productId)
    {
        return sysProductMapper.selectSysProductByProductId(productId);
    }

    /**
     * 查询产品列表
     * 
     * @param sysProduct 产品
     * @return 产品
     */
    @Override
    public List<SysProduct> selectSysProductList(SysProduct sysProduct)
    {
        return sysProductMapper.selectSysProductList(sysProduct);
    }

    /**
     * 新增产品
     * 
     * @param sysProduct 产品
     * @return 结果
     */
    @Override
    public int insertSysProduct(SysProduct sysProduct)
    {
        return sysProductMapper.insertSysProduct(sysProduct);
    }

    /**
     * 修改产品
     * 
     * @param sysProduct 产品
     * @return 结果
     */
    @Override
    public int updateSysProduct(SysProduct sysProduct)
    {
        return sysProductMapper.updateSysProduct(sysProduct);
    }

    /**
     * 批量删除产品
     * 
     * @param productIds 需要删除的产品主键
     * @return 结果
     */
    @Override
    public int deleteSysProductByProductIds(Long[] productIds)
    {
        return sysProductMapper.deleteSysProductByProductIds(productIds);
    }

    /**
     * 删除产品信息
     * 
     * @param productId 产品主键
     * @return 结果
     */
    @Override
    public int deleteSysProductByProductId(Long productId)
    {
        return sysProductMapper.deleteSysProductByProductId(productId);
    }
}
