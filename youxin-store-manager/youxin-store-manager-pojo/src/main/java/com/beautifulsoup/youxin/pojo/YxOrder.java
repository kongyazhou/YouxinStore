package com.beautifulsoup.youxin.pojo;

import java.util.Date;

public class YxOrder {
    private Long id;

    private Long orderNumber;

    private Long userId;

    private Byte payType;

    private Byte shipmentTime;

    private Byte shipmentType;

    private Long shipmentAmount;

    private Byte invoiceType;

    private String invoiceTitle;

    private Byte orderStatus;

    private Date createTime;

    private Date updateTime;

    private Long orderAmount;

    private Long payAmount;

    private Integer buyNumber;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(Long orderNumber) {
        this.orderNumber = orderNumber;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Byte getPayType() {
        return payType;
    }

    public void setPayType(Byte payType) {
        this.payType = payType;
    }

    public Byte getShipmentTime() {
        return shipmentTime;
    }

    public void setShipmentTime(Byte shipmentTime) {
        this.shipmentTime = shipmentTime;
    }

    public Byte getShipmentType() {
        return shipmentType;
    }

    public void setShipmentType(Byte shipmentType) {
        this.shipmentType = shipmentType;
    }

    public Long getShipmentAmount() {
        return shipmentAmount;
    }

    public void setShipmentAmount(Long shipmentAmount) {
        this.shipmentAmount = shipmentAmount;
    }

    public Byte getInvoiceType() {
        return invoiceType;
    }

    public void setInvoiceType(Byte invoiceType) {
        this.invoiceType = invoiceType;
    }

    public String getInvoiceTitle() {
        return invoiceTitle;
    }

    public void setInvoiceTitle(String invoiceTitle) {
        this.invoiceTitle = invoiceTitle == null ? null : invoiceTitle.trim();
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
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

    public Long getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(Long orderAmount) {
        this.orderAmount = orderAmount;
    }

    public Long getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(Long payAmount) {
        this.payAmount = payAmount;
    }

    public Integer getBuyNumber() {
        return buyNumber;
    }

    public void setBuyNumber(Integer buyNumber) {
        this.buyNumber = buyNumber;
    }
}