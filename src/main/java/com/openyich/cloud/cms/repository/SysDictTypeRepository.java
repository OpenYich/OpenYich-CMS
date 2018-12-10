package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysDictType;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysDictTypeRepository extends JpaRepositoryWrapper<SysDictType, Long> {

}
