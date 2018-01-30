package com.beautifulsoup.youxin.pojo;

import java.util.Date;

public class YxHotWords {
    private Long id;

    private String degreee;

    private String name;

    private String url;

    private Byte search;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDegreee() {
        return degreee;
    }

    public void setDegreee(String degreee) {
        this.degreee = degreee == null ? null : degreee.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Byte getSearch() {
        return search;
    }

    public void setSearch(Byte search) {
        this.search = search;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}