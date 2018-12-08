package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUserPost;
import com.openyich.cloud.cms.domain.SysUserPostPrimaryKey;

@Repository
public interface SysUserPostRepository extends JpaRepository<SysUserPost, SysUserPostPrimaryKey> {

}
