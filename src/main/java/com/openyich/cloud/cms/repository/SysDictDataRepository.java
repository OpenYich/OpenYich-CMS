package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysDictData;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysDictDataRepository extends JpaRepositoryWrapper<SysDictData, Long> {

}
