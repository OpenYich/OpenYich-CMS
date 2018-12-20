package com.openyich.framework.cloud.cms.domain;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;

/**
 * 角色和部门关联表主键
 * 
 * @author zhycn
 */
public class SysRoleDeptPrimaryKey implements Serializable {

  private static final long serialVersionUID = 1L;

  private Long roleId;

  private Long deptId;

  public SysRoleDeptPrimaryKey(Long roleId, Long deptId) {
    this.roleId = roleId;
    this.deptId = deptId;
  }

  public SysRoleDeptPrimaryKey() {
    super();
  }

  public Long getRoleId() {
    return roleId;
  }

  public Long getDeptId() {
    return deptId;
  }

  public void setRoleId(Long roleId) {
    this.roleId = roleId;
  }

  public void setDeptId(Long deptId) {
    this.deptId = deptId;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((deptId == null) ? 0 : deptId.hashCode());
    result = prime * result + ((roleId == null) ? 0 : roleId.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    SysRoleDeptPrimaryKey other = (SysRoleDeptPrimaryKey) obj;
    if (deptId == null) {
      if (other.deptId != null) return false;
    } else if (!deptId.equals(other.deptId)) return false;
    if (roleId == null) {
      if (other.roleId != null) return false;
    } else if (!roleId.equals(other.roleId)) return false;
    return true;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
