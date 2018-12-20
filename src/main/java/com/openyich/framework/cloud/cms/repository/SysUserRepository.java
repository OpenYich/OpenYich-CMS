package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysUser;

@Repository
public interface SysUserRepository extends JpaRepositoryWrapper<SysUser, Long> {

}
