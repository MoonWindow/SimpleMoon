package com.mantiso;

import java.util.List;
import java.util.Map;

/**
 * Created by kevinj.
 */
public class ApplicationSettings {

    private CssClass _formCssClass;
    public CssClass getFormCssClass(){
        return _formCssClass;
    }
    public void setFormCssClass(CssClass value){
        _formCssClass = value;
    }

    private String[] _tabNames;
    public String[] getTabNames(){
        return _tabNames;
    }
    public void setTabNames(String[] names){
        _tabNames = new String[names.length];
        System.arraycopy(names, 0, _tabNames,0 , names.length);
    }

    private List<Tab> _tabs;
    public List<Tab> getTabs(){
        return _tabs;
    }
    public void setTabs(List<Tab> tabs){
        _tabs = tabs;
    }

}
