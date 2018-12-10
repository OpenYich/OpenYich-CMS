package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUserPost;
import com.openyich.cloud.cms.domain.SysUserPostPrimaryKey;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysUserPostRepository extends JpaRepositoryWrapper<SysUserPost, SysUserPostPrimaryKey> {

}
