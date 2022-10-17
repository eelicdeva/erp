package com.ruoyi.project.eelic.mapper;

import java.util.List;
import com.ruoyi.project.eelic.domain.SysBook;
import org.apache.ibatis.annotations.Param;

/**
 * System Book EelicMapper接口
 * 
 * @author ruoyi
 * @date 2022-09-22
 */
public interface SysBookMapper 
{
    /**
     * 查询System Book Eelic
     * 
     * @param bookId System Book Eelic主键
     * @return System Book Eelic
     */
    public SysBook selectSysBookByBookId(String bookId, String langUser);

    public List<SysBook> selectAllBook();

    /**
     * 查询System Book Eelic列表
     * 
     * @param sysBook System Book Eelic
     * @return System Book Eelic集合
     */
    public List<SysBook> selectSysBookList(@Param("book") SysBook sysBook,  @Param("langUser") String langUser);

    public int countBookCategory(String categoryId);

    /**
     * 新增System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    public int insertSysBook(@Param("book") SysBook sysBook, @Param("bookTitleCat")String[] bookTitleCat, @Param("synopsisCat")String[] synopsisCat);

    /**
     * 修改System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    public int updateSysBook(@Param("book") SysBook sysBook,  @Param("langUser") String langUser);

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
