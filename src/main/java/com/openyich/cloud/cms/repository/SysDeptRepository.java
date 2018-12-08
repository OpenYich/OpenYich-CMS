package com.openyich.cloud.cms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.openyich.cloud.cms.domain.SysDept;

@Repository
public interface SysDeptRepository extends JpaRepository<SysDept, Long> {

}