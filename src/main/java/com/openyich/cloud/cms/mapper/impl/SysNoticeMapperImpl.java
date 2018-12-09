package com.openyich.cloud.cms.mapper.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.openyich.cloud.cms.domain.SysNotice;
import com.openyich.cloud.cms.mapper.ISysNoticeMapper;
import com.openyich.cloud.cms.repository.SysNoticeRepository;

@Component
public class SysNoticeMapperImpl implements ISysNoticeMapper {

  private SysNoticeRepository repository;

  public SysNoticeMapperImpl(SysNoticeRepository repository) {
    this.repository = repository;
  }

  @Override
  public SysNotice save(SysNotice entity) {
    return repository.saveAndFlush(entity);
  }

  @Override
  public List<SysNotice> saveAll(Iterable<SysNotice> entities) {
    return repository.saveAll(entities);
  }

  @Override
  public void deleteById(Long id) {
    repository.deleteById(id);
  }

  @Override
  public void deleteAllById(Iterable<Long> ids) {
    List<SysNotice> entities = Lists.newArrayList();
    ids.forEach(noticeId -> entities.add(new SysNotice(noticeId)));
    repository.deleteInBatch(entities);
  }

  @Override
  public boolean existsById(Long id) {
    return repository.existsById(id);
  }

  @Override
  public Optional<SysNotice> findById(Long id) {
    return repository.findById(id);
  }

  @Override
  public List<SysNotice> findAllById(Iterable<Long> ids) {
    return repository.findAllById(ids);
  }

  @Override
  public Page<SysNotice> findAll(SysNotice entity, Pageable pageable) {
    return repository.findAll(pageable);
  }

}
