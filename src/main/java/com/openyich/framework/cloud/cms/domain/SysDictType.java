package com.openyich.framework.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;
import com.openyich.framework.boot.jpa.domain.AbstractStateManagingEntity;

/**
 * 字典类型表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_dict_type")
public class SysDictType extends AbstractStateManagingEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 字典主键
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "dict_id")
  private Long dictId;

  /**
   * 字典代码
   */
  @Column(name = "dict_code")
  private String dictCode;

  /**
   * 字典名称
   */
  @Column(name = "dict_name")
  private String dictName;

  public SysDictType(Long dictId) {
    this.dictId = dictId;
  }

  public SysDictType() {
    super();
  }

  public Long getDictId() {
    return dictId;
  }

  public String getDictCode() {
    return dictCode;
  }

  public String getDictName() {
    return dictName;
  }

  public void setDictId(Long dictId) {
    this.dictId = dictId;
  }

  public void setDictCode(String dictCode) {
    this.dictCode = dictCode;
  }

  public void setDictName(String dictName) {
    this.dictName = dictName;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
