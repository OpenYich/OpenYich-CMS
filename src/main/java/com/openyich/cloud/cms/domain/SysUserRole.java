package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 用户和角色关联表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_user_role")
@IdClass(SysUserRolePrimaryKey.class)
public class SysUserRole implements Serializable {

  private static final long serialVersionUID = 1L;

  /**
   * 用户编号
   */
  @Id
  @Column(name = "user_id")
  private Long userId;

  /**
   * 角色编号
   */
  @Id
  @Column(name = "role_id")
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
