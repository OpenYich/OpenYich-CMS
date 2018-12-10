package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysNotice;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysNoticeRepository extends JpaRepositoryWrapper<SysNotice, Long> {

}
