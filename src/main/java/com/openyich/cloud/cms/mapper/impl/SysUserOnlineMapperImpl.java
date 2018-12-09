package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysUserOnline;
import com.openyich.cloud.cms.mapper.ISysUserOnlineMapper;
import com.openyich.cloud.cms.repository.SysUserOnlineRepository;

@Component
public class SysUserOnlineMapperImpl implements ISysUserOnlineMapper {

  private SysUserOnlineRepository repository;

  public SysUserOnlineMapperImpl(SysUserOnlineRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysUserOnline save(SysUserOnline entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysUserOnline> saveAll(Iterable<SysUserOnline> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(String id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<String> ids) {
    List<SysUserOnline> entities = Lists.newArrayList();
    ids.forEach(sessionId -> entities.add(new SysUserOnline(sessionId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(String id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysUserOnline> findById(String id) {
    return repository.findById(id);
  }

  @Override
  public List<SysUserOnline> findAllById(Iterable<String> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysUserOnline> findAll(SysUserOnline entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
