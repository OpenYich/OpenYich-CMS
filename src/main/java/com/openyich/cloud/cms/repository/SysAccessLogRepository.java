package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysAccessLog;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysAccessLogRepository extends JpaRepositoryWrapper<SysAccessLog, Long> {

}
