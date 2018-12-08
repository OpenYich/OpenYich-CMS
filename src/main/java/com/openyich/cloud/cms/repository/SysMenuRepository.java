package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysMenu;

@Repository
public interface SysMenuRepository extends JpaRepository<SysMenu, Long> {

}
