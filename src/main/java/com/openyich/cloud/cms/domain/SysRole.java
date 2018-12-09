package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 角色信息表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_role")
public class SysRole extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 角色编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "role_id")
  private Long roleId;

  /**
   * 角色权限字符串
   */
  @Column(name = "role_code")
  private String roleCode;

  /**
   * 角色名称
   */
  @Column(name = "role_name")
  private String roleName;

  /**
   * 排列顺序
   */
  @Column(name = "sort_no")
  private int sortNo;

  /**
   * 数据范围（1全部数据权限 2自定义数据权限）
   */
  @Column(name = "data_scope")
  private String dataScope;

  public SysRole(Long roleId) {
    this.roleId = roleId;
  }

  public SysRole() {
    super();
  }

  public Long getRoleId() {
    return roleId;
  }

  public String getRoleCode() {
    return roleCode;
  }

  public String getRoleName() {
    return roleName;
  }

  public int getSortNo() {
    return sortNo;
  }

  public String getDataScope() {
    return dataScope;
  }

  public void setRoleId(Long roleId) {
    this.roleId = roleId;
  }

  public void setRoleCode(String roleCode) {
    this.roleCode = roleCode;
  }

  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }

  public void setSortNo(int sortNo) {
    this.sortNo = sortNo;
  }

  public void setDataScope(String dataScope) {
    this.dataScope = dataScope;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
