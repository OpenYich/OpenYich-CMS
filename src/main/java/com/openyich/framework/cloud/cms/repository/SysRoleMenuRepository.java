package com.openyich.framework.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.framework.boot.jpa.repository.JpaRepositoryWrapper;
import com.openyich.framework.cloud.cms.domain.SysRoleMenu;
import com.openyich.framework.cloud.cms.domain.SysRoleMenuPrimaryKey;

@Repository
public interface SysRoleMenuRepository extends JpaRepositoryWrapper<SysRoleMenu, SysRoleMenuPrimaryKey> {

}
