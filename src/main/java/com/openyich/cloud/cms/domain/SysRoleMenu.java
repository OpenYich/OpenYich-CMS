package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 角色和菜单关联表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_role_menu")
@IdClass(SysRoleMenuPrimaryKey.class)
public class SysRoleMenu implements Serializable {

  private static final long serialVersionUID = 1L;

  /**
   * 角色编号
   */
  @Id
  @Column(name = "role_id")
  private Long roleId;
  
  /**
   * 菜单编号
   */
  @Id
  @Column(name = "menu_id")
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
