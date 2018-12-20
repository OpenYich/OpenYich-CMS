package com.openyich.framework.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysOperLog;
import com.openyich.framework.cloud.cms.mapper.ISysOperLogMapper;
import com.openyich.framework.cloud.cms.repository.SysOperLogRepository;

@Component
public class SysOperLogMapperImpl extends JpaQueryMapperImpl<SysOperLog>
    implements
      ISysOperLogMapper {

  private SysOperLogRepository repository;

  public SysOperLogMapperImpl(SysOperLogRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysOperLog save(SysOperLog entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysOperLog> saveAll(Iterable<SysOperLog> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysOperLog> entities = Lists.newArrayList();
    ids.forEach(operId -> entities.add(new SysOperLog(operId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysOperLog> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysOperLog> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysOperLog> findAll(SysOperLog entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
