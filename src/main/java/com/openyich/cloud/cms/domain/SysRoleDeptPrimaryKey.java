package com.openyich.cloud.cms.domain;

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
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
