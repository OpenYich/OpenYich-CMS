package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUserOnline;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysUserOnlineRepository extends JpaRepositoryWrapper<SysUserOnline, String> {

}
