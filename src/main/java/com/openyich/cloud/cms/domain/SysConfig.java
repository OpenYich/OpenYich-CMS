package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 参数配置表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_config")
public class SysConfig extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 参数编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "config_id")
  private Long configId;

  /**
   * 参数名称
   */
  @Column(name = "config_name")
  private String configName;

  /**
   * 参数键名
   */
  @Column(name = "config_key")
  private String configKey;

  /**
   * 参数健值
   */
  @Column(name = "config_value")
  private String configValue;
  
  public SysConfig(Long configId) {
    this.configId = configId;
  }

  public SysConfig() {
    super();
  }

  public Long getConfigId() {
    return configId;
  }

  public String getConfigName() {
    return configName;
  }

  public String getConfigKey() {
    return configKey;
  }

  public String getConfigValue() {
    return configValue;
  }

  public void setConfigId(Long configId) {
    this.configId = configId;
  }

  public void setConfigName(String configName) {
    this.configName = configName;
  }

  public void setConfigKey(String configKey) {
    this.configKey = configKey;
  }

  public void setConfigValue(String configValue) {
    this.configValue = configValue;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
