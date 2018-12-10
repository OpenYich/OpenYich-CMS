package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysMenu;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysMenuRepository extends JpaRepositoryWrapper<SysMenu, Long> {

}
