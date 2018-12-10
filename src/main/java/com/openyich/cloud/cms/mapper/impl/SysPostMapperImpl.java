package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysPost;
import com.openyich.cloud.cms.mapper.ISysPostMapper;
import com.openyich.cloud.cms.repository.SysPostRepository;
import com.openyich.framework.data.mapper.impl.AbastractQueryMapperImpl;

@Component
public class SysPostMapperImpl extends AbastractQueryMapperImpl<SysPost> implements ISysPostMapper {

  private SysPostRepository repository;

  public SysPostMapperImpl(SysPostRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysPost save(SysPost entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysPost> saveAll(Iterable<SysPost> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysPost> entities = Lists.newArrayList();
    ids.forEach(postId -> entities.add(new SysPost(postId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysPost> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysPost> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysPost> findAll(SysPost entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
