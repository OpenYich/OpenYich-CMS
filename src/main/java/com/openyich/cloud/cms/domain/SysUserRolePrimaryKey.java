package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;

/**
 * 用户和角色关联表
 * 
 * @author zhycn
 */
public class SysUserRolePrimaryKey implements Serializable {

  private static final long serialVersionUID = 1L;

  private Long userId;
  
  private Long roleId;

  public Long getUserId() {
    return userId;
  }

  public Long getRoleId() {
    return roleId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public void setRoleId(Long roleId) {
    this.roleId = roleId;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
