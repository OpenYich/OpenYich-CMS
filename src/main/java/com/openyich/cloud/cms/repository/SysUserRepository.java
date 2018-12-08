package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysUser;

@Repository
public interface SysUserRepository extends JpaRepository<SysUser, Long> {

}
