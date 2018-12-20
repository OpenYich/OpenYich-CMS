package com.openyich.framework.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;
import com.openyich.framework.boot.jpa.domain.AbstractStateManagingEntity;

/**
 * 系统访问记录
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_access_log")
public class SysAccessLog extends AbstractStateManagingEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 日志编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "log_id")
  private Long logId;

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
   * 登录IP
   */
  @Column(name = "login_ip")
  private String loginIp;

  /**
   * 登录地点
   */
  @Column(name = "login_location")
  private String loginLocation;

  /**
   * 浏览器版本
   */
  @Column(name = "browser")
  private String browser;

  /**
   * 操作系统
   */
  @Column(name = "os")
  private String os;

  public SysAccessLog(Long logId) {
    this.logId = logId;
  }

  public SysAccessLog() {
    super();
  }

  public Long getLogId() {
    return logId;
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

  public void setLogId(Long logId) {
    this.logId = logId;
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

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
