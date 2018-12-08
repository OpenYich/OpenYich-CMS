package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUserRole;
import com.openyich.cloud.cms.domain.SysUserRolePrimaryKey;

@Repository
public interface SysUserRoleRepository extends JpaRepository<SysUserRole, SysUserRolePrimaryKey> {

}
