package com.eelic.project.eelic.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * System Book Eelic对象 sys_book
 * 
 * @author ruoyi
 * @date 2022-09-22
 */
public class SysBook extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String bookId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String isbn;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String bookTitle;

    private String bookTitleEn;

    private String bookTitleId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String bookImage;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String categoryId;

    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String locationId;


    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String author;


    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String cdStatus;

    /** 备注 */
    @Excel(name = "备注")
    private String synopsis;

    private String synopsisEn;

    private String synopsisId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String language;

    /** 公告状态（0正常 1关闭） */
    @Excel(name = "公告状态", readConverterExp = "0=正常,1=关闭")
    private String status;

    private SysBookLocation location;

    private SysBookCategory category;


    public void setBookId(String bookId) 
    {
        this.bookId = bookId;
    }

    public String getBookId() 
    {
        return bookId;
    }
    public void setIsbn(String isbn) 
    {
        this.isbn = isbn;
    }

    public String getIsbn() 
    {
        return isbn;
    }
    public void setBookTitle(String bookTitle) 
    {
        this.bookTitle = bookTitle;
    }

    public String getBookTitle() 
    {
        return bookTitle;
    }
    public void setBookImage(String bookImage) 
    {
        this.bookImage = bookImage;
    }

    public String getBookTitleEn() {
        return bookTitleEn;
    }

    public void setBookTitleEn(String bookTitleEn) {
        this.bookTitleEn = bookTitleEn;
    }

    public String getBookTitleId() {
        return bookTitleId;
    }

    public void setBookTitleId(String bookTitleId) {
        this.bookTitleId = bookTitleId;
    }

    public String getBookImage() 
    {
        return bookImage;
    }

    public void setAuthor(String author) 
    {
        this.author = author;
    }

    public String getAuthor() 
    {
        return author;
    }

    public void setCdStatus(String cdStatus) 
    {
        this.cdStatus = cdStatus;
    }

    public String getCdStatus() 
    {
        return cdStatus;
    }
    public void setSynopsis(String synopsis) 
    {
        this.synopsis = synopsis;
    }

    public String getSynopsis() 
    {
        return synopsis;
    }

    public String getSynopsisEn() {
        return synopsisEn;
    }

    public void setSynopsisEn(String synopsisEn) {
        this.synopsisEn = synopsisEn;
    }

    public String getSynopsisId() {
        return synopsisId;
    }

    public void setSynopsisId(String synopsisId) {
        this.synopsisId = synopsisId;
    }

    public void setLanguage(String language) 
    {
        this.language = language;
    }

    public String getLanguage() 
    {
        return language;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public SysBookCategory getCategory() {
        return category;
    }

    public void setCategory(SysBookCategory category) {
        this.category = category;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public SysBookLocation getLocation() {
        return location;
    }

    public void setLocation(SysBookLocation location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("bookId", getBookId())
            .append("isbn", getIsbn())
            .append("bookTitle", getBookTitle())
            .append("bookImage", getBookImage())
            .append("bookCategory", getCategoryId())
            .append("author", getAuthor())
            .append("location", getLocationId())
            .append("cdStatus", getCdStatus())
            .append("synopsis", getSynopsis())
            .append("language", getLanguage())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }


}
