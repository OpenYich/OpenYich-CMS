package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysConfig;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysConfigRepository extends JpaRepositoryWrapper<SysConfig, Long> {

}
