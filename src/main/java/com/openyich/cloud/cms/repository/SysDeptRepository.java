package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysDept;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysDeptRepository extends JpaRepositoryWrapper<SysDept, Long> {

}
