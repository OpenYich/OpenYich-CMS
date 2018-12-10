package com.openyich.cloud.cms.repository;

import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysPost;
import com.openyich.framework.data.repository.JpaRepositoryWrapper;

@Repository
public interface SysPostRepository extends JpaRepositoryWrapper<SysPost, Long> {

}
