package com.openyich.cloud.cms.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.alibaba.fastjson.JSON;

/**
 * 通知公告表
 * 
 * @author zhycn
 */
@Entity
@Table(name = "sys_notice")
public class SysNotice extends BaseEntity {

  private static final long serialVersionUID = 1L;

  /**
   * 公告编号
   */
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "notice_id")
  private Long noticeId;

  /**
   * 公告标题
   */
  @Column(name = "notice_title")
  private String noticeTitle;

  /**
   * 公告类型（1通知 2公告）
   */
  @Column(name = "notice_type")
  private String noticeType;

  /**
   * 公告内容
   */
  @Column(name = "notice_content")
  private String noticeContent;

  public SysNotice(Long noticeId) {
    this.noticeId = noticeId;
  }

  public SysNotice() {
    super();
  }

  public Long getNoticeId() {
    return noticeId;
  }

  public String getNoticeTitle() {
    return noticeTitle;
  }

  public String getNoticeType() {
    return noticeType;
  }

  public String getNoticeContent() {
    return noticeContent;
  }

  public void setNoticeId(Long noticeId) {
    this.noticeId = noticeId;
  }

  public void setNoticeTitle(String noticeTitle) {
    this.noticeTitle = noticeTitle;
  }

  public void setNoticeType(String noticeType) {
    this.noticeType = noticeType;
  }

  public void setNoticeContent(String noticeContent) {
    this.noticeContent = noticeContent;
  }

  @Override
  public String toString() {
    return JSON.toJSONString(this);
  }

}
