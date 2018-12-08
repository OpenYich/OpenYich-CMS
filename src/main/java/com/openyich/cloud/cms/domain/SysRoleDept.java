package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 角色和部门关联表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_role_dept")
@IdClass(SysRoleDeptPrimaryKey.class)
public class SysRoleDept implements Serializable {

  private static final long serialVersionUID = 1L;

  /**
   * 角色编号
   */
  @Id
  @Column(name = "role_id")
  private Long roleId;
  
  /**
   * 部门编号
   */
  @Id
  @Column(name = "dept_id")
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
