package com.openyich.framework.cloud.cms.domain;

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

  public SysUserPostPrimaryKey(Long userId, Long postId) {
    this.userId = userId;
    this.postId = postId;
  }

  public SysUserPostPrimaryKey() {
    super();
  }

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
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((postId == null) ? 0 : postId.hashCode());
    result = prime * result + ((userId == null) ? 0 : userId.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) return true;
    if (obj == null) return false;
    if (getClass() != obj.getClass()) return false;
    SysUserPostPrimaryKey other = (SysUserPostPrimaryKey) obj;
    if (postId == null) {
      if (other.postId != null) return false;
    } else if (!postId.equals(other.postId)) return false;
    if (userId == null) {
      if (other.userId != null) return false;
    } else if (!userId.equals(other.userId)) return false;
    return true;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
