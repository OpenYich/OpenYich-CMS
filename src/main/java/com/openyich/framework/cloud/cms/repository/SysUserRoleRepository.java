package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysUserRole;
import com.openyich.framework.cloud.cms.domain.SysUserRolePrimaryKey;

@Repository
public interface SysUserRoleRepository extends JpaRepositoryWrapper<SysUserRole, SysUserRolePrimaryKey> {

}
