package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysUserOnline;

@Repository
public interface SysUserOnlineRepository extends JpaRepositoryWrapper<SysUserOnline, String> {

}
