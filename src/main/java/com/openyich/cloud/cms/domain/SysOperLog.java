package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 操作日志记录
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_oper_log")
public class SysOperLog extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 日志主键
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "oper_id")
  private Long operId;

  /**
   * 模块标题
   */
  @Column(name = "title")
  private String title;

  /**
   * 业务类型（0其它 1新增 2修改 3删除）
   */
  @Column(name = "bus_type")
  private Integer busType;

  /**
   * 方法名称
   */
  @Column(name = "method")
  private String method;

  /**
   * 操作类型（0其它 1后台用户 2手机端用户）
   */
  @Column(name = "oper_type")
  private Integer operType;

  /**
   * 操作人员
   */
  @Column(name = "oper_name")
  private String operName;

  /**
   * 部门名称
   */
  @Column(name = "dept_name")
  private String deptName;

  /**
   * 主机地址
   */
  @Column(name = "oper_ip")
  private String operIp;

  /**
   * 操作地点
   */
  @Column(name = "oper_location")
  private String operLocation;

  /**
   * 请求URL
   */
  @Column(name = "oper_url")
  private String operUrl;

  /**
   * 请求参数
   */
  @Column(name = "oper_params")
  private String operParams;

  public SysOperLog(Long operId) {
    this.operId = operId;
  }

  public SysOperLog() {
    super();
  }

  public Long getOperId() {
    return operId;
  }

  public String getTitle() {
    return title;
  }

  public Integer getBusType() {
    return busType;
  }

  public String getMethod() {
    return method;
  }

  public Integer getOperType() {
    return operType;
  }

  public String getOperName() {
    return operName;
  }

  public String getDeptName() {
    return deptName;
  }

  public String getOperIp() {
    return operIp;
  }

  public String getOperLocation() {
    return operLocation;
  }

  public String getOperUrl() {
    return operUrl;
  }

  public String getOperParams() {
    return operParams;
  }

  public void setOperId(Long operId) {
    this.operId = operId;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public void setBusType(Integer busType) {
    this.busType = busType;
  }

  public void setMethod(String method) {
    this.method = method;
  }

  public void setOperType(Integer operType) {
    this.operType = operType;
  }

  public void setOperName(String operName) {
    this.operName = operName;
  }

  public void setDeptName(String deptName) {
    this.deptName = deptName;
  }

  public void setOperIp(String operIp) {
    this.operIp = operIp;
  }

  public void setOperLocation(String operLocation) {
    this.operLocation = operLocation;
  }

  public void setOperUrl(String operUrl) {
    this.operUrl = operUrl;
  }

  public void setOperParams(String operParams) {
    this.operParams = operParams;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
