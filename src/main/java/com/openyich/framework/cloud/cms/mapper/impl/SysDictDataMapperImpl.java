package com.openyich.framework.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysDictData;
import com.openyich.framework.cloud.cms.mapper.ISysDictDataMapper;
import com.openyich.framework.cloud.cms.repository.SysDictDataRepository;

@Component
public class SysDictDataMapperImpl extends JpaQueryMapperImpl<SysDictData>
    implements
      ISysDictDataMapper {

  private SysDictDataRepository repository;

  public SysDictDataMapperImpl(SysDictDataRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysDictData save(SysDictData entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysDictData> saveAll(Iterable<SysDictData> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysDictData> entities = Lists.newArrayList();
    ids.forEach(dictId -> entities.add(new SysDictData(dictId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysDictData> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysDictData> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysDictData> findAll(SysDictData entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
