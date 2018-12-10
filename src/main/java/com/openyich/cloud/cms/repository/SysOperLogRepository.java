package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysOperLog;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysOperLogRepository extends JpaRepositoryWrapper<SysOperLog, Long> {

}
