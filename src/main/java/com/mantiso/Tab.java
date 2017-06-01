package com.mantiso;

/**
 * Created by kevinj.
 */

public class Tab {

    Tab(String name, String url) {
        this.name = name;
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String name;
    public String url;

    @Override
    public String toString() {
        return "Tab{" +
                "name='" + name + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
