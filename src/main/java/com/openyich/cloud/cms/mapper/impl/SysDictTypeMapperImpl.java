package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysDictType;
import com.openyich.cloud.cms.mapper.ISysDictTypeMapper;
import com.openyich.cloud.cms.repository.SysDictTypeRepository;
import com.openyich.framework.data.mapper.impl.AbastractQueryMapperImpl;

@Component
public class SysDictTypeMapperImpl extends AbastractQueryMapperImpl<SysDictType> implements ISysDictTypeMapper {

  private SysDictTypeRepository repository;
  
  public SysDictTypeMapperImpl(SysDictTypeRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysDictType save(SysDictType entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysDictType> saveAll(Iterable<SysDictType> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);    
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysDictType> entities = Lists.newArrayList();
    ids.forEach(dictId -> entities.add(new SysDictType(dictId)));
    repository.deleteInBatch(entities);    
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysDictType> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysDictType> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysDictType> findAll(SysDictType entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
