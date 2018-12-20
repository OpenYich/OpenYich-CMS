package com.openyich.framework.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysUser;
import com.openyich.framework.cloud.cms.mapper.ISysUserMapper;
import com.openyich.framework.cloud.cms.repository.SysUserRepository;

@Component
public class SysUserMapperImpl extends JpaQueryMapperImpl<SysUser> implements ISysUserMapper {

  private SysUserRepository repository;

  public SysUserMapperImpl(SysUserRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysUser save(SysUser entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysUser> saveAll(Iterable<SysUser> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysUser> entities = Lists.newArrayList();
    ids.forEach(userId -> entities.add(new SysUser(userId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysUser> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysUser> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysUser> findAll(SysUser entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
