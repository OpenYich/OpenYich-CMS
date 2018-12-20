package com.openyich.framework.cloud.cms.domain;

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

  public SysUserRolePrimaryKey(Long userId, Long roleId) {
    this.userId = userId;
    this.roleId = roleId;
  }

  public SysUserRolePrimaryKey() {
    super();
  }

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
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((roleId == null) ? 0 : roleId.hashCode());
    result = prime * result + ((userId == null) ? 0 : userId.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    SysUserRolePrimaryKey other = (SysUserRolePrimaryKey) obj;
    if (roleId == null) {
      if (other.roleId != null) return false;
    } else if (!roleId.equals(other.roleId)) return false;
    if (userId == null) {
      if (other.userId != null) return false;
    } else if (!userId.equals(other.userId)) return false;
    return true;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
