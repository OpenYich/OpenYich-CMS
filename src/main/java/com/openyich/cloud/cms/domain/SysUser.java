package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 用户信息表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_user")
public class SysUser extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 用户编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "user_id")
  private Long userId;
  
  /**
   * 部门编号
   */
  @Column(name = "dept_id")
  private Long deptId;
  
  /**
   * 登录账号
   */
  @Column(name = "login_name")
  private String loginName;
  
  /**
   * 登录昵称
   */
  @Column(name = "user_name")
  private String userName;
  
  /**
   * 用户类型（0系统用户）
   */
  @Column(name = "user_type")
  private int userType;
  
  /**
   * 手机号码
   */
  @Column(name = "mobile")
  private String mobile;
  
  /**
   * 用户邮箱
   */
  @Column(name = "email")
  private String email;
  
  /**
   * 用户性别（0未知 1男 2女）
   */
  @Column(name = "sex")
  private int sex;
  
  /**
   * 头像路径
   */
  @Column(name = "avatar")
  private String avatar;
  
  /**
   * 密码
   */
  @Column(name = "password")
  private String password;
  
  /**
   * 盐加密
   */
  @Column(name = "salt")
  private String salt;

  public Long getUserId() {
    return userId;
  }

  public Long getDeptId() {
    return deptId;
  }

  public String getLoginName() {
    return loginName;
  }

  public String getUserName() {
    return userName;
  }

  public int getUserType() {
    return userType;
  }

  public String getMobile() {
    return mobile;
  }

  public String getEmail() {
    return email;
  }

  public int getSex() {
    return sex;
  }

  public String getAvatar() {
    return avatar;
  }

  public String getPassword() {
    return password;
  }

  public String getSalt() {
    return salt;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public void setDeptId(Long deptId) {
    this.deptId = deptId;
  }

  public void setLoginName(String loginName) {
    this.loginName = loginName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public void setUserType(int userType) {
    this.userType = userType;
  }

  public void setMobile(String mobile) {
    this.mobile = mobile;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public void setSex(int sex) {
    this.sex = sex;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public void setSalt(String salt) {
    this.salt = salt;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
