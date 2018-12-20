package com.openyich.framework.cloud.cms.domain;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;

/**
 * 角色和菜单关联表主键
 * 
 * @author zhycn
 */
public class SysRoleMenuPrimaryKey implements Serializable {

  private static final long serialVersionUID = 1L;

  private Long roleId;

  private Long menuId;

  public SysRoleMenuPrimaryKey(Long roleId, Long menuId) {
    this.roleId = roleId;
    this.menuId = menuId;
  }

  public SysRoleMenuPrimaryKey() {
    super();
  }

  public Long getRoleId() {
    return roleId;
  }

  public Long getMenuId() {
    return menuId;
  }

  public void setRoleId(Long roleId) {
    this.roleId = roleId;
  }

  public void setMenuId(Long menuId) {
    this.menuId = menuId;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((menuId == null) ? 0 : menuId.hashCode());
    result = prime * result + ((roleId == null) ? 0 : roleId.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    SysRoleMenuPrimaryKey other = (SysRoleMenuPrimaryKey) obj;
    if (menuId == null) {
      if (other.menuId != null) return false;
    } else if (!menuId.equals(other.menuId)) return false;
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
