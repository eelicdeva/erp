package com.eelic.project.eelic.domain;

import java.util.List;

public class SysBookCountCategory {
    private List<String> dictLabel;

    private List<Integer> result;

    public List<String> getDictLabel() {
        return dictLabel;
    }

    public SysBookCountCategory(List<String> dictLabel, List<Integer> result) {
        this.dictLabel = dictLabel;
        this.result = result;
    }

    public void setDictLabel(List<String> dictValue) {
        this.dictLabel = dictValue;
    }

    public List<Integer> getResult() {
        return result;
    }

    public void setResult(List<Integer> result) {
        this.result = result;
    }
}
