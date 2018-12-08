package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 用户与岗位关联表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_user_post")
@IdClass(SysUserPostPrimaryKey.class)
public class SysUserPost implements Serializable {

  private static final long serialVersionUID = 1L;

  /**
   * 用户编号
   */
  @Id
  @Column(name = "user_id")
  private Long userId;
  
  /**
   * 岗位编号
   */
  @Id
  @Column(name = "post_id")
  private Long postId;

  public Long getUserId() {
    return userId;
  }

  public Long getPostId() {
    return postId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public void setPostId(Long postId) {
    this.postId = postId;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
