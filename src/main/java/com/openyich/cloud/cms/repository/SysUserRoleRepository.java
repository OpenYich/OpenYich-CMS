package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUserRole;
import com.openyich.cloud.cms.domain.SysUserRolePrimaryKey;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysUserRoleRepository extends JpaRepositoryWrapper<SysUserRole, SysUserRolePrimaryKey> {

}
