package com.ruoyi.project.eelic.service.impl;

import java.util.ArrayList;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.project.eelic.domain.SysBookCategory;
import com.ruoyi.project.eelic.domain.SysBookCountCategory;
import com.ruoyi.project.eelic.mapper.SysBookCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.eelic.mapper.SysBookMapper;
import com.ruoyi.project.eelic.domain.SysBook;
import com.ruoyi.project.eelic.service.ISysBookService;

import static com.ruoyi.common.translator.Translator.*;

/**
 * System Book EelicService业务层处理
 * 
 * @author ruoyi
 * @date 2022-09-22
 */
@Service
public class SysBookServiceImpl implements ISysBookService 
{
    @Autowired
    private SysBookMapper sysBookMapper;

    @Autowired
    private SysBookCategoryMapper sysBookCategoryMapper;

    /**
     * 查询System Book Eelic
     *
     * @param bookId System Book Eelic主键
     * @return System Book Eelic
     */
    @Override
    public SysBook selectSysBookByBookId(String bookId, String langUser)
    {
        return sysBookMapper.selectSysBookByBookId(bookId, langUser);
    }


    @Override
    public List<SysBook>selectAllBook()
    {
        return sysBookMapper.selectAllBook();
    }

    /**
     * 查询System Book Eelic列表
     * 
     * @param sysBook System Book Eelic
     * @return System Book Eelic
     */
    @Override
    public List<SysBook> selectSysBookList(SysBook sysBook, String langUser)
    {
        return sysBookMapper.selectSysBookList(sysBook, langUser);
    }

    public SysBookCountCategory countBookCategory(String langUser){
        List<Integer> count = new ArrayList<>();
        List<String>  dictLabel = new ArrayList<>();
        SysBookCategory category = new SysBookCategory();
        List<SysBookCategory> bookCategoryList = sysBookCategoryMapper.selectSysBookCategoryList(category, langUser);

        for(SysBookCategory bookCategory : bookCategoryList){
            count.add(sysBookMapper.countBookCategory(bookCategory.getCategoryId()));
            dictLabel.add(bookCategory.getCategoryName());

        }
        SysBookCountCategory result = new SysBookCountCategory(dictLabel, count);

        return result;
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

        try {
            return sysBookMapper.insertSysBook(sysBook, translateAll(sysBook.getBookTitle()), translateAll(sysBook.getSynopsis()));
        } catch (Exception e) {
            try{
                return sysBookMapper.insertSysBook(sysBook, translateOffline(sysBook.getBookTitle()), translateOffline(sysBook.getSynopsis()));
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }

    }

    /**
     * 修改System Book Eelic
     * 
     * @param sysBook System Book Eelic
     * @return 结果
     */
    @Override
    public int updateSysBook(SysBook sysBook, String langUser)
    {
        sysBook.setUpdateTime(DateUtils.getNowDate());
        return sysBookMapper.updateSysBook(sysBook, langUser);
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
