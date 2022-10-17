package com.ruoyi.project.system.mapper;

import java.util.List;
import com.ruoyi.project.system.domain.SysBook;

/**
 * System Book EelicMapper接口
 * 
 * @author ruoyi
 * @date 2022-09-07
 */
public interface SysBookMapper 
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
     * 删除System Book Eelic
     * 
     * @param bookId System Book Eelic主键
     * @return 结果
     */
    public int deleteSysBookByBookId(String bookId);

    /**
     * 批量删除System Book Eelic
     * 
     * @param bookIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysBookByBookIds(String[] bookIds);
}
