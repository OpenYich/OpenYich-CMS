package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysMenu;
import com.openyich.cloud.cms.mapper.ISysMenuMapper;
import com.openyich.cloud.cms.repository.SysMenuRepository;

@Component
public class SysMenuMapperImpl implements ISysMenuMapper {

  private SysMenuRepository repository;
  
  public SysMenuMapperImpl(SysMenuRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysMenu save(SysMenu entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysMenu> saveAll(Iterable<SysMenu> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);    
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysMenu> entities = Lists.newArrayList();
    ids.forEach(menuId -> entities.add(new SysMenu(menuId)));
    repository.deleteInBatch(entities);    
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysMenu> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysMenu> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysMenu> findAll(SysMenu entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
