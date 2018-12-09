package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysAccessLog;
import com.openyich.cloud.cms.mapper.ISysAccessLogMapper;
import com.openyich.cloud.cms.repository.SysAccessLogRepository;

@Component
public class SysAccessLogMapperImpl implements ISysAccessLogMapper {

  private SysAccessLogRepository repository;

  public SysAccessLogMapperImpl(SysAccessLogRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysAccessLog save(SysAccessLog entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysAccessLog> saveAll(Iterable<SysAccessLog> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysAccessLog> entities = Lists.newArrayList();
    ids.forEach(logId -> entities.add(new SysAccessLog(logId)));
    repository.deleteInBatch(entities);;
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysAccessLog> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysAccessLog> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysAccessLog> findAll(SysAccessLog entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
