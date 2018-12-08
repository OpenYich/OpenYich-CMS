package com.openyich.cloud.cms.domain;

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
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
