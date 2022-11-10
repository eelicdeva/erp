package com.eelic.project.erp.book.domain;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

/**
 * Book Loan Management对象 sys_book_loan
 * 
 * @author ruoyi
 * @date 2022-09-26
 */
public class SysBookLoan extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private String loanId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date checkoutDate;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date returnDate;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String nameBorrower;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String bookTitle;

    /** $column.columnComment */
    private String bookTitleEn;

    /** $column.columnComment */
    private String bookTitleId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String bookImage;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String isbn;

    /** $column.columnComment */
    private String bookId;

    public void setLoanId(String loanId) 
    {
        this.loanId = loanId;
    }

    public String getLoanId() 
    {
        return loanId;
    }
    public void setCheckoutDate(Date checkoutDate) 
    {
        this.checkoutDate = checkoutDate;
    }

    public Date getCheckoutDate() 
    {
        return checkoutDate;
    }
    public void setReturnDate(Date returnDate) 
    {
        this.returnDate = returnDate;
    }

    public Date getReturnDate() 
    {
        return returnDate;
    }
    public void setNameBorrower(String nameBorrower) 
    {
        this.nameBorrower = nameBorrower;
    }

    public String getNameBorrower() 
    {
        return nameBorrower;
    }
    public void setBookTitle(String bookTitle) 
    {
        this.bookTitle = bookTitle;
    }

    public String getBookTitle() 
    {
        return bookTitle;
    }
    public void setBookTitleEn(String bookTitleEn) 
    {
        this.bookTitleEn = bookTitleEn;
    }

    public String getBookTitleEn() 
    {
        return bookTitleEn;
    }
    public void setBookTitleId(String bookTitleId) 
    {
        this.bookTitleId = bookTitleId;
    }

    public String getBookTitleId() 
    {
        return bookTitleId;
    }
    public void setBookImage(String bookImage) 
    {
        this.bookImage = bookImage;
    }

    public String getBookImage() 
    {
        return bookImage;
    }
    public void setIsbn(String isbn) 
    {
        this.isbn = isbn;
    }

    public String getIsbn() 
    {
        return isbn;
    }
    public void setBookId(String bookId) 
    {
        this.bookId = bookId;
    }

    public String getBookId() 
    {
        return bookId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("loanId", getLoanId())
            .append("checkoutDate", getCheckoutDate())
            .append("returnDate", getReturnDate())
            .append("nameBorrower", getNameBorrower())
            .append("bookTitle", getBookTitle())
            .append("bookTitleEn", getBookTitleEn())
            .append("bookTitleId", getBookTitleId())
            .append("bookImage", getBookImage())
            .append("isbn", getIsbn())
            .append("bookId", getBookId())
            .toString();
    }
}
