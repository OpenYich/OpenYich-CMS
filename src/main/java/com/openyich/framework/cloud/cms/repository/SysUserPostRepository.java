package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysUserPost;
import com.openyich.framework.cloud.cms.domain.SysUserPostPrimaryKey;

@Repository
public interface SysUserPostRepository extends JpaRepositoryWrapper<SysUserPost, SysUserPostPrimaryKey> {

}
