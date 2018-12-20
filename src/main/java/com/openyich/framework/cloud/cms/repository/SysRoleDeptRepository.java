package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysRoleDept;
import com.openyich.framework.cloud.cms.domain.SysRoleDeptPrimaryKey;

@Repository
public interface SysRoleDeptRepository extends JpaRepositoryWrapper<SysRoleDept, SysRoleDeptPrimaryKey> {

}
