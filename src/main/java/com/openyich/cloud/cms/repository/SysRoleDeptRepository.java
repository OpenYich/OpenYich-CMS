package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysRoleDept;
import com.openyich.cloud.cms.domain.SysRoleDeptPrimaryKey;

@Repository
public interface SysRoleDeptRepository extends JpaRepository<SysRoleDept, SysRoleDeptPrimaryKey> {

}
