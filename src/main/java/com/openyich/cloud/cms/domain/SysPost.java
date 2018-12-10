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
 * 岗位信息表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_post")
public class SysPost extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 岗位编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "post_id")
  private Long postId;

  /**
   * 岗位编码
   */
  @Column(name = "post_code")
  private String postCode;

  /**
   * 岗位名称
   */
  @Column(name = "post_name")
  private String postName;

  /**
   * 排列顺序
   */
  @Column(name = "sort_no")
  private Integer sortNo;

  public SysPost(Long postId) {
    this.postId = postId;
  }

  public SysPost() {
    super();
  }

  public Long getPostId() {
    return postId;
  }

  public String getPostCode() {
    return postCode;
  }

  public String getPostName() {
    return postName;
  }

  public Integer getSortNo() {
    return sortNo;
  }

  public void setPostId(Long postId) {
    this.postId = postId;
  }

  public void setPostCode(String postCode) {
    this.postCode = postCode;
  }

  public void setPostName(String postName) {
    this.postName = postName;
  }

  public void setSortNo(Integer sortNo) {
    this.sortNo = sortNo;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
