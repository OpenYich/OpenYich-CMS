package com.openyich.cloud.cms.domain;

import javax.persistence.Column;

import com.openyich.framework.data.domain.AbstractAuditingEntity;

/**
 * 实体基类
 * 
 * @author zhycn
 */
public abstract class BaseEntity extends AbstractAuditingEntity {

  private static final long serialVersionUID = 1L;

  @Column(name = "status")
  private int status;
  
  @Column(name = "deleted")
  private boolean deleted;
  
  @Column(name = "remark")
  private String remark;

  public int getStatus() {
    return status;
  }

  public boolean isDeleted() {
    return deleted;
  }

  public String getRemark() {
    return remark;
  }

  public void setStatus(int status) {
    this.status = status;
  }

  public void setDeleted(boolean deleted) {
    this.deleted = deleted;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }
  
}
