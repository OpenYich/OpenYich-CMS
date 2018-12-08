package com.openyich.cloud.cms.domain;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;

/**
 * 用户与岗位关联表主键
 * 
 * @author zhycn
 */
public class SysUserPostPrimaryKey implements Serializable {

  private static final long serialVersionUID = 1L;

  private Long userId;
  
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
