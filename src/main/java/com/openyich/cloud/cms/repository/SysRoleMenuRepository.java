package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysRoleMenu;
import com.openyich.cloud.cms.domain.SysRoleMenuPrimaryKey;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysRoleMenuRepository extends JpaRepositoryWrapper<SysRoleMenu, SysRoleMenuPrimaryKey> {

}
