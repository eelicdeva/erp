package com.ruoyi.project.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.mapper.SysBookMapper;
import com.ruoyi.project.system.domain.SysBook;
import com.ruoyi.project.system.service.ISysBookService;

/**
 * System Book EelicService业务层处理
 * 
 * @author ruoyi
 * @date 2022-09-07
 */
@Service
public class SysBookServiceImpl implements ISysBookService 
{
    @Autowired
    private SysBookMapper sysBookMapper;

    /**
     * 查询System Book Eelic
     * 
     * @param bookId System Book Eelic主键
     * @return System Book Eelic
     */
    @Override
    public SysBook selectSysBookByBookId(String bookId)
    {
        return sysBookMapper.selectSysBookByBookId(bookId);
    }

    /**
     * 查询System Book Eelic列表
     * 
     * @param sysBook System Book Eelic
     * @return System Book Eelic
     */
    @Override
    public List<SysBook> selectSysBookList(SysBook sysBook)
    {
        return sysBookMapper.selectSysBookList(sysBook);
    }

    /**
     * 新增System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    @Override
    public int insertSysBook(SysBook sysBook)
    {
        sysBook.setCreateTime(DateUtils.getNowDate());
        return sysBookMapper.insertSysBook(sysBook);
    }

    /**
     * 修改System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    @Override
    public int updateSysBook(SysBook sysBook)
    {
        sysBook.setUpdateTime(DateUtils.getNowDate());
        return sysBookMapper.updateSysBook(sysBook);
    }

    /**
     * 批量删除System Book Eelic
     * 
     * @param bookIds 需要删除的System Book Eelic主键
     * @return 结果
     */
    @Override
    public int deleteSysBookByBookIds(String[] bookIds)
    {
        return sysBookMapper.deleteSysBookByBookIds(bookIds);
    }

    /**
     * 删除System Book Eelic信息
     * 
     * @param bookId System Book Eelic主键
     * @return 结果
     */
    @Override
    public int deleteSysBookByBookId(String bookId)
    {
        return sysBookMapper.deleteSysBookByBookId(bookId);
    }
}
