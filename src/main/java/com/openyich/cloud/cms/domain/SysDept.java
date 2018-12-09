package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 部门表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_dept")
public class SysDept extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 部门编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "dept_id")
  private Long deptId;

  /**
   * 上级部门编号
   */
  @Column(name = "parent_id")
  private Long parentId;

  /**
   * 组级列表
   */
  @Column(name = "ancestors")
  private String ancestors;

  /**
   * 部门名称
   */
  @Column(name = "dept_name")
  private String deptName;

  /**
   * 排列顺序
   */
  @Column(name = "sort_no")
  private int sortNo;

  /**
   * 领导人
   */
  @Column(name = "leader")
  private String leader;

  /**
   * 手机号码
   */
  @Column(name = "mobile")
  private String mobile;

  /**
   * 邮箱
   */
  @Column(name = "email")
  private String email;

  public SysDept(Long deptId) {
    this.deptId = deptId;
  }

  public SysDept() {
    super();
  }

  public Long getDeptId() {
    return deptId;
  }

  public Long getParentId() {
    return parentId;
  }

  public String getAncestors() {
    return ancestors;
  }

  public String getDeptName() {
    return deptName;
  }

  public int getSortNo() {
    return sortNo;
  }

  public String getLeader() {
    return leader;
  }

  public String getMobile() {
    return mobile;
  }

  public String getEmail() {
    return email;
  }

  public void setDeptId(Long deptId) {
    this.deptId = deptId;
  }

  public void setParentId(Long parentId) {
    this.parentId = parentId;
  }

  public void setAncestors(String ancestors) {
    this.ancestors = ancestors;
  }

  public void setDeptName(String deptName) {
    this.deptName = deptName;
  }

  public void setSortNo(int sortNo) {
    this.sortNo = sortNo;
  }

  public void setLeader(String leader) {
    this.leader = leader;
  }

  public void setMobile(String mobile) {
    this.mobile = mobile;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
