package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;
import com.openyich.framework.data.domain.BaseEntity;

/**
 * 菜单权限表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_menu")
public class SysMenu extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 菜单编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "menu_id")
  private Long menuId;

  /**
   * 菜单名称
   */
  @Column(name = "menu_name")
  private String menuName;

  /**
   * 上级菜单编号
   */
  @Column(name = "parent_id")
  private Long parentId;

  /**
   * 显示顺序
   */
  @Column(name = "sort_no")
  private int sortNo;

  /**
   * 请求地址
   */
  @Column(name = "url")
  private String url;

  /**
   * 菜单类型（M目录 C菜单 F按钮）
   */
  @Column(name = "menu_type")
  private String menuType;

  /**
   * 权限标识
   */
  @Column(name = "perms")
  private String perms;

  /**
   * 菜单图标
   */
  @Column(name = "icon")
  private String icon;

  public SysMenu(Long menuId) {
    this.menuId = menuId;
  }

  public SysMenu() {
    super();
  }

  public Long getMenuId() {
    return menuId;
  }

  public String getMenuName() {
    return menuName;
  }

  public Long getParentId() {
    return parentId;
  }

  public int getSortNo() {
    return sortNo;
  }

  public String getUrl() {
    return url;
  }

  public String getMenuType() {
    return menuType;
  }

  public String getPerms() {
    return perms;
  }

  public String getIcon() {
    return icon;
  }

  public void setMenuId(Long menuId) {
    this.menuId = menuId;
  }

  public void setMenuName(String menuName) {
    this.menuName = menuName;
  }

  public void setParentId(Long parentId) {
    this.parentId = parentId;
  }

  public void setSortNo(int sortNo) {
    this.sortNo = sortNo;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public void setMenuType(String menuType) {
    this.menuType = menuType;
  }

  public void setPerms(String perms) {
    this.perms = perms;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
