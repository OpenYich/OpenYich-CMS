package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysDept;
import com.openyich.cloud.cms.mapper.ISysDeptMapper;
import com.openyich.cloud.cms.repository.SysDeptRepository;

@Component
public class SysDeptMapperImpl implements ISysDeptMapper {

  private SysDeptRepository repository;

  public SysDeptMapperImpl(SysDeptRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysDept save(SysDept entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysDept> saveAll(Iterable<SysDept> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysDept> entities = Lists.newArrayList();
    ids.forEach(deptId -> entities.add(new SysDept(deptId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysDept> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysDept> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysDept> findAll(SysDept entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
