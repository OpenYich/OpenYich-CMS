package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysRoleDept;
import com.openyich.cloud.cms.domain.SysRoleDeptPrimaryKey;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysRoleDeptRepository extends JpaRepositoryWrapper<SysRoleDept, SysRoleDeptPrimaryKey> {

}
