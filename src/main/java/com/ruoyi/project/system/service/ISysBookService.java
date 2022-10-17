package com.ruoyi.project.system.service;

import java.util.List;
import com.ruoyi.project.system.domain.SysBook;

/**
 * System Book EelicService接口
 * 
 * @author ruoyi
 * @date 2022-09-07
 */
public interface ISysBookService 
{
    /**
     * 查询System Book Eelic
     * 
     * @param bookId System Book Eelic主键
     * @return System Book Eelic
     */
    public SysBook selectSysBookByBookId(String bookId);

    /**
     * 查询System Book Eelic列表
     * 
     * @param sysBook System Book Eelic
     * @return System Book Eelic集合
     */
    public List<SysBook> selectSysBookList(SysBook sysBook);

    /**
     * 新增System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    public int insertSysBook(SysBook sysBook);

    /**
     * 修改System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    public int updateSysBook(SysBook sysBook);

    /**
     * 批量删除System Book Eelic
     * 
     * @param bookIds 需要删除的System Book Eelic主键集合
     * @return 结果
     */
    public int deleteSysBookByBookIds(String[] bookIds);

    /**
     * 删除System Book Eelic信息
     * 
     * @param bookId System Book Eelic主键
     * @return 结果
     */
    public int deleteSysBookByBookId(String bookId);
}
