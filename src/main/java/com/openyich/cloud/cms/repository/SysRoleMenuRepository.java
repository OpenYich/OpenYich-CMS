package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysRoleMenu;
import com.openyich.cloud.cms.domain.SysRoleMenuPrimaryKey;

@Repository
public interface SysRoleMenuRepository extends JpaRepository<SysRoleMenu, SysRoleMenuPrimaryKey> {

}
