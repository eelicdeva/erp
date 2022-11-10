package com.eelic.project.erp.book.domain;

import java.util.List;

public class SysCountBookLoan {

    public SysCountBookLoan(List<String> checkoutDate, List<Integer> result) {
        this.checkoutDate = checkoutDate;
        this.result = result;
    }

    public List<String> getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(List<String> checkoutDate) {
        this.checkoutDate = checkoutDate;
    }

    public List<Integer> getResult() {
        return result;
    }

    public void setResult(List<Integer> result) {
        this.result = result;
    }

    private List<String> checkoutDate;
    private List<Integer> result;


}
