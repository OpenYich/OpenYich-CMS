package com.openyich.framework.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;
import com.openyich.framework.boot.jpa.domain.AbstractStateManagingEntity;

/**
 * 在线用户记录
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_user_online")
public class SysUserOnline extends AbstractStateManagingEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 会话编号
   */
  @Id
  @Column(name = "session_id")
  private String sessionId;

  /**
   * 登录账号
   */
  @Column(name = "login_name")
  private String loginName;

  /**
   * 部门名称
   */
  @Column(name = "dept_name")
  private String deptName;

  /**
   * 登录IP地址
   */
  @Column(name = "login_ip")
  private String loginIp;

  /**
   * 登录地点
   */
  @Column(name = "login_location")
  private String loginLocation;

  /**
   * 浏览器类型
   */
  @Column(name = "browser")
  private String browser;

  /**
   * 操作系统
   */
  @Column(name = "os")
  private String os;

  /**
   * 会话超时时间，单位为分钟
   */
  @Column(name = "expires_in")
  private int expiresIn;

  public SysUserOnline(String sessionId) {
    this.sessionId = sessionId;
  }

  public SysUserOnline() {
    super();
  }

  public String getSessionId() {
    return sessionId;
  }

  public String getLoginName() {
    return loginName;
  }

  public String getDeptName() {
    return deptName;
  }

  public String getLoginIp() {
    return loginIp;
  }

  public String getLoginLocation() {
    return loginLocation;
  }

  public String getBrowser() {
    return browser;
  }

  public String getOs() {
    return os;
  }

  public int getExpiresIn() {
    return expiresIn;
  }

  public void setSessionId(String sessionId) {
    this.sessionId = sessionId;
  }

  public void setLoginName(String loginName) {
    this.loginName = loginName;
  }

  public void setDeptName(String deptName) {
    this.deptName = deptName;
  }

  public void setLoginIp(String loginIp) {
    this.loginIp = loginIp;
  }

  public void setLoginLocation(String loginLocation) {
    this.loginLocation = loginLocation;
  }

  public void setBrowser(String browser) {
    this.browser = browser;
  }

  public void setOs(String os) {
    this.os = os;
  }

  public void setExpiresIn(int expiresIn) {
    this.expiresIn = expiresIn;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
