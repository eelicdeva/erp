package com.eelic.project.tool.demo.service.impl;

import java.util.List;
import static com.ruoyi.common.translator.Translator.*;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.eelic.project.tool.demo.mapper.ErpProductDemoMapper;
import com.eelic.project.tool.demo.domain.ErpProductDemo;
import com.eelic.project.tool.demo.service.IErpProductDemoService;

/**
 * product demoService业务层处理
 *
 * @author eelic
 * @date 2022-11-14
 */
@Service
public class ErpProductDemoServiceImpl implements IErpProductDemoService
{
    @Autowired
    private ErpProductDemoMapper erpProductDemoMapper;

    /**
     * 查询product demo
     *
     * @param idProductLa product demo主键
     * @return product demo
     */
    @Override
    public ErpProductDemo selectErpProductDemoByIdProductLa(Long idProductLa, String langUser)
    {
        return erpProductDemoMapper.selectErpProductDemoByIdProductLa(idProductLa, langUser);
    }

    /**
     * 查询product demo列表
     *
     * @param erpProductDemo product demo
     * @return product demo
     */
    @Override
    public List<ErpProductDemo> selectErpProductDemoList(ErpProductDemo erpProductDemo, String langUser)
    {
        return erpProductDemoMapper.selectErpProductDemoList(erpProductDemo, langUser);
    }

    /**
     * 新增product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */
    @Override
    public int insertErpProductDemo(ErpProductDemo erpProductDemo)
    {
        erpProductDemo.setCreateTime(DateUtils.getNowDate());
        try {
            return erpProductDemoMapper.insertErpProductDemo(erpProductDemo,  translateAll(erpProductDemo.getSkuNameLa()),  translateAll(erpProductDemo.getShortDescription()),  translateAll(erpProductDemo.getDescription()));
        } catch (Exception e) {
            try{
                return erpProductDemoMapper.insertErpProductDemo(erpProductDemo,  translateOffline(erpProductDemo.getSkuNameLa()),  translateOffline(erpProductDemo.getShortDescription()),  translateOffline(erpProductDemo.getDescription()));
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /**
     * 修改product demo
     *
     * @param erpProductDemo product demo
     * @return 结果
     */
    @Override
    public int updateErpProductDemo(ErpProductDemo erpProductDemo, String langUser)
    {
        erpProductDemo.setUpdateTime(DateUtils.getNowDate());
        return erpProductDemoMapper.updateErpProductDemo(erpProductDemo, langUser);
    }

    /**
     * 批量删除product demo
     *
     * @param idProductLas 需要删除的product demo主键
     * @return 结果
     */
    @Override
    public int deleteErpProductDemoByIdProductLas(Long[] idProductLas)
    {
        return erpProductDemoMapper.deleteErpProductDemoByIdProductLas(idProductLas);
    }

    /**
     * 删除product demo信息
     *
     * @param idProductLa product demo主键
     * @return 结果
     */
    @Override
    public int deleteErpProductDemoByIdProductLa(Long idProductLa)
    {
        return erpProductDemoMapper.deleteErpProductDemoByIdProductLa(idProductLa);
    }
}
