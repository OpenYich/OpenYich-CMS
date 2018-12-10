package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUser;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysUserRepository extends JpaRepositoryWrapper<SysUser, Long> {

}
