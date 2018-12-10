package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysRole;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysRoleRepository extends JpaRepositoryWrapper<SysRole, Long> {

}
