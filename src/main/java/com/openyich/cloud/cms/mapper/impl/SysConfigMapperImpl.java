package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysConfig;
import com.openyich.cloud.cms.mapper.ISysConfigMapper;
import com.openyich.cloud.cms.repository.SysConfigRepository;

@Component
public class SysConfigMapperImpl implements ISysConfigMapper {

  private SysConfigRepository repository;
  
  public SysConfigMapperImpl(SysConfigRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysConfig save(SysConfig entity) {
    return repository.save(entity);
  }

  @Override
  public List<SysConfig> saveAll(Iterable<SysConfig> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysConfig> entities = Lists.newArrayList();
    ids.forEach(configId -> entities.add(new SysConfig(configId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysConfig> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysConfig> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysConfig> findAll(SysConfig entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
