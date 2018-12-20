package com.openyich.framework.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.framework.boot.jpa.mapper.impl.JpaQueryMapperImpl;
import com.openyich.framework.cloud.cms.domain.SysRole;
import com.openyich.framework.cloud.cms.mapper.ISysRoleMapper;
import com.openyich.framework.cloud.cms.repository.SysRoleRepository;

@Component
public class SysRoleMapperImpl extends JpaQueryMapperImpl<SysRole> implements ISysRoleMapper {

  private SysRoleRepository repository;

  public SysRoleMapperImpl(SysRoleRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysRole save(SysRole entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysRole> saveAll(Iterable<SysRole> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysRole> entities = Lists.newArrayList();
    ids.forEach(roleId -> entities.add(new SysRole(roleId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysRole> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysRole> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysRole> findAll(SysRole entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
