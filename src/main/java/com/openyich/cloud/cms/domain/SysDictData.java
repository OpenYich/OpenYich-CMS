package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 字典数据表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_dict_data")
public class SysDictData extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 字典编码
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
   * 字典标签
   */
  @Column(name = "dict_label")
  private String dictLabel;
  
  /**
   * 字典键值
   */
  @Column(name = "dict_value")
  private String dictValue;
  
  /**
   * 排列排序
   */
  @Column(name = "sort_no")
  private int sortNo;
  
  /**
   * 样式属性（其他样式扩展）
   */
  @Column(name = "css_tyle")
  private String cssStyle;
  
  /**
   * 列表样式属性
   */
  @Column(name = "list_style")
  private String listStyle;
  
  /**
   * 是否默认（Y是 N否）
   */
  @Column(name = "is_default")
  private boolean isDefault;

  public SysDictData(Long dictId) {
    this.dictId = dictId;
  }

  public SysDictData() {
    super();
  }

  public Long getDictId() {
    return dictId;
  }

  public String getDictCode() {
    return dictCode;
  }

  public String getDictLabel() {
    return dictLabel;
  }

  public String getDictValue() {
    return dictValue;
  }

  public int getSortNo() {
    return sortNo;
  }

  public String getCssStyle() {
    return cssStyle;
  }

  public String getListStyle() {
    return listStyle;
  }

  public boolean isDefault() {
    return isDefault;
  }

  public void setDictId(Long dictId) {
    this.dictId = dictId;
  }

  public void setDictCode(String dictCode) {
    this.dictCode = dictCode;
  }

  public void setDictLabel(String dictLabel) {
    this.dictLabel = dictLabel;
  }

  public void setDictValue(String dictValue) {
    this.dictValue = dictValue;
  }

  public void setSortNo(int sortNo) {
    this.sortNo = sortNo;
  }

  public void setCssStyle(String cssStyle) {
    this.cssStyle = cssStyle;
  }

  public void setListStyle(String listStyle) {
    this.listStyle = listStyle;
  }

  public void setDefault(boolean isDefault) {
    this.isDefault = isDefault;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }
  
}
